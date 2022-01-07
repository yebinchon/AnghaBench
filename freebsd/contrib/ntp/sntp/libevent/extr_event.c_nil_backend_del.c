
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct event_base {int dummy; } ;
typedef int evutil_socket_t ;



__attribute__((used)) static int
nil_backend_del(struct event_base *b, evutil_socket_t fd, short old,
    short events, void *fdinfo)
{
 return 0;
}
