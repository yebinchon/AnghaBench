
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct tls_connection {int dummy; } ;


 int os_free (int *) ;
 int * os_malloc (size_t) ;
 scalar_t__ tls_connection_get_eap_fast_key (void*,struct tls_connection*,int *,size_t) ;

u8 * eap_fast_derive_key(void *ssl_ctx, struct tls_connection *conn, size_t len)
{
 u8 *out;

 out = os_malloc(len);
 if (out == ((void*)0))
  return ((void*)0);

 if (tls_connection_get_eap_fast_key(ssl_ctx, conn, out, len)) {
  os_free(out);
  return ((void*)0);
 }

 return out;
}
