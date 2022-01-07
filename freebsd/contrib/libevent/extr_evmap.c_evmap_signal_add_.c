
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct evmap_signal {int events; } ;
struct eventop {int (* add ) (struct event_base*,int ,int ,int ,int *) ;int fdinfo_len; } ;
struct event_signal_map {int nentries; } ;
struct event_base {struct eventop* evsigsel; struct event_signal_map sigmap; } ;
struct event {int ev_fd; } ;


 int EV_SIGNAL ;
 int GET_SIGNAL_SLOT_AND_CTOR (struct evmap_signal*,struct event_signal_map*,int,int ,int ,int ) ;
 scalar_t__ LIST_EMPTY (int *) ;
 int LIST_INSERT_HEAD (int *,struct event*,int ) ;
 int ev_signal_next ;
 int evmap_make_space (struct event_signal_map*,int,int) ;
 int evmap_signal ;
 int evmap_signal_init ;
 int stub1 (struct event_base*,int ,int ,int ,int *) ;

int
evmap_signal_add_(struct event_base *base, int sig, struct event *ev)
{
 const struct eventop *evsel = base->evsigsel;
 struct event_signal_map *map = &base->sigmap;
 struct evmap_signal *ctx = ((void*)0);

 if (sig >= map->nentries) {
  if (evmap_make_space(
   map, sig, sizeof(struct evmap_signal *)) == -1)
   return (-1);
 }
 GET_SIGNAL_SLOT_AND_CTOR(ctx, map, sig, evmap_signal, evmap_signal_init,
     base->evsigsel->fdinfo_len);

 if (LIST_EMPTY(&ctx->events)) {
  if (evsel->add(base, ev->ev_fd, 0, EV_SIGNAL, ((void*)0))
      == -1)
   return (-1);
 }

 LIST_INSERT_HEAD(&ctx->events, ev, ev_signal_next);

 return (1);
}
