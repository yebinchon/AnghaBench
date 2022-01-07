
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct wpabuf {int dummy; } ;


 int gas_add_adv_proto_anqp (struct wpabuf*,int,int ) ;
 struct wpabuf* gas_build_initial_resp (int ,int ,int ,int) ;
 int wpabuf_put (struct wpabuf*,int) ;

struct wpabuf * gas_anqp_build_initial_resp(u8 dialog_token, u16 status_code,
         u16 comeback_delay, size_t size)
{
 struct wpabuf *buf;

 buf = gas_build_initial_resp(dialog_token, status_code, comeback_delay,
         4 + size);
 if (buf == ((void*)0))
  return ((void*)0);

 gas_add_adv_proto_anqp(buf, 0x7f, 0);

 wpabuf_put(buf, 2);

 return buf;
}
