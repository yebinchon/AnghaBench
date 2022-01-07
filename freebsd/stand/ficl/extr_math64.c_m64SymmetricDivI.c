
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int UNSQR ;
struct TYPE_4__ {int quot; int rem; } ;
typedef TYPE_1__ INTQR ;
typedef int FICL_UNS ;
typedef scalar_t__ FICL_INT ;
typedef int DPINT ;


 int ficlLongDiv (int ,int ) ;
 int m64CastIU (int ) ;
 TYPE_1__ m64CastQRUI (int ) ;
 scalar_t__ m64IsNegative (int ) ;
 int m64Negate (int ) ;

INTQR m64SymmetricDivI(DPINT num, FICL_INT den)
{
    INTQR qr;
    UNSQR uqr;
    int signRem = 1;
    int signQuot = 1;

    if (m64IsNegative(num))
    {
        num = m64Negate(num);
        signRem = -signRem;
        signQuot = -signQuot;
    }

    if (den < 0)
    {
        den = -den;
        signQuot = -signQuot;
    }

    uqr = ficlLongDiv(m64CastIU(num), (FICL_UNS)den);
    qr = m64CastQRUI(uqr);
    if (signRem < 0)
        qr.rem = -qr.rem;

    if (signQuot < 0)
        qr.quot = -qr.quot;

    return qr;
}
