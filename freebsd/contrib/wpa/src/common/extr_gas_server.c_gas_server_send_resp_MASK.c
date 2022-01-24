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
typedef  int /*<<< orphan*/  u8 ;
typedef  int u16 ;
struct wpabuf {int dummy; } ;
struct gas_server_response {int freq; size_t offset; int /*<<< orphan*/  list; struct wpabuf* resp; int /*<<< orphan*/  dialog_token; int /*<<< orphan*/  dst; struct gas_server_handler* handler; } ;
struct gas_server_handler {int adv_proto_id_len; int /*<<< orphan*/  adv_proto_id; } ;
struct gas_server {int /*<<< orphan*/  ctx; int /*<<< orphan*/  (* tx ) (int /*<<< orphan*/ ,int,int /*<<< orphan*/  const*,struct wpabuf*,int) ;int /*<<< orphan*/  responses; } ;

/* Variables and functions */
 int /*<<< orphan*/  ETH_ALEN ; 
 int /*<<< orphan*/  GAS_QUERY_TIMEOUT ; 
 int /*<<< orphan*/  MSG_DEBUG ; 
 int WLAN_EID_ADV_PROTO ; 
 int /*<<< orphan*/  WLAN_STATUS_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct gas_server_response*,int /*<<< orphan*/ *) ; 
 struct wpabuf* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC3 (struct gas_server_response*) ; 
 int /*<<< orphan*/  gas_server_response_timeout ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/  const*,int /*<<< orphan*/ ) ; 
 struct gas_server_response* FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int,int /*<<< orphan*/  const*,struct wpabuf*,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC8 (struct wpabuf*) ; 
 size_t FUNC9 (struct wpabuf*) ; 
 int /*<<< orphan*/  FUNC10 (struct wpabuf*,struct wpabuf*) ; 
 int /*<<< orphan*/  FUNC11 (struct wpabuf*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC12 (struct wpabuf*,size_t) ; 
 int /*<<< orphan*/  FUNC13 (struct wpabuf*,int) ; 

__attribute__((used)) static void
FUNC14(struct gas_server *gas, struct gas_server_handler *handler,
		     const u8 *da, int freq, u8 dialog_token,
		     struct wpabuf *query_resp)
{
	size_t max_len = (freq > 56160) ? 928 : 1400;
	size_t hdr_len = 24 + 2 + 5 + 3 + handler->adv_proto_id_len + 2;
	size_t resp_frag_len;
	struct wpabuf *resp;
	u16 comeback_delay;
	struct gas_server_response *response;

	if (!query_resp)
		return;

	response = FUNC5(sizeof(*response));
	if (!response) {
		FUNC8(query_resp);
		return;
	}
	FUNC7(MSG_DEBUG, "DPP: Allocated GAS response @%p", response);
	response->freq = freq;
	response->handler = handler;
	FUNC4(response->dst, da, ETH_ALEN);
	response->dialog_token = dialog_token;
	if (hdr_len + FUNC9(query_resp) > max_len) {
		/* Need to use comeback to initiate fragmentation */
		comeback_delay = 1;
		resp_frag_len = 0;
	} else {
		/* Full response fits into the initial response */
		comeback_delay = 0;
		resp_frag_len = FUNC9(query_resp);
	}

	resp = FUNC2(dialog_token, WLAN_STATUS_SUCCESS,
				      comeback_delay,
				      handler->adv_proto_id_len +
				      resp_frag_len);
	if (!resp) {
		FUNC8(query_resp);
		FUNC3(response);
		return;
	}

	/* Advertisement Protocol element */
	FUNC13(resp, WLAN_EID_ADV_PROTO);
	FUNC13(resp, 1 + handler->adv_proto_id_len); /* Length */
	FUNC13(resp, 0x7f);
	/* Advertisement Protocol ID */
	FUNC11(resp, handler->adv_proto_id, handler->adv_proto_id_len);

	/* Query Response Length */
	FUNC12(resp, resp_frag_len);
	if (!comeback_delay)
		FUNC10(resp, query_resp);

	if (comeback_delay) {
		FUNC7(MSG_DEBUG,
			   "GAS: Need to fragment query response");
	} else {
		FUNC7(MSG_DEBUG,
			   "GAS: Full query response fits in the GAS Initial Response frame");
	}
	response->offset = resp_frag_len;
	response->resp = query_resp;
	FUNC0(&gas->responses, &response->list);
	gas->tx(gas->ctx, freq, da, resp, comeback_delay ? 2000 : 0);
	FUNC8(resp);
	FUNC1(GAS_QUERY_TIMEOUT, 0,
			       gas_server_response_timeout, response, NULL);
}