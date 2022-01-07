
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int time_t ;
struct tm {int dummy; } ;


 char* asctime_r (int ,char*) ;
 int localtime_r (int const* const,struct tm*) ;

char *
ctime_r(const time_t *const timep, char *buf)
{
 struct tm mytm;

 return asctime_r(localtime_r(timep, &mytm), buf);
}
