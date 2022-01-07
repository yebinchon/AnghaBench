
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct gas_query_pending {int resp; } ;


 int MSG_DEBUG ;
 int wpa_printf (int ,char*) ;
 int wpabuf_put_data (int ,int const*,size_t) ;
 scalar_t__ wpabuf_resize (int *,size_t) ;

__attribute__((used)) static int gas_query_append(struct gas_query_pending *query, const u8 *data,
       size_t len)
{
 if (wpabuf_resize(&query->resp, len) < 0) {
  wpa_printf(MSG_DEBUG, "GAS: No memory to store the response");
  return -1;
 }
 wpabuf_put_data(query->resp, data, len);
 return 0;
}
