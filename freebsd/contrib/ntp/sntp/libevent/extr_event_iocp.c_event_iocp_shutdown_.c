
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct event_iocp_port {int shutdown; int n_live_threads; int lock; int shutdownSemaphore; } ;
typedef long DWORD ;


 int EnterCriticalSection (int *) ;
 long INFINITE ;
 int LeaveCriticalSection (int *) ;
 int WaitForSingleObject (int ,long) ;
 int event_iocp_notify_all (struct event_iocp_port*) ;
 int event_iocp_port_unlock_and_free_ (struct event_iocp_port*) ;

int
event_iocp_shutdown_(struct event_iocp_port *port, long waitMsec)
{
 DWORD ms = INFINITE;
 int n;

 EnterCriticalSection(&port->lock);
 port->shutdown = 1;
 LeaveCriticalSection(&port->lock);
 event_iocp_notify_all(port);

 if (waitMsec >= 0)
  ms = waitMsec;

 WaitForSingleObject(port->shutdownSemaphore, ms);
 EnterCriticalSection(&port->lock);
 n = port->n_live_threads;
 LeaveCriticalSection(&port->lock);
 if (n == 0) {
  event_iocp_port_unlock_and_free_(port);
  return 0;
 } else {
  return -1;
 }
}
