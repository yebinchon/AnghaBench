
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef enum UI_string_types { ____Placeholder_UI_string_types } UI_string_types ;
struct TYPE_3__ {int type; } ;
typedef TYPE_1__ UI_STRING ;



enum UI_string_types UI_get_string_type(UI_STRING *uis)
{
    return uis->type;
}
