
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct event_iocp_port {long ms; scalar_t__ n_live_threads; int lock; int shutdownSemaphore; scalar_t__ shutdown; int port; } ;
typedef scalar_t__ ULONG_PTR ;
typedef int OVERLAPPED ;
typedef int HANDLE ;
typedef int DWORD ;


 int EnterCriticalSection (int *) ;
 int GetQueuedCompletionStatus (int ,int *,scalar_t__*,int **,long) ;
 long INFINITE ;
 int LeaveCriticalSection (int *) ;
 scalar_t__ NOTIFICATION_KEY ;
 int ReleaseSemaphore (int ,int,int *) ;
 int event_warnx (char*) ;
 int handle_entry (int *,scalar_t__,int ,int) ;

__attribute__((used)) static void
loop(void *port_)
{
 struct event_iocp_port *port = port_;
 long ms = port->ms;
 HANDLE p = port->port;

 if (ms <= 0)
  ms = INFINITE;

 while (1) {
  OVERLAPPED *overlapped=((void*)0);
  ULONG_PTR key=0;
  DWORD bytes=0;
  int ok = GetQueuedCompletionStatus(p, &bytes, &key,
   &overlapped, ms);
  EnterCriticalSection(&port->lock);
  if (port->shutdown) {
   if (--port->n_live_threads == 0)
    ReleaseSemaphore(port->shutdownSemaphore, 1,
      ((void*)0));
   LeaveCriticalSection(&port->lock);
   return;
  }
  LeaveCriticalSection(&port->lock);

  if (key != NOTIFICATION_KEY && overlapped)
   handle_entry(overlapped, key, bytes, ok);
  else if (!overlapped)
   break;
 }
 event_warnx("GetQueuedCompletionStatus exited with no event.");
 EnterCriticalSection(&port->lock);
 if (--port->n_live_threads == 0)
  ReleaseSemaphore(port->shutdownSemaphore, 1, ((void*)0));
 LeaveCriticalSection(&port->lock);
}
