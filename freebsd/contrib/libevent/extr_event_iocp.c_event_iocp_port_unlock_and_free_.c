
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct event_iocp_port {struct event_iocp_port* threads; int shutdownSemaphore; int port; int lock; } ;


 int CloseHandle (int ) ;
 int DeleteCriticalSection (int *) ;
 int mm_free (struct event_iocp_port*) ;

__attribute__((used)) static void
event_iocp_port_unlock_and_free_(struct event_iocp_port *port)
{
 DeleteCriticalSection(&port->lock);
 CloseHandle(port->port);
 CloseHandle(port->shutdownSemaphore);
 mm_free(port->threads);
 mm_free(port);
}
