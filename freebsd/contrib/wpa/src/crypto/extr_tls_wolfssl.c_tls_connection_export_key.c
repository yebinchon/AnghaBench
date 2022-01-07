
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct tls_connection {int ssl; } ;


 scalar_t__ wolfSSL_make_eap_keys (int ,int *,size_t,char const*) ;

int tls_connection_export_key(void *tls_ctx, struct tls_connection *conn,
         const char *label, const u8 *context,
         size_t context_len, u8 *out, size_t out_len)
{
 if (context)
  return -1;
 if (!conn || wolfSSL_make_eap_keys(conn->ssl, out, out_len, label) != 0)
  return -1;
 return 0;
}
