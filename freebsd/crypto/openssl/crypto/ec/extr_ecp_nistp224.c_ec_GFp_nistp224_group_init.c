
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int a_is_minus3; } ;
typedef TYPE_1__ EC_GROUP ;


 int ec_GFp_simple_group_init (TYPE_1__*) ;

int ec_GFp_nistp224_group_init(EC_GROUP *group)
{
    int ret;
    ret = ec_GFp_simple_group_init(group);
    group->a_is_minus3 = 1;
    return ret;
}
