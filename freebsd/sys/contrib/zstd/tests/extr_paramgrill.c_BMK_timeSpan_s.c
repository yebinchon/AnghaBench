
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UTIL_time_t ;
typedef int U32 ;


 unsigned long long UTIL_clockSpanMicro (int const) ;

__attribute__((used)) static U32 BMK_timeSpan_s(const UTIL_time_t tStart)
{
    return (U32)(UTIL_clockSpanMicro(tStart) / 1000000ULL);
}
