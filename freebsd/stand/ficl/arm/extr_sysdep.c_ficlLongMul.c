
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint64_t ;
typedef void* uint32_t ;
struct TYPE_3__ {void* lo; void* hi; } ;
typedef scalar_t__ FICL_UNS ;
typedef TYPE_1__ DPUNS ;



DPUNS ficlLongMul(FICL_UNS x, FICL_UNS y)
{
    DPUNS q;
    uint64_t qx;

    qx = (uint64_t)x * (uint64_t) y;

    q.hi = (uint32_t)( qx >> 32 );
    q.lo = (uint32_t)( qx & 0xFFFFFFFFL);

    return q;
}
