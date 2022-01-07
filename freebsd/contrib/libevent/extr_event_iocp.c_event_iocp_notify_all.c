
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct event_iocp_port {int n_threads; int port; } ;


 int NOTIFICATION_KEY ;
 int PostQueuedCompletionStatus (int ,int ,int ,int *) ;

__attribute__((used)) static int
event_iocp_notify_all(struct event_iocp_port *port)
{
 int i, r, ok=1;
 for (i=0; i<port->n_threads; ++i) {
  r = PostQueuedCompletionStatus(port->port, 0, NOTIFICATION_KEY,
      ((void*)0));
  if (!r)
   ok = 0;
 }
 return ok ? 0 : -1;
}
