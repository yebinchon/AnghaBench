
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint16_t ;
struct TYPE_4__ {int bdRingSize; } ;
struct TYPE_5__ {TYPE_1__ im; } ;
typedef TYPE_2__ t_FmPort ;



__attribute__((used)) static __inline__ uint16_t GetNextBdId(t_FmPort *p_FmPort, uint16_t id)
{
    if (id < p_FmPort->im.bdRingSize-1)
        return (uint16_t)(id+1);
    else
        return 0;
}
