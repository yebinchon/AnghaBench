
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ time_t ;
typedef int __int64_t ;


 long _time_to_time64 (scalar_t__) ;

long
_time_to_long(time_t t)
{
    if (sizeof(long) == sizeof(__int64_t))
 return(_time_to_time64(t));
    return((long)t);
}
