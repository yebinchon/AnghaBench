
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int* poly; int b; int a; int field; } ;
typedef TYPE_1__ EC_GROUP ;


 int BN_clear_free (int ) ;

void ec_GF2m_simple_group_clear_finish(EC_GROUP *group)
{
    BN_clear_free(group->field);
    BN_clear_free(group->a);
    BN_clear_free(group->b);
    group->poly[0] = 0;
    group->poly[1] = 0;
    group->poly[2] = 0;
    group->poly[3] = 0;
    group->poly[4] = 0;
    group->poly[5] = -1;
}
