
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int curve_name; } ;
typedef TYPE_1__ EC_GROUP ;



int EC_GROUP_get_curve_name(const EC_GROUP *group)
{
    return group->curve_name;
}
