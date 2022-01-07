
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct _SYSTEM_INFO {int dwAllocationGranularity; } ;
typedef int DWORD ;


 int GetSystemInfo (struct _SYSTEM_INFO*) ;

__attribute__((used)) static DWORD granularity(void)
{
 struct _SYSTEM_INFO sysinfo;

 GetSystemInfo(&sysinfo);

 return sysinfo.dwAllocationGranularity;
}
