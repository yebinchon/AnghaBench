
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct servent {int s_port; } ;


 int FTP_DEFAULT_PORT ;
 int HTTP_DEFAULT_PORT ;
 int SCHEME_FTP ;
 int SCHEME_HTTP ;
 struct servent* getservbyname (char const*,char*) ;
 int ntohs (int ) ;
 scalar_t__ strcmp (char const*,int ) ;

int
fetch_default_port(const char *scheme)
{
 struct servent *se;

 if ((se = getservbyname(scheme, "tcp")) != ((void*)0))
  return (ntohs(se->s_port));
 if (strcmp(scheme, SCHEME_FTP) == 0)
  return (FTP_DEFAULT_PORT);
 if (strcmp(scheme, SCHEME_HTTP) == 0)
  return (HTTP_DEFAULT_PORT);
 return (0);
}
