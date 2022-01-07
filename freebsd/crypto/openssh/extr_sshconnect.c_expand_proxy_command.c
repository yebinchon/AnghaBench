
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int user; } ;


 int NI_MAXSERV ;
 int free (char*) ;
 TYPE_1__ options ;
 char* percent_expand (char*,char*,char const*,char*,char*,char*,int ,char*) ;
 int snprintf (char*,int,char*,int) ;
 int xasprintf (char**,char*,char const*) ;

__attribute__((used)) static char *
expand_proxy_command(const char *proxy_command, const char *user,
    const char *host, int port)
{
 char *tmp, *ret, strport[NI_MAXSERV];

 snprintf(strport, sizeof strport, "%d", port);
 xasprintf(&tmp, "exec %s", proxy_command);
 ret = percent_expand(tmp, "h", host, "p", strport,
     "r", options.user, (char *)((void*)0));
 free(tmp);
 return ret;
}
