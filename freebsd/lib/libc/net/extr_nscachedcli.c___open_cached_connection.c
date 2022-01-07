
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockaddr_un {int sun_path; int sun_family; } ;
struct sockaddr {int dummy; } ;
struct kevent {int dummy; } ;
struct cached_connection_params {int socket_path; } ;
struct cached_connection_ {int sockfd; int write_queue; int read_queue; } ;


 int EVFILT_READ ;
 int EVFILT_WRITE ;
 int EV_ADD ;
 int EV_SET (struct kevent*,int,int ,int ,int ,int ,int *) ;
 int F_SETFL ;
 int O_NONBLOCK ;
 int PF_LOCAL ;
 int SOCK_CLOEXEC ;
 int SOCK_STREAM ;
 int _close (int) ;
 int _connect (int,struct sockaddr*,int) ;
 int _fcntl (int,int ,int ) ;
 int _kevent (int,struct kevent*,int,int *,int ,int *) ;
 int _socket (int ,int,int ) ;
 int assert (int) ;
 void* kqueue () ;
 struct cached_connection_* malloc (int) ;
 int memset (struct cached_connection_*,int ,int) ;
 int strlen (int ) ;
 int strncpy (int ,int ,int) ;

struct cached_connection_ *
__open_cached_connection(struct cached_connection_params const *params)
{
 struct cached_connection_ *retval;
 struct kevent eventlist;
 struct sockaddr_un client_address;
 int client_address_len, client_socket;
 int res;

 assert(params != ((void*)0));

 client_socket = _socket(PF_LOCAL, SOCK_STREAM | SOCK_CLOEXEC, 0);
 client_address.sun_family = PF_LOCAL;
 strncpy(client_address.sun_path, params->socket_path,
     sizeof(client_address.sun_path));
 client_address_len = sizeof(client_address.sun_family) +
     strlen(client_address.sun_path) + 1;

 res = _connect(client_socket, (struct sockaddr *)&client_address,
     client_address_len);
 if (res == -1) {
  _close(client_socket);
  return (((void*)0));
 }
 _fcntl(client_socket, F_SETFL, O_NONBLOCK);

 retval = malloc(sizeof(struct cached_connection_));
 assert(retval != ((void*)0));
 memset(retval, 0, sizeof(struct cached_connection_));

 retval->sockfd = client_socket;

 retval->write_queue = kqueue();
 assert(retval->write_queue != -1);

 EV_SET(&eventlist, retval->sockfd, EVFILT_WRITE, EV_ADD, 0, 0, ((void*)0));
 res = _kevent(retval->write_queue, &eventlist, 1, ((void*)0), 0, ((void*)0));

 retval->read_queue = kqueue();
 assert(retval->read_queue != -1);

 EV_SET(&eventlist, retval->sockfd, EVFILT_READ, EV_ADD, 0, 0, ((void*)0));
 res = _kevent(retval->read_queue, &eventlist, 1, ((void*)0), 0, ((void*)0));

 return (retval);
}
