
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void* time_t ;
struct tm {int dummy; } ;
typedef void* int64_t ;
typedef int int32_t ;


 struct tm* gmtime_r (void**,struct tm*) ;
 struct tm* ldns_gmtime64_r (void*,struct tm*) ;
 void* ldns_serial_arithmitics_time (int ,void*) ;

struct tm *
ldns_serial_arithmitics_gmtime_r(int32_t time, time_t now, struct tm *result)
{

 int64_t secs_since_epoch = ldns_serial_arithmitics_time(time, now);
 return ldns_gmtime64_r(secs_since_epoch, result);




}
