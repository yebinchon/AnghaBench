
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct wpabuf {int dummy; } ;


 int ANQP_QUERY_LIST ;
 int * gas_anqp_add_element (struct wpabuf*,int ) ;
 struct wpabuf* gas_anqp_build_initial_req (int ,int) ;
 int gas_anqp_set_element_len (struct wpabuf*,int *) ;
 int gas_anqp_set_len (struct wpabuf*) ;
 int wpabuf_len (struct wpabuf*) ;
 int wpabuf_put_buf (struct wpabuf*,struct wpabuf*) ;
 int wpabuf_put_le16 (struct wpabuf*,int ) ;

__attribute__((used)) static struct wpabuf * anqp_build_req(u16 info_ids[], size_t num_ids,
          struct wpabuf *extra)
{
 struct wpabuf *buf;
 size_t i;
 u8 *len_pos;

 buf = gas_anqp_build_initial_req(0, 4 + num_ids * 2 +
      (extra ? wpabuf_len(extra) : 0));
 if (buf == ((void*)0))
  return ((void*)0);

 if (num_ids > 0) {
  len_pos = gas_anqp_add_element(buf, ANQP_QUERY_LIST);
  for (i = 0; i < num_ids; i++)
   wpabuf_put_le16(buf, info_ids[i]);
  gas_anqp_set_element_len(buf, len_pos);
 }
 if (extra)
  wpabuf_put_buf(buf, extra);

 gas_anqp_set_len(buf);

 return buf;
}
