
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int * field_data2; int * field_data1; } ;
typedef TYPE_1__ EC_GROUP ;


 int ec_GFp_simple_group_init (TYPE_1__*) ;

int ec_GFp_mont_group_init(EC_GROUP *group)
{
    int ok;

    ok = ec_GFp_simple_group_init(group);
    group->field_data1 = ((void*)0);
    group->field_data2 = ((void*)0);
    return ok;
}
