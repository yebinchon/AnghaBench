
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ndis_events_data {int ref; int write_pipe; int read_pipe; int * event_avail; } ;


 int CloseHandle (int ) ;
 int * CreateEvent (int *,int ,int ,int *) ;
 int CreatePipe (int *,int *,int *,int) ;
 int FALSE ;
 scalar_t__ GetLastError () ;
 int MSG_ERROR ;
 int TRUE ;
 int wpa_printf (int ,char*,int) ;

__attribute__((used)) static int ndis_events_constructor(struct ndis_events_data *events)
{
 events->ref = 1;

 if (!CreatePipe(&events->read_pipe, &events->write_pipe, ((void*)0), 512)) {
  wpa_printf(MSG_ERROR, "CreatePipe() failed: %d",
      (int) GetLastError());
  return -1;
 }
 events->event_avail = CreateEvent(((void*)0), TRUE, FALSE, ((void*)0));
 if (events->event_avail == ((void*)0)) {
  wpa_printf(MSG_ERROR, "CreateEvent() failed: %d",
      (int) GetLastError());
  CloseHandle(events->read_pipe);
  CloseHandle(events->write_pipe);
  return -1;
 }

 return 0;
}
