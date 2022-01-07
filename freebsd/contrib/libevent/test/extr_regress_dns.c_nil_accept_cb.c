
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockaddr {int dummy; } ;
struct evconnlistener {int dummy; } ;
typedef int evutil_socket_t ;


 int be_connect_hostname_base ;
 int event_base_loopexit (int ,int *) ;
 int total_connected_or_failed ;
 int total_n_accepted ;

__attribute__((used)) static void
nil_accept_cb(struct evconnlistener *l, evutil_socket_t fd, struct sockaddr *s,
    int socklen, void *arg)
{
 int *p = arg;
 (*p)++;
 ++total_n_accepted;

 if (total_n_accepted >= 3 && total_connected_or_failed >= 5)
  event_base_loopexit(be_connect_hostname_base,
      ((void*)0));
}
