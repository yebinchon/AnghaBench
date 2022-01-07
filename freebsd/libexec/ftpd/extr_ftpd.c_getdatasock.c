
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct sockaddr {int dummy; } ;
typedef int on ;
struct TYPE_7__ {int su_family; } ;
struct TYPE_6__ {scalar_t__ su_family; int su_len; int su_port; } ;
struct TYPE_5__ {int pw_uid; } ;
typedef int FILE ;


 scalar_t__ AF_INET ;
 int EADDRINUSE ;
 int IPPROTO_IP ;
 int IPPROTO_TCP ;
 int IPTOS_THROUGHPUT ;
 int IP_TOS ;
 int LOG_WARNING ;
 int SOCK_STREAM ;
 int SOL_SOCKET ;
 int SO_REUSEADDR ;
 int TCP_NOPUSH ;
 scalar_t__ bind (int,struct sockaddr*,int ) ;
 int close (int) ;
 TYPE_2__ ctrl_addr ;
 scalar_t__ data ;
 TYPE_3__ data_dest ;
 TYPE_2__ data_source ;
 int dataport ;
 int errno ;
 int * fdopen (int,char*) ;
 int htons (int ) ;
 TYPE_1__* pw ;
 int seteuid (int ) ;
 scalar_t__ setsockopt (int,int ,int ,int*,int) ;
 int sleep (int) ;
 int socket (int ,int ,int ) ;
 int syslog (int ,char*) ;

__attribute__((used)) static FILE *
getdatasock(char *mode)
{
 int on = 1, s, t, tries;

 if (data >= 0)
  return (fdopen(data, mode));

 s = socket(data_dest.su_family, SOCK_STREAM, 0);
 if (s < 0)
  goto bad;
 if (setsockopt(s, SOL_SOCKET, SO_REUSEADDR, &on, sizeof(on)) < 0)
  syslog(LOG_WARNING, "data setsockopt (SO_REUSEADDR): %m");

 data_source = ctrl_addr;
 data_source.su_port = htons(dataport);
 (void) seteuid(0);
 for (tries = 1; ; tries++) {
  if (bind(s, (struct sockaddr *)&data_source,
      data_source.su_len) >= 0)
   break;
  if (errno != EADDRINUSE || tries > 10)
   goto bad;
  sleep(tries);
 }
 (void) seteuid(pw->pw_uid);
 return (fdopen(s, mode));
bad:

 t = errno;
 (void) seteuid(pw->pw_uid);
 (void) close(s);
 errno = t;
 return (((void*)0));
}
