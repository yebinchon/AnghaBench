
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tls_connection {int * ssl; } ;


 char* SSL_get_cipher (int *) ;
 int os_strlcpy (char*,char const*,size_t) ;

int tls_get_cipher(void *ssl_ctx, struct tls_connection *conn,
     char *buf, size_t buflen)
{
 const char *name;
 if (conn == ((void*)0) || conn->ssl == ((void*)0))
  return -1;

 name = SSL_get_cipher(conn->ssl);
 if (name == ((void*)0))
  return -1;

 os_strlcpy(buf, name, buflen);
 return 0;
}
