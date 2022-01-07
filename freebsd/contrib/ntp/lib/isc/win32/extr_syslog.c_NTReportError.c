
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * HANDLE ;


 int BIND_ERR_MSG ;
 int DeregisterEventSource (int *) ;
 int EVENTLOG_ERROR_TYPE ;
 int * RegisterEventSource (int *,char const*) ;
 int ReportEvent (int *,int ,int ,int ,int *,int,int ,char const**,int *) ;

void
NTReportError(const char *name, const char *str) {
 HANDLE hNTAppLog = ((void*)0);
 const char *buf[1];

 buf[0] = str;

 hNTAppLog = RegisterEventSource(((void*)0), name);

 ReportEvent(hNTAppLog, EVENTLOG_ERROR_TYPE, 0,
      BIND_ERR_MSG, ((void*)0), 1, 0, buf, ((void*)0));

 DeregisterEventSource(hNTAppLog);
}
