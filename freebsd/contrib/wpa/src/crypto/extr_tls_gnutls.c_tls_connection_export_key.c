
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct tls_connection {int * session; } ;


 int gnutls_prf (int *,int ,char const*,int ,int ,int *,size_t,char*) ;
 int gnutls_prf_rfc5705 (int *,int ,char const*,size_t,char const*,size_t,char*) ;
 int os_strlen (char const*) ;

int tls_connection_export_key(void *tls_ctx, struct tls_connection *conn,
         const char *label, const u8 *context,
         size_t context_len, u8 *out, size_t out_len)
{
 if (conn == ((void*)0) || conn->session == ((void*)0))
  return -1;






 if (context)
  return -1;
 return gnutls_prf(conn->session, os_strlen(label), label,
     0 , 0, ((void*)0), out_len,
     (char *) out);

}
