
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int time_t ;
typedef int __int32_t ;


 int _time32_to_time (long) ;

time_t
_long_to_time(long tlong)
{
    if (sizeof(long) == sizeof(__int32_t))
 return(_time32_to_time(tlong));
    return((time_t)tlong);
}
