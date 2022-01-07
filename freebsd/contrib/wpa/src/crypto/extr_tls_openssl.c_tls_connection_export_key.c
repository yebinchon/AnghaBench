
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct tls_connection {int ssl; } ;


 int SSL_export_keying_material (int ,int *,size_t,char const*,int ,int const*,size_t,int ) ;
 int os_strlen (char const*) ;

int tls_connection_export_key(void *tls_ctx, struct tls_connection *conn,
         const char *label, const u8 *context,
         size_t context_len, u8 *out, size_t out_len)
{
 if (!conn ||
     SSL_export_keying_material(conn->ssl, out, out_len, label,
           os_strlen(label), context, context_len,
           context != ((void*)0)) != 1)
  return -1;
 return 0;
}
