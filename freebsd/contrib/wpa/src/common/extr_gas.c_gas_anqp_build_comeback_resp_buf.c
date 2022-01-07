
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct wpabuf {int dummy; } ;


 struct wpabuf* gas_anqp_build_comeback_resp (int ,int ,int ,int ,int ,int ) ;
 int gas_anqp_set_len (struct wpabuf*) ;
 int wpabuf_len (struct wpabuf*) ;
 int wpabuf_put_buf (struct wpabuf*,struct wpabuf*) ;

struct wpabuf * gas_anqp_build_comeback_resp_buf(u8 dialog_token,
       u16 status_code,
       u8 frag_id, u8 more,
       u16 comeback_delay,
       struct wpabuf *payload)
{
 struct wpabuf *buf;

 buf = gas_anqp_build_comeback_resp(dialog_token, status_code, frag_id,
        more, comeback_delay,
        payload ? wpabuf_len(payload) : 0);
 if (buf == ((void*)0))
  return ((void*)0);

 if (payload)
  wpabuf_put_buf(buf, payload);

 gas_anqp_set_len(buf);

 return buf;
}
