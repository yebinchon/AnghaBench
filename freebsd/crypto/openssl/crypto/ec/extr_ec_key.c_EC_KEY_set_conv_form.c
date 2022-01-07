
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int point_conversion_form_t ;
struct TYPE_3__ {int * group; int conv_form; } ;
typedef TYPE_1__ EC_KEY ;


 int EC_GROUP_set_point_conversion_form (int *,int ) ;

void EC_KEY_set_conv_form(EC_KEY *key, point_conversion_form_t cform)
{
    key->conv_form = cform;
    if (key->group != ((void*)0))
        EC_GROUP_set_point_conversion_form(key->group, cform);
}
