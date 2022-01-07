
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct tls_connection {int dummy; } ;


 int tls_connection_prf (void*,struct tls_connection*,char*,int *,int ,int,int,int *,size_t) ;

int tls_connection_get_eap_fast_key(void *tls_ctx, struct tls_connection *conn,
        u8 *out, size_t out_len)
{
 return tls_connection_prf(tls_ctx, conn, "key expansion", ((void*)0), 0,
      1, 1, out, out_len);
}
