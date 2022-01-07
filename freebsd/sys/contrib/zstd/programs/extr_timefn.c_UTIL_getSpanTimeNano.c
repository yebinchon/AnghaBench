
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {unsigned long long tv_sec; scalar_t__ tv_nsec; } ;
typedef TYPE_1__ UTIL_time_t ;
typedef unsigned long long PTime ;


 TYPE_1__ UTIL_getSpanTime (TYPE_1__,TYPE_1__) ;

PTime UTIL_getSpanTimeNano(UTIL_time_t begin, UTIL_time_t end)
{
    UTIL_time_t const diff = UTIL_getSpanTime(begin, end);
    PTime nano = 0;
    nano += 1000000000ULL * diff.tv_sec;
    nano += diff.tv_nsec;
    return nano;
}
