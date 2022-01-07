
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct event_base {int dummy; } ;
struct evdns_server_port {int refcnt; int lock; int event; int socket; struct event_base* event_base; int * pending_replies; void* user_data; int user_callback; scalar_t__ closing; scalar_t__ choked; } ;
typedef int evutil_socket_t ;
typedef int evdns_request_callback_fn_type ;


 int EVTHREAD_ALLOC_LOCK (int ,int ) ;
 int EVTHREAD_LOCKTYPE_RECURSIVE ;
 int EV_PERSIST ;
 int EV_READ ;
 scalar_t__ event_add (int *,int *) ;
 int event_assign (int *,struct event_base*,int ,int,int ,struct evdns_server_port*) ;
 int memset (struct evdns_server_port*,int ,int) ;
 int mm_free (struct evdns_server_port*) ;
 struct evdns_server_port* mm_malloc (int) ;
 int server_port_ready_callback ;

struct evdns_server_port *
evdns_add_server_port_with_base(struct event_base *base, evutil_socket_t socket, int flags, evdns_request_callback_fn_type cb, void *user_data)
{
 struct evdns_server_port *port;
 if (flags)
  return ((void*)0);
 if (!(port = mm_malloc(sizeof(struct evdns_server_port))))
  return ((void*)0);
 memset(port, 0, sizeof(struct evdns_server_port));


 port->socket = socket;
 port->refcnt = 1;
 port->choked = 0;
 port->closing = 0;
 port->user_callback = cb;
 port->user_data = user_data;
 port->pending_replies = ((void*)0);
 port->event_base = base;

 event_assign(&port->event, port->event_base,
     port->socket, EV_READ | EV_PERSIST,
     server_port_ready_callback, port);
 if (event_add(&port->event, ((void*)0)) < 0) {
  mm_free(port);
  return ((void*)0);
 }
 EVTHREAD_ALLOC_LOCK(port->lock, EVTHREAD_LOCKTYPE_RECURSIVE);
 return port;
}
