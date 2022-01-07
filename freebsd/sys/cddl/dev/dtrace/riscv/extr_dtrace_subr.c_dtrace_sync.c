
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int dtrace_xcall_t ;


 int DTRACE_CPUALL ;
 scalar_t__ dtrace_sync_func ;
 int dtrace_xcall (int ,int ,int *) ;

void
dtrace_sync(void)
{

 dtrace_xcall(DTRACE_CPUALL, (dtrace_xcall_t)dtrace_sync_func, ((void*)0));
}
