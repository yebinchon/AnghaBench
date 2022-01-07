
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int Z; } ;
typedef TYPE_1__ EC_POINT ;
typedef int EC_GROUP ;


 int BN_is_zero (int ) ;

int ec_GFp_simple_is_at_infinity(const EC_GROUP *group, const EC_POINT *point)
{
    return BN_is_zero(point->Z);
}
