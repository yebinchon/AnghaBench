
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct eap_sim_msg {int * buf; } ;
struct eap_hdr {int code; int identifier; } ;


 int EAP_SIM_INIT_LEN ;
 int os_free (struct eap_sim_msg*) ;
 struct eap_sim_msg* os_zalloc (int) ;
 int * wpabuf_alloc (int ) ;
 void* wpabuf_put (int *,int) ;

struct eap_sim_msg * eap_sim_msg_init(int code, int id, int type, int subtype)
{
 struct eap_sim_msg *msg;
 struct eap_hdr *eap;
 u8 *pos;

 msg = os_zalloc(sizeof(*msg));
 if (msg == ((void*)0))
  return ((void*)0);

 msg->buf = wpabuf_alloc(EAP_SIM_INIT_LEN);
 if (msg->buf == ((void*)0)) {
  os_free(msg);
  return ((void*)0);
 }
 eap = wpabuf_put(msg->buf, sizeof(*eap));
 eap->code = code;
 eap->identifier = id;

 pos = wpabuf_put(msg->buf, 4);
 *pos++ = type;
 *pos++ = subtype;
 *pos++ = 0;
 *pos++ = 0;

 return msg;
}
