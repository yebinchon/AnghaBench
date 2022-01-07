
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tls_in_data {size_t consumed; int in_data; } ;
typedef int WOLFSSL ;


 int os_memcpy (char*,size_t,size_t) ;
 size_t wpabuf_head_u8 (int ) ;
 size_t wpabuf_len (int ) ;

__attribute__((used)) static int wolfssl_receive_cb(WOLFSSL *ssl, char *buf, int sz, void *ctx)
{
 size_t get = sz;
 struct tls_in_data *data = ctx;

 if (!data)
  return -1;

 if (get > (wpabuf_len(data->in_data) - data->consumed))
  get = wpabuf_len(data->in_data) - data->consumed;

 os_memcpy(buf, wpabuf_head_u8(data->in_data) + data->consumed, get);
 data->consumed += get;

 if (get == 0)
  return -2;

 return (int) get;
}
