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
struct eap_teap_data {int session_ticket_used; int provisioning; TYPE_1__* current_pac; scalar_t__ provisioning_allowed; } ;
struct TYPE_2__ {int /*<<< orphan*/  pac_key; } ;

/* Variables and functions */
 int /*<<< orphan*/  EAP_TEAP_PAC_KEY_LEN ; 
 int /*<<< orphan*/  MSG_DEBUG ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/  const*,size_t) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static int FUNC3(void *ctx, const u8 *ticket, size_t len,
				      const u8 *client_random,
				      const u8 *server_random,
				      u8 *master_secret)
{
	struct eap_teap_data *data = ctx;

	FUNC2(MSG_DEBUG, "EAP-TEAP: SessionTicket callback");

	if (!master_secret) {
		FUNC2(MSG_DEBUG,
			   "EAP-TEAP: SessionTicket failed - fall back to full TLS handshake");
		data->session_ticket_used = 0;
		if (data->provisioning_allowed) {
			FUNC2(MSG_DEBUG,
				   "EAP-TEAP: Try to provision a new PAC-Key");
			data->provisioning = 1;
			data->current_pac = NULL;
		}
		return 0;
	}

	FUNC1(MSG_DEBUG, "EAP-TEAP: SessionTicket", ticket, len);

	if (!data->current_pac) {
		FUNC2(MSG_DEBUG,
			   "EAP-TEAP: No PAC-Key available for using SessionTicket");
		data->session_ticket_used = 0;
		return 0;
	}

	/* EAP-TEAP uses PAC-Key as the TLS master_secret */
	FUNC0(master_secret, data->current_pac->pac_key,
		  EAP_TEAP_PAC_KEY_LEN);

	data->session_ticket_used = 1;

	return 1;
}