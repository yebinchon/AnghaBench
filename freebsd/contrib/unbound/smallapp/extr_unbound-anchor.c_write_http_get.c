
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int SSL ;


 char const* PACKAGE_VERSION ;
 scalar_t__ write_ssl_line (int *,char*,char const*) ;

__attribute__((used)) static int
write_http_get(SSL* ssl, const char* pathname, const char* urlname)
{
 if(write_ssl_line(ssl, "GET /%s HTTP/1.1", pathname) &&
    write_ssl_line(ssl, "Host: %s", urlname) &&
    write_ssl_line(ssl, "User-Agent: unbound-anchor/%s",
     PACKAGE_VERSION) &&



    write_ssl_line(ssl, "", ((void*)0))) {
  return 1;
 }
 return 0;
}
