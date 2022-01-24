#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int u8 ;
struct eap_sm {int dummy; } ;
struct eap_fast_data {int fast_version; int provisioning; int /*<<< orphan*/  provisioning_allowed; scalar_t__ current_pac; scalar_t__ resuming; } ;

/* Variables and functions */
 int EAP_TLS_VERSION_MASK ; 
 int /*<<< orphan*/  MSG_DEBUG ; 
 scalar_t__ FUNC0 (struct eap_sm*,struct eap_fast_data*) ; 
 int* FUNC1 (int const*,size_t,size_t*) ; 
 int /*<<< orphan*/  FUNC2 (struct eap_fast_data*,int const*,size_t) ; 
 scalar_t__ FUNC3 (struct eap_sm*,struct eap_fast_data*) ; 
 scalar_t__ FUNC4 (struct eap_sm*,struct eap_fast_data*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,...) ; 

__attribute__((used)) static int FUNC6(struct eap_sm *sm,
				  struct eap_fast_data *data, u8 flags,
				  const u8 *pos, size_t left)
{
	const u8 *a_id;
	size_t a_id_len;

	/* EAP-FAST Version negotiation (section 3.1) */
	FUNC5(MSG_DEBUG, "EAP-FAST: Start (server ver=%d, own ver=%d)",
		   flags & EAP_TLS_VERSION_MASK, data->fast_version);
	if ((flags & EAP_TLS_VERSION_MASK) < data->fast_version)
		data->fast_version = flags & EAP_TLS_VERSION_MASK;
	FUNC5(MSG_DEBUG, "EAP-FAST: Using FAST version %d",
		   data->fast_version);

	a_id = FUNC1(pos, left, &a_id_len);
	FUNC2(data, a_id, a_id_len);

	if (data->resuming && data->current_pac) {
		FUNC5(MSG_DEBUG, "EAP-FAST: Trying to resume session - "
			   "do not add PAC-Opaque to TLS ClientHello");
		if (FUNC0(sm, data) < 0)
			return -1;
	} else if (data->current_pac) {
		/*
		 * PAC found for the A-ID and we are not resuming an old
		 * session, so add PAC-Opaque extension to ClientHello.
		 */
		if (FUNC4(sm, data, data->current_pac) < 0)
			return -1;
	} else {
		/* No PAC found, so we must provision one. */
		if (!data->provisioning_allowed) {
			FUNC5(MSG_DEBUG, "EAP-FAST: No PAC found and "
				   "provisioning disabled");
			return -1;
		}
		FUNC5(MSG_DEBUG, "EAP-FAST: No PAC found - "
			   "starting provisioning");
		if (FUNC3(sm, data) < 0 ||
		    FUNC0(sm, data) < 0)
			return -1;
		data->provisioning = 1;
	}

	return 0;
}