#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
struct eap_sm {size_t identity_len; TYPE_1__* user; int /*<<< orphan*/ * identity; } ;
struct TYPE_2__ {size_t password_len; int /*<<< orphan*/  const* password; } ;

/* Variables and functions */
 int /*<<< orphan*/  MSG_DEBUG ; 
 scalar_t__ FUNC0 (struct eap_sm*,int /*<<< orphan*/  const*,size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static const u8 * FUNC2(void *ctx, const u8 *IDr,
					      size_t IDr_len,
					      size_t *secret_len)
{
	struct eap_sm *sm = ctx;

	if (IDr == NULL) {
		FUNC1(MSG_DEBUG, "EAP-IKEV2: No IDr received - default "
			   "to user identity from EAP-Identity");
		IDr = sm->identity;
		IDr_len = sm->identity_len;
	}

	if (FUNC0(sm, IDr, IDr_len, 0) < 0 || sm->user == NULL ||
	    sm->user->password == NULL) {
		FUNC1(MSG_DEBUG, "EAP-IKEV2: No user entry found");
		return NULL;
	}

	*secret_len = sm->user->password_len;
	return sm->user->password;
}