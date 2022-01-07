
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct os_time {void* usec; void* sec; } ;
typedef void* os_time_t ;
typedef int ULONGLONG ;
struct TYPE_6__ {int dwHighDateTime; int dwLowDateTime; } ;
struct TYPE_5__ {int QuadPart; int HighPart; int LowPart; } ;
typedef int SYSTEMTIME ;
typedef TYPE_1__ LARGE_INTEGER ;
typedef TYPE_2__ FILETIME ;


 int EPOCHFILETIME ;
 int GetSystemTime (int *) ;
 int GetSystemTimeAsFileTime (TYPE_2__*) ;
 int SystemTimeToFileTime (int *,TYPE_2__*) ;

int os_get_time(struct os_time *t)
{

 FILETIME ft;
 LARGE_INTEGER li;
 ULONGLONG tt;







 GetSystemTimeAsFileTime(&ft);

 li.LowPart = ft.dwLowDateTime;
 li.HighPart = ft.dwHighDateTime;
 tt = (li.QuadPart - (116444736000000000ULL)) / 10;
 t->sec = (os_time_t) (tt / 1000000);
 t->usec = (os_time_t) (tt % 1000000);

 return 0;
}
