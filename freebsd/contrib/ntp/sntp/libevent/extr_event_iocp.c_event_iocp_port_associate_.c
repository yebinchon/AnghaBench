
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct event_iocp_port {int n_threads; int port; } ;
typedef scalar_t__ evutil_socket_t ;
typedef int ev_uintptr_t ;
typedef int HANDLE ;


 int CreateIoCompletionPort (int ,int ,int ,int ) ;

int
event_iocp_port_associate_(struct event_iocp_port *port, evutil_socket_t fd,
    ev_uintptr_t key)
{
 HANDLE h;
 h = CreateIoCompletionPort((HANDLE)fd, port->port, key, port->n_threads);
 if (!h)
  return -1;
 return 0;
}
