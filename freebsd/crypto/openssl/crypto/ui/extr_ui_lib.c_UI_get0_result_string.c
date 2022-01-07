
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int type; char const* result_buf; } ;
typedef TYPE_1__ UI_STRING ;
const char *UI_get0_result_string(UI_STRING *uis)
{
    switch (uis->type) {
    case 129:
    case 128:
        return uis->result_buf;
    case 130:
    case 133:
    case 131:
    case 132:
        break;
    }
    return ((void*)0);
}
