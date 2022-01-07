
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int uint32_t ;
struct bintime {int frac; scalar_t__ sec; } ;
typedef int UINT64 ;


 int binuptime (struct bintime*) ;

UINT64
AcpiOsGetTimer(void)
{
    struct bintime bt;
    UINT64 t;

    binuptime(&bt);
    t = (uint64_t)bt.sec * 10000000;
    t += ((uint64_t)10000000 * (uint32_t)(bt.frac >> 32)) >> 32;

    return (t);
}
