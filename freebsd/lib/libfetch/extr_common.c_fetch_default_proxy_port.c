
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int FTP_DEFAULT_PROXY_PORT ;
 int HTTP_DEFAULT_PROXY_PORT ;
 int SCHEME_FTP ;
 int SCHEME_HTTP ;
 scalar_t__ strcmp (char const*,int ) ;

int
fetch_default_proxy_port(const char *scheme)
{
 if (strcmp(scheme, SCHEME_FTP) == 0)
  return (FTP_DEFAULT_PROXY_PORT);
 if (strcmp(scheme, SCHEME_HTTP) == 0)
  return (HTTP_DEFAULT_PROXY_PORT);
 return (0);
}
