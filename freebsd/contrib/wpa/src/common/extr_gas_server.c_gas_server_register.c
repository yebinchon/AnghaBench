
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct gas_server_handler {struct wpabuf* (* req_cb ) (void*,int const*,int const*,size_t) ;void (* status_cb ) (void*,struct wpabuf*,int) ;int list; struct gas_server* gas; void* ctx; int adv_proto_id_len; int adv_proto_id; } ;
struct gas_server {int handlers; } ;


 int MAX_ADV_PROTO_ID_LEN ;
 int dl_list_add (int *,int *) ;
 int os_memcpy (int ,int const*,int ) ;
 struct gas_server_handler* os_zalloc (int) ;

int gas_server_register(struct gas_server *gas,
   const u8 *adv_proto_id, u8 adv_proto_id_len,
   struct wpabuf *
   (*req_cb)(void *ctx, const u8 *sa,
      const u8 *query, size_t query_len),
   void (*status_cb)(void *ctx, struct wpabuf *resp,
       int ok),
   void *ctx)
{
 struct gas_server_handler *handler;

 if (!gas || adv_proto_id_len > MAX_ADV_PROTO_ID_LEN)
  return -1;
 handler = os_zalloc(sizeof(*handler));
 if (!handler)
  return -1;

 os_memcpy(handler->adv_proto_id, adv_proto_id, adv_proto_id_len);
 handler->adv_proto_id_len = adv_proto_id_len;
 handler->req_cb = req_cb;
 handler->status_cb = status_cb;
 handler->ctx = ctx;
 handler->gas = gas;
 dl_list_add(&gas->handlers, &handler->list);

 return 0;
}
