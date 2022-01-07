
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {long long quot; long long rem; } ;
typedef TYPE_1__ lldiv_t ;



lldiv_t
lldiv(long long numer, long long denom)
{
 lldiv_t retval;

 retval.quot = numer / denom;
 retval.rem = numer % denom;






 return (retval);
}
