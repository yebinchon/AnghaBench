
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u_short ;


 scalar_t__ SSH_DEFAULT_PORT ;
 scalar_t__ asprintf (char**,char*,char const*,int) ;
 int debug3 (char*,char*) ;
 int errno ;
 int fatal (char*,int ) ;
 int strerror (int ) ;
 char* xstrdup (char const*) ;

char *
put_host_port(const char *host, u_short port)
{
 char *hoststr;

 if (port == 0 || port == SSH_DEFAULT_PORT)
  return(xstrdup(host));
 if (asprintf(&hoststr, "[%s]:%d", host, (int)port) < 0)
  fatal("put_host_port: asprintf: %s", strerror(errno));
 debug3("put_host_port: %s", hoststr);
 return hoststr;
}
