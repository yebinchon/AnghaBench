
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct wpabuf {int dummy; } ;


 struct wpabuf* gas_anqp_build_initial_req (int ,int) ;
 int hs20_put_anqp_req (int ,int const*,size_t,struct wpabuf*) ;

__attribute__((used)) static struct wpabuf * hs20_build_anqp_req(u32 stypes, const u8 *payload,
        size_t payload_len)
{
 struct wpabuf *buf;

 buf = gas_anqp_build_initial_req(0, 100 + payload_len);
 if (buf == ((void*)0))
  return ((void*)0);

 hs20_put_anqp_req(stypes, payload, payload_len, buf);

 return buf;
}
