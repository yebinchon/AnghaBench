
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tm {void* tm_sec; void* tm_min; void* tm_hour; } ;
typedef void* int32_t ;


 void* priv_timesplit (void**,void*) ;

int32_t
ntpcal_daysec_to_tm(
 struct tm *utm,
 int32_t sec
 )
{
 int32_t days;
 int32_t ts[3];

 days = priv_timesplit(ts, sec);
 utm->tm_hour = ts[0];
 utm->tm_min = ts[1];
 utm->tm_sec = ts[2];

 return days;
}
