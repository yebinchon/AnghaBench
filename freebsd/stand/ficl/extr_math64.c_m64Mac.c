
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ lo; scalar_t__ hi; } ;
typedef scalar_t__ FICL_UNS ;
typedef TYPE_1__ DPUNS ;


 TYPE_1__ ficlLongMul (scalar_t__,scalar_t__) ;

DPUNS m64Mac(DPUNS u, FICL_UNS mul, FICL_UNS add)
{
    DPUNS resultLo = ficlLongMul(u.lo, mul);
    DPUNS resultHi = ficlLongMul(u.hi, mul);
    resultLo.hi += resultHi.lo;
    resultHi.lo = resultLo.lo + add;

    if (resultHi.lo < resultLo.lo)
        resultLo.hi++;

    resultLo.lo = resultHi.lo;

    return resultLo;
}
