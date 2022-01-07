
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int * field_data2; int * field_data1; } ;
typedef TYPE_1__ EC_GROUP ;


 int BN_MONT_CTX_free (int *) ;
 int BN_clear_free (int *) ;
 int ec_GFp_simple_group_clear_finish (TYPE_1__*) ;

void ec_GFp_mont_group_clear_finish(EC_GROUP *group)
{
    BN_MONT_CTX_free(group->field_data1);
    group->field_data1 = ((void*)0);
    BN_clear_free(group->field_data2);
    group->field_data2 = ((void*)0);
    ec_GFp_simple_group_clear_finish(group);
}
