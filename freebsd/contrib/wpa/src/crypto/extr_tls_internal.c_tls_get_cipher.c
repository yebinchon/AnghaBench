
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tls_connection {scalar_t__ server; scalar_t__ client; } ;


 int tlsv1_client_get_cipher (scalar_t__,char*,size_t) ;
 int tlsv1_server_get_cipher (scalar_t__,char*,size_t) ;

int tls_get_cipher(void *tls_ctx, struct tls_connection *conn,
     char *buf, size_t buflen)
{
 if (conn == ((void*)0))
  return -1;
 return -1;
}
