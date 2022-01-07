
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct evdns_getaddrinfo_request {int dummy; } ;
typedef int evutil_socket_t ;


 int evdns_getaddrinfo_cancel (struct evdns_getaddrinfo_request*) ;

__attribute__((used)) static void
cancel_gai_cb(evutil_socket_t fd, short what, void *ptr)
{
 struct evdns_getaddrinfo_request *r = ptr;
 evdns_getaddrinfo_cancel(r);
}
