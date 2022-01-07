
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FICL_INT ;
typedef int DPUNS ;
typedef int DPINT ;


 int ficlLongMul (int ,int ) ;
 int m64CastUI (int ) ;
 int m64Negate (int ) ;

DPINT m64MulI(FICL_INT x, FICL_INT y)
{
    DPUNS prod;
    int sign = 1;

    if (x < 0)
    {
        sign = -sign;
        x = -x;
    }

    if (y < 0)
    {
        sign = -sign;
        y = -y;
    }

    prod = ficlLongMul(x, y);
    if (sign > 0)
        return m64CastUI(prod);
    else
        return m64Negate(m64CastUI(prod));
}
