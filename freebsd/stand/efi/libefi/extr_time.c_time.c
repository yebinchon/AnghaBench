
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tv ;
typedef int time_t ;
struct timeval {int tv_sec; } ;


 int EFI_GetTimeOfDay (struct timeval*,int *) ;
 int memset (struct timeval*,int ,int) ;

time_t
time(time_t *tloc)
{
 struct timeval tv;

 memset(&tv, 0, sizeof(tv));
 EFI_GetTimeOfDay(&tv, ((void*)0));

 if (tloc)
  *tloc = tv.tv_sec;
 return (tv.tv_sec);
}
