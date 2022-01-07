
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {unsigned int* poly; } ;
typedef TYPE_1__ EC_GROUP ;


 int EC_F_EC_GROUP_GET_TRINOMIAL_BASIS ;
 int EC_GROUP_method_of (TYPE_1__ const*) ;
 scalar_t__ EC_METHOD_get_field_type (int ) ;
 int ECerr (int ,int ) ;
 int ERR_R_SHOULD_NOT_HAVE_BEEN_CALLED ;
 scalar_t__ NID_X9_62_characteristic_two_field ;

int EC_GROUP_get_trinomial_basis(const EC_GROUP *group, unsigned int *k)
{
    if (group == ((void*)0))
        return 0;

    if (EC_METHOD_get_field_type(EC_GROUP_method_of(group)) !=
        NID_X9_62_characteristic_two_field
        || !((group->poly[0] != 0) && (group->poly[1] != 0)
             && (group->poly[2] == 0))) {
        ECerr(EC_F_EC_GROUP_GET_TRINOMIAL_BASIS,
              ERR_R_SHOULD_NOT_HAVE_BEEN_CALLED);
        return 0;
    }

    if (k)
        *k = group->poly[1];

    return 1;
}
