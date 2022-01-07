
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int field; } ;
typedef TYPE_1__ EC_GROUP ;


 int BN_num_bits (int ) ;

int ec_GF2m_simple_group_get_degree(const EC_GROUP *group)
{
    return BN_num_bits(group->field) - 1;
}
