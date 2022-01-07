
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct wpabuf {int dummy; } ;
struct gas_server_response {int freq; size_t offset; int list; struct wpabuf* resp; int dialog_token; int dst; struct gas_server_handler* handler; } ;
struct gas_server_handler {int adv_proto_id_len; int adv_proto_id; } ;
struct gas_server {int ctx; int (* tx ) (int ,int,int const*,struct wpabuf*,int) ;int responses; } ;


 int ETH_ALEN ;
 int GAS_QUERY_TIMEOUT ;
 int MSG_DEBUG ;
 int WLAN_EID_ADV_PROTO ;
 int WLAN_STATUS_SUCCESS ;
 int dl_list_add (int *,int *) ;
 int eloop_register_timeout (int ,int ,int ,struct gas_server_response*,int *) ;
 struct wpabuf* gas_build_initial_resp (int ,int ,int,int) ;
 int gas_server_free_response (struct gas_server_response*) ;
 int gas_server_response_timeout ;
 int os_memcpy (int ,int const*,int ) ;
 struct gas_server_response* os_zalloc (int) ;
 int stub1 (int ,int,int const*,struct wpabuf*,int) ;
 int wpa_printf (int ,char*,...) ;
 int wpabuf_free (struct wpabuf*) ;
 size_t wpabuf_len (struct wpabuf*) ;
 int wpabuf_put_buf (struct wpabuf*,struct wpabuf*) ;
 int wpabuf_put_data (struct wpabuf*,int ,int) ;
 int wpabuf_put_le16 (struct wpabuf*,size_t) ;
 int wpabuf_put_u8 (struct wpabuf*,int) ;

__attribute__((used)) static void
gas_server_send_resp(struct gas_server *gas, struct gas_server_handler *handler,
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

 response = os_zalloc(sizeof(*response));
 if (!response) {
  wpabuf_free(query_resp);
  return;
 }
 wpa_printf(MSG_DEBUG, "DPP: Allocated GAS response @%p", response);
 response->freq = freq;
 response->handler = handler;
 os_memcpy(response->dst, da, ETH_ALEN);
 response->dialog_token = dialog_token;
 if (hdr_len + wpabuf_len(query_resp) > max_len) {

  comeback_delay = 1;
  resp_frag_len = 0;
 } else {

  comeback_delay = 0;
  resp_frag_len = wpabuf_len(query_resp);
 }

 resp = gas_build_initial_resp(dialog_token, WLAN_STATUS_SUCCESS,
          comeback_delay,
          handler->adv_proto_id_len +
          resp_frag_len);
 if (!resp) {
  wpabuf_free(query_resp);
  gas_server_free_response(response);
  return;
 }


 wpabuf_put_u8(resp, WLAN_EID_ADV_PROTO);
 wpabuf_put_u8(resp, 1 + handler->adv_proto_id_len);
 wpabuf_put_u8(resp, 0x7f);

 wpabuf_put_data(resp, handler->adv_proto_id, handler->adv_proto_id_len);


 wpabuf_put_le16(resp, resp_frag_len);
 if (!comeback_delay)
  wpabuf_put_buf(resp, query_resp);

 if (comeback_delay) {
  wpa_printf(MSG_DEBUG,
      "GAS: Need to fragment query response");
 } else {
  wpa_printf(MSG_DEBUG,
      "GAS: Full query response fits in the GAS Initial Response frame");
 }
 response->offset = resp_frag_len;
 response->resp = query_resp;
 dl_list_add(&gas->responses, &response->list);
 gas->tx(gas->ctx, freq, da, resp, comeback_delay ? 2000 : 0);
 wpabuf_free(resp);
 eloop_register_timeout(GAS_QUERY_TIMEOUT, 0,
          gas_server_response_timeout, response, ((void*)0));
}
