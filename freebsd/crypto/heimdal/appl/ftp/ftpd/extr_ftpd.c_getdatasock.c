
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ uid_t ;
struct TYPE_2__ {scalar_t__ pw_uid; } ;
typedef int FILE ;


 int EADDRINUSE ;
 int IPTOS_THROUGHPUT ;
 int SOCK_STREAM ;
 scalar_t__ bind (int,int ,int ) ;
 int close (int) ;
 int ctrl_addr ;
 scalar_t__ data ;
 int data_source ;
 int errno ;
 int fatal (char*) ;
 int * fdopen (int,char const*) ;
 TYPE_1__* pw ;
 scalar_t__ seteuid (scalar_t__) ;
 int sleep (int) ;
 int socket (int,int ,int ) ;
 int socket_get_address (int ) ;
 int socket_get_port (int ) ;
 int socket_set_address_and_port (int ,int ,int ) ;
 int socket_set_reuseaddr (int,int) ;
 int socket_set_tos (int,int ) ;
 int socket_sockaddr_size (int ) ;

__attribute__((used)) static FILE *
getdatasock(const char *mode, int domain)
{
 int s, t, tries;

 if (data >= 0)
  return (fdopen(data, mode));
 if (seteuid(0) < 0)
  fatal("Failed to seteuid");
 s = socket(domain, SOCK_STREAM, 0);
 if (s < 0)
  goto bad;
 socket_set_reuseaddr (s, 1);

 socket_set_address_and_port (data_source,
         socket_get_address (ctrl_addr),
         socket_get_port (data_source));

 for (tries = 1; ; tries++) {
  if (bind(s, data_source,
    socket_sockaddr_size (data_source)) >= 0)
   break;
  if (errno != EADDRINUSE || tries > 10)
   goto bad;
  sleep(tries);
 }
 if (seteuid(pw->pw_uid) < 0)
  fatal("Failed to seteuid");



 return (fdopen(s, mode));
bad:

 t = errno;
 if (seteuid((uid_t)pw->pw_uid) < 0)
  fatal("Failed to seteuid");
 close(s);
 errno = t;
 return (((void*)0));
}
