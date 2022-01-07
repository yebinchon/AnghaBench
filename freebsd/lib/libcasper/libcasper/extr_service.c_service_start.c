
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct service_connection {int dummy; } ;
struct service {scalar_t__ s_magic; int s_flags; int s_name; } ;
typedef int fd_set ;


 scalar_t__ EINTR ;
 scalar_t__ FD_ISSET (int ,int *) ;
 scalar_t__ FD_SETSIZE ;
 int FD_ZERO (int *) ;
 scalar_t__ SERVICE_MAGIC ;
 int _exit (int) ;
 int abort () ;
 int assert (int) ;
 scalar_t__ errno ;
 int fd_add (int *,int,int ) ;
 int select (int,int *,int *,int *,int *) ;
 int service_clean (int,int,int ) ;
 int * service_connection_add (struct service*,int,int *) ;
 struct service_connection* service_connection_first (struct service*) ;
 int service_connection_get_sock (struct service_connection*) ;
 struct service_connection* service_connection_next (struct service_connection*) ;
 int service_message (struct service*,struct service_connection*) ;
 int setproctitle (char*,int ) ;

void
service_start(struct service *service, int sock, int procfd)
{
 struct service_connection *sconn, *sconntmp;
 fd_set fds;
 int maxfd, nfds;

 assert(service != ((void*)0));
 assert(service->s_magic == SERVICE_MAGIC);
 setproctitle("%s", service->s_name);
 service_clean(sock, procfd, service->s_flags);

 if (service_connection_add(service, sock, ((void*)0)) == ((void*)0))
  _exit(1);

 for (;;) {
  FD_ZERO(&fds);
  maxfd = -1;
  for (sconn = service_connection_first(service); sconn != ((void*)0);
      sconn = service_connection_next(sconn)) {
   maxfd = fd_add(&fds, maxfd,
       service_connection_get_sock(sconn));
  }

  assert(maxfd >= 0);
  assert(maxfd + 1 <= (int)FD_SETSIZE);
  nfds = select(maxfd + 1, &fds, ((void*)0), ((void*)0), ((void*)0));
  if (nfds < 0) {
   if (errno != EINTR)
    _exit(1);
   continue;
  } else if (nfds == 0) {

   abort();
  }

  for (sconn = service_connection_first(service); sconn != ((void*)0);
      sconn = sconntmp) {




   sconntmp = service_connection_next(sconn);
   if (FD_ISSET(service_connection_get_sock(sconn), &fds))
    service_message(service, sconn);
  }
  if (service_connection_first(service) == ((void*)0)) {



   break;
  }
 }

 _exit(0);
}
