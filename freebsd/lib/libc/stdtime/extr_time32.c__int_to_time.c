
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int time_t ;
typedef int __int32_t ;


 int _time32_to_time (int) ;

time_t
_int_to_time(int tint)
{
    if (sizeof(int) == sizeof(__int32_t))
 return(_time32_to_time(tint));
    return((time_t)tint);
}
