
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tls_connection {int ssl; } ;


 int os_strlcpy (char*,char const*,size_t) ;
 char* wolfSSL_get_version (int ) ;

int tls_get_version(void *ssl_ctx, struct tls_connection *conn,
      char *buf, size_t buflen)
{
 const char *name;

 if (!conn || !conn->ssl)
  return -1;

 name = wolfSSL_get_version(conn->ssl);
 if (!name)
  return -1;

 os_strlcpy(buf, name, buflen);
 return 0;
}
