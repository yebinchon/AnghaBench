
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wpabuf {int dummy; } ;
struct tls_out_data {int out_data; } ;
typedef int WOLFSSL ;


 int MSG_DEBUG ;
 int wpa_printf (int ,char*,int) ;
 struct wpabuf* wpabuf_alloc_copy (char*,int) ;
 int wpabuf_concat (int ,struct wpabuf*) ;

__attribute__((used)) static int wolfssl_send_cb(WOLFSSL *ssl, char *buf, int sz, void *ctx)
{
 struct wpabuf *tmp;
 struct tls_out_data *data = ctx;

 if (!data)
  return -1;

 wpa_printf(MSG_DEBUG, "SSL: adding %d bytes", sz);

 tmp = wpabuf_alloc_copy(buf, sz);
 if (!tmp)
  return -1;
 data->out_data = wpabuf_concat(data->out_data, tmp);
 if (!data->out_data)
  return -1;

 return sz;
}
