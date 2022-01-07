
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int DPINT ;


 scalar_t__ m64IsNegative (int ) ;
 int m64Negate (int ) ;

DPINT m64Abs(DPINT x)
{
    if (m64IsNegative(x))
        x = m64Negate(x);

    return x;
}
