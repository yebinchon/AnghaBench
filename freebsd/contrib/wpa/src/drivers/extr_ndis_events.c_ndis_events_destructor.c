
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ndis_events_data {int pLoc; int pSvc; int event_avail; int write_pipe; int read_pipe; } ;


 int CloseHandle (int ) ;
 int CoUninitialize () ;
 int IWbemLocator_Release (int ) ;
 int IWbemServices_Release (int ) ;
 scalar_t__ wmi_refcnt ;

__attribute__((used)) static void ndis_events_destructor(struct ndis_events_data *events)
{
 CloseHandle(events->read_pipe);
 CloseHandle(events->write_pipe);
 CloseHandle(events->event_avail);
 IWbemServices_Release(events->pSvc);
 IWbemLocator_Release(events->pLoc);
 if (--wmi_refcnt == 0)
  CoUninitialize();
}
