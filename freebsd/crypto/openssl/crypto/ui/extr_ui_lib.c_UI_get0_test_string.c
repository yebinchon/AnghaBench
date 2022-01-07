
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {char const* test_buf; } ;
struct TYPE_6__ {TYPE_1__ string_data; } ;
struct TYPE_7__ {int type; TYPE_2__ _; } ;
typedef TYPE_3__ UI_STRING ;
const char *UI_get0_test_string(UI_STRING *uis)
{
    switch (uis->type) {
    case 128:
        return uis->_.string_data.test_buf;
    case 130:
    case 133:
    case 131:
    case 132:
    case 129:
        break;
    }
    return ((void*)0);
}
