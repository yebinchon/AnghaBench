
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef size_t u_int ;
struct event {int dummy; } ;
struct TYPE_4__ {int resp_read_pipe; struct event* resp_read_ctx; } ;
typedef TYPE_1__ blocking_child ;


 int EV_PERSIST ;
 int EV_READ ;
 int LOG_ERR ;
 int base ;
 TYPE_1__** blocking_children ;
 size_t blocking_children_alloc ;
 int event_add (struct event*,int *) ;
 int event_del (struct event*) ;
 int event_free (struct event*) ;
 struct event* event_new (int ,int,int,int *,TYPE_1__*) ;
 int exit (int) ;
 int msyslog (int ,char*) ;
 int worker_resp_cb ;

void sntp_addremove_fd(
 int fd,
 int is_pipe,
 int remove_it
 )
{
 u_int idx;
 blocking_child *c;
 struct event * ev;
 c = ((void*)0);
 for (idx = 0; idx < blocking_children_alloc; idx++) {
  c = blocking_children[idx];
  if (((void*)0) == c)
   continue;
  if (fd == c->resp_read_pipe)
   break;
 }
 if (idx == blocking_children_alloc)
  return;

 if (remove_it) {
  ev = c->resp_read_ctx;
  c->resp_read_ctx = ((void*)0);
  event_del(ev);
  event_free(ev);

  return;
 }

 ev = event_new(base, fd, EV_READ | EV_PERSIST,
         &worker_resp_cb, c);
 if (((void*)0) == ev) {
  msyslog(LOG_ERR,
   "sntp_addremove_fd: event_new(base, fd) failed!");
  return;
 }
 c->resp_read_ctx = ev;
 event_add(ev, ((void*)0));
}
