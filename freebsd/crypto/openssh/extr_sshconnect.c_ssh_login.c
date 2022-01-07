
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u_short ;
struct sockaddr {int dummy; } ;
struct passwd {char const* pw_name; } ;
struct TYPE_2__ {char* user; } ;
typedef int Sensitive ;


 int debug (char*,char*,int ,char*) ;
 int free (char*) ;
 int lowercase (char*) ;
 TYPE_1__ options ;
 int packet_set_nonblocking () ;
 int ssh_exchange_identification (int) ;
 int ssh_kex2 (char*,struct sockaddr*,int ) ;
 int ssh_userauth2 (char*,char*,char*,int *) ;
 char* xstrdup (char const*) ;

void
ssh_login(Sensitive *sensitive, const char *orighost,
    struct sockaddr *hostaddr, u_short port, struct passwd *pw, int timeout_ms)
{
 char *host;
 char *server_user, *local_user;

 local_user = xstrdup(pw->pw_name);
 server_user = options.user ? options.user : local_user;


 host = xstrdup(orighost);
 lowercase(host);


 ssh_exchange_identification(timeout_ms);


 packet_set_nonblocking();



 debug("Authenticating to %s:%d as '%s'", host, port, server_user);
 ssh_kex2(host, hostaddr, port);
 ssh_userauth2(local_user, server_user, host, sensitive);
 free(local_user);
}
