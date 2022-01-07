
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wpabuf {int dummy; } ;


 int wpabuf_len (struct wpabuf*) ;
 int wpabuf_put_buf (struct wpabuf*,struct wpabuf*) ;
 int wpabuf_put_le16 (struct wpabuf*,int ) ;

__attribute__((used)) static void dpp_write_gas_query(struct wpabuf *buf, struct wpabuf *query)
{

 wpabuf_put_le16(buf, wpabuf_len(query));
 wpabuf_put_buf(buf, query);
}
