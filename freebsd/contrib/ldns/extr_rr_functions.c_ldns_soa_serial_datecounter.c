
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;
typedef int time_t ;
struct tm {int dummy; } ;
typedef scalar_t__ int32_t ;


 scalar_t__ atoi (char*) ;
 int ldns_time (int *) ;
 int localtime_r (int *,struct tm*) ;
 int strftime (char*,int,char*,int ) ;

uint32_t ldns_soa_serial_datecounter(uint32_t s, void *data)
{
 struct tm tm;
 char s_str[11];
 int32_t new_s;
 time_t t = data ? (time_t) (intptr_t) data : ldns_time(((void*)0));

 (void) strftime(s_str, 11, "%Y%m%d00", localtime_r(&t, &tm));
 new_s = (int32_t) atoi(s_str);
 return new_s - ((int32_t) s) <= 0 ? s+1 : ((uint32_t) new_s);
}
