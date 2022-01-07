
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct evmap_io {int dummy; } ;
struct event_changelist_fdinfo {int idxplus1; } ;
struct event_changelist {struct event_change* changes; } ;
struct event_change {scalar_t__ fd; } ;
struct event_base {struct event_changelist changelist; } ;
typedef scalar_t__ evutil_socket_t ;


 int EVUTIL_ASSERT (int) ;

__attribute__((used)) static int
event_changelist_assert_ok_foreach_iter_fn(
 struct event_base *base,
 evutil_socket_t fd, struct evmap_io *io, void *arg)
{
 struct event_changelist *changelist = &base->changelist;
 struct event_changelist_fdinfo *f;
 f = (void*)
     ( ((char*)io) + sizeof(struct evmap_io) );
 if (f->idxplus1) {
  struct event_change *c = &changelist->changes[f->idxplus1 - 1];
  EVUTIL_ASSERT(c->fd == fd);
 }
 return 0;
}
