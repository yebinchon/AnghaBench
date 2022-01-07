
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gas_query_pending {int retry; int dialog_token; int * adv_proto; scalar_t__ next_frag_id; scalar_t__ wait_comeback; int req; int addr; } ;
struct gas_query {struct gas_query_pending* current; } ;


 int MSG_DEBUG ;
 int eloop_cancel_timeout (int ,struct gas_query*,struct gas_query_pending*) ;
 int gas_query_new_dialog_token (struct gas_query*,int ) ;
 int gas_query_timeout ;
 int gas_query_tx_comeback_timeout ;
 int gas_query_tx_initial_req (struct gas_query*,struct gas_query_pending*) ;
 int wpa_printf (int ,char*,...) ;
 int wpabuf_free (int *) ;
 int* wpabuf_mhead_u8 (int ) ;

__attribute__((used)) static void gas_query_rx_comeback_timeout(void *eloop_data, void *user_ctx)
{
 struct gas_query *gas = eloop_data;
 struct gas_query_pending *query = user_ctx;
 int dialog_token;

 wpa_printf(MSG_DEBUG,
     "GAS: No response to comeback request received (retry=%u)",
     query->retry);
 if (gas->current != query || query->retry)
  return;
 dialog_token = gas_query_new_dialog_token(gas, query->addr);
 if (dialog_token < 0)
  return;
 wpa_printf(MSG_DEBUG,
     "GAS: Retry GAS query due to comeback response timeout");
 query->retry = 1;
 query->dialog_token = dialog_token;
 *(wpabuf_mhead_u8(query->req) + 2) = dialog_token;
 query->wait_comeback = 0;
 query->next_frag_id = 0;
 wpabuf_free(query->adv_proto);
 query->adv_proto = ((void*)0);
 eloop_cancel_timeout(gas_query_tx_comeback_timeout, gas, query);
 eloop_cancel_timeout(gas_query_timeout, gas, query);
 gas_query_tx_initial_req(gas, query);
}
