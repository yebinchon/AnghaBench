
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int result_minsize; } ;
struct TYPE_6__ {TYPE_1__ string_data; } ;
struct TYPE_7__ {int type; TYPE_2__ _; } ;
typedef TYPE_3__ UI_STRING ;
int UI_get_result_minsize(UI_STRING *uis)
{
    switch (uis->type) {
    case 129:
    case 128:
        return uis->_.string_data.result_minsize;
    case 130:
    case 131:
    case 132:
    case 133:
        break;
    }
    return -1;
}
