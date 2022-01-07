
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct evutil_addrinfo {int dummy; } ;
typedef int evutil_socket_t ;
typedef scalar_t__ ev_uint16_t ;


 int bind_socket_ai (struct evutil_addrinfo*,int) ;
 int evutil_freeaddrinfo (struct evutil_addrinfo*) ;
 struct evutil_addrinfo* make_addrinfo (char const*,scalar_t__) ;

__attribute__((used)) static evutil_socket_t
bind_socket(const char *address, ev_uint16_t port, int reuse)
{
 evutil_socket_t fd;
 struct evutil_addrinfo *aitop = ((void*)0);


 if (address == ((void*)0) && port == 0)
  return bind_socket_ai(((void*)0), 0);

 aitop = make_addrinfo(address, port);

 if (aitop == ((void*)0))
  return (-1);

 fd = bind_socket_ai(aitop, reuse);

 evutil_freeaddrinfo(aitop);

 return (fd);
}
