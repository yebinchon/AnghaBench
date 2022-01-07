
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct wpabuf {int dummy; } ;


 int gas_add_adv_proto_anqp (struct wpabuf*,int ,int ) ;
 struct wpabuf* gas_build_initial_req (int ,int) ;
 int wpabuf_put (struct wpabuf*,int) ;

struct wpabuf * gas_anqp_build_initial_req(u8 dialog_token, size_t size)
{
 struct wpabuf *buf;

 buf = gas_build_initial_req(dialog_token, 4 + size);
 if (buf == ((void*)0))
  return ((void*)0);

 gas_add_adv_proto_anqp(buf, 0, 0);

 wpabuf_put(buf, 2);

 return buf;
}
