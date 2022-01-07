
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct event_overlapped {int overlapped; } ;
struct event_iocp_port {int port; } ;
typedef int ev_uintptr_t ;
typedef int ev_uint32_t ;
typedef scalar_t__ BOOL ;


 scalar_t__ PostQueuedCompletionStatus (int ,int ,int ,int *) ;

int
event_iocp_activate_overlapped_(
    struct event_iocp_port *port, struct event_overlapped *o,
    ev_uintptr_t key, ev_uint32_t n)
{
 BOOL r;

 r = PostQueuedCompletionStatus(port->port, n, key, &o->overlapped);
 return (r==0) ? -1 : 0;
}
