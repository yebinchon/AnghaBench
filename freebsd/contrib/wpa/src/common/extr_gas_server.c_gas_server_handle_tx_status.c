
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct gas_server_response {scalar_t__ offset; int list; int * resp; TYPE_1__* handler; } ;
struct TYPE_2__ {int ctx; int (* status_cb ) (int ,int *,int) ;} ;


 int MSG_DEBUG ;
 int dl_list_del (int *) ;
 int gas_server_free_response (struct gas_server_response*) ;
 int stub1 (int ,int *,int) ;
 int wpa_printf (int ,char*) ;
 scalar_t__ wpabuf_len (int *) ;

__attribute__((used)) static void gas_server_handle_tx_status(struct gas_server_response *response,
     int ack)
{
 if (ack && response->offset < wpabuf_len(response->resp)) {
  wpa_printf(MSG_DEBUG,
      "GAS: More fragments remaining - keep pending entry");
  return;
 }

 if (!ack)
  wpa_printf(MSG_DEBUG,
      "GAS: No ACK received - drop pending entry");
 else
  wpa_printf(MSG_DEBUG,
      "GAS: Last fragment of the response sent out - drop pending entry");

 response->handler->status_cb(response->handler->ctx,
         response->resp, ack);
 response->resp = ((void*)0);
 dl_list_del(&response->list);
 gas_server_free_response(response);
}
