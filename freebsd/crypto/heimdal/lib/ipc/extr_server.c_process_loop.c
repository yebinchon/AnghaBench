
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pollfd {int events; int revents; int fd; } ;
struct client {int flags; int fd; } ;
typedef int fds ;


 int POLLERR ;
 int POLLIN ;
 int POLLOUT ;
 int WAITING_CLOSE ;
 int WAITING_READ ;
 int WAITING_WRITE ;
 int abort () ;
 struct client** clients ;
 int free (struct pollfd*) ;
 int handle_read (struct client*) ;
 int handle_write (struct client*) ;
 struct pollfd* malloc (int) ;
 scalar_t__ maybe_close (struct client*) ;
 int num_clients ;
 int poll (struct pollfd*,unsigned int,int) ;

__attribute__((used)) static void
process_loop(void)
{
    struct pollfd *fds;
    unsigned n;
    unsigned num_fds;

    while(num_clients > 0) {

 fds = malloc(num_clients * sizeof(fds[0]));
 if(fds == ((void*)0))
     abort();

 num_fds = num_clients;

 for (n = 0 ; n < num_fds; n++) {
     fds[n].fd = clients[n]->fd;
     fds[n].events = 0;
     if (clients[n]->flags & WAITING_READ)
  fds[n].events |= POLLIN;
     if (clients[n]->flags & WAITING_WRITE)
  fds[n].events |= POLLOUT;

     fds[n].revents = 0;
 }

 poll(fds, num_fds, -1);

 for (n = 0 ; n < num_fds; n++) {
     if (clients[n] == ((void*)0))
  continue;
     if (fds[n].revents & POLLERR) {
  clients[n]->flags |= WAITING_CLOSE;
  continue;
     }

     if (fds[n].revents & POLLIN)
  handle_read(clients[n]);
     if (fds[n].revents & POLLOUT)
  handle_write(clients[n]);
 }

 n = 0;
 while (n < num_clients) {
     struct client *c = clients[n];
     if (maybe_close(c)) {
  if (n < num_clients - 1)
      clients[n] = clients[num_clients - 1];
  num_clients--;
     } else
  n++;
 }

 free(fds);
    }
}
