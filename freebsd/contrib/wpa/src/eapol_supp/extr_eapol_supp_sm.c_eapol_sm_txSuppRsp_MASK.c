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
struct wpabuf {int dummy; } ;
struct eapol_sm {int /*<<< orphan*/  dot1xSuppEapolFramesTx; int /*<<< orphan*/  dot1xSuppEapolRespFramesTx; int /*<<< orphan*/  dot1xSuppEapolReqFramesRx; int /*<<< orphan*/  dot1xSuppEapolReqIdFramesRx; scalar_t__ initial_req; TYPE_1__* ctx; int /*<<< orphan*/  eap; int /*<<< orphan*/  eap_proxy; scalar_t__ use_eap_proxy; } ;
struct TYPE_2__ {int /*<<< orphan*/  eapol_send_ctx; int /*<<< orphan*/  (* eapol_send ) (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  IEEE802_1X_TYPE_EAP_PACKET ; 
 int /*<<< orphan*/  MSG_DEBUG ; 
 int /*<<< orphan*/  MSG_WARNING ; 
 struct wpabuf* FUNC0 (int /*<<< orphan*/ ) ; 
 struct wpabuf* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (struct wpabuf*) ; 
 int /*<<< orphan*/  FUNC5 (struct wpabuf*) ; 
 int /*<<< orphan*/  FUNC6 (struct wpabuf*) ; 

__attribute__((used)) static void FUNC7(struct eapol_sm *sm)
{
	struct wpabuf *resp;

	FUNC3(MSG_DEBUG, "EAPOL: txSuppRsp");

#ifdef CONFIG_EAP_PROXY
	if (sm->use_eap_proxy) {
		/* Get EAP Response from EAP Proxy */
		resp = eap_proxy_get_eapRespData(sm->eap_proxy);
		if (resp == NULL) {
			wpa_printf(MSG_WARNING, "EAPOL: txSuppRsp - EAP Proxy "
				   "response data not available");
			return;
		}
	} else
#endif /* CONFIG_EAP_PROXY */

	resp = FUNC0(sm->eap);
	if (resp == NULL) {
		FUNC3(MSG_WARNING, "EAPOL: txSuppRsp - EAP response data "
			   "not available");
		return;
	}

	/* Send EAP-Packet from the EAP layer to the Authenticator */
	sm->ctx->eapol_send(sm->ctx->eapol_send_ctx,
			    IEEE802_1X_TYPE_EAP_PACKET, FUNC5(resp),
			    FUNC6(resp));

	/* eapRespData is not used anymore, so free it here */
	FUNC4(resp);

	if (sm->initial_req)
		sm->dot1xSuppEapolReqIdFramesRx++;
	else
		sm->dot1xSuppEapolReqFramesRx++;
	sm->dot1xSuppEapolRespFramesTx++;
	sm->dot1xSuppEapolFramesTx++;
}