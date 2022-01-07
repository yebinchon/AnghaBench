
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef scalar_t__ time_t ;


 scalar_t__ NTTIME_EPOCH ;

__attribute__((used)) static time_t
nt2unixtime(uint64_t t)
{
    t = ((t - (uint64_t)NTTIME_EPOCH) / (uint64_t)10000000);
    if (t > (((uint64_t)(time_t)(~(uint64_t)0)) >> 1))
 return 0;
    return (time_t)t;
}
