
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void* time_t ;
struct tm {int dummy; } ;
typedef void* int64_t ;
typedef int int32_t ;


 struct tm* gmtime_r (void**,struct tm*) ;
 struct tm* sldns_gmtime64_r (void*,struct tm*) ;
 void* sldns_serial_arithmetics_time (int ,void*) ;

struct tm *
sldns_serial_arithmetics_gmtime_r(int32_t time, time_t now, struct tm *result)
{

 int64_t secs_since_epoch = sldns_serial_arithmetics_time(time, now);
 return sldns_gmtime64_r(secs_since_epoch, result);




}
