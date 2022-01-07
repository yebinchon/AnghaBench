
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct evmap_io {int events; } ;
struct event_base {int dummy; } ;
typedef int evutil_socket_t ;


 int delete_all_in_dlist (int *) ;

__attribute__((used)) static int
evmap_io_delete_all_iter_fn(struct event_base *base, evutil_socket_t fd,
    struct evmap_io *io_info, void *arg)
{
 return delete_all_in_dlist(&io_info->events);
}
