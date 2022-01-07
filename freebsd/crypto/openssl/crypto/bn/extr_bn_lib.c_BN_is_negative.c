
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ neg; } ;
typedef TYPE_1__ BIGNUM ;



int BN_is_negative(const BIGNUM *a)
{
    return (a->neg != 0);
}
