
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {void* rid; void* ip; void* dirn; void* ia5; void* otherName; void* other; } ;
struct TYPE_5__ {int type; TYPE_1__ d; } ;
typedef TYPE_2__ GENERAL_NAME ;
void GENERAL_NAME_set0_value(GENERAL_NAME *a, int type, void *value)
{
    switch (type) {
    case 128:
    case 134:
        a->d.other = value;
        break;

    case 131:
        a->d.otherName = value;
        break;

    case 133:
    case 135:
    case 129:
        a->d.ia5 = value;
        break;

    case 136:
        a->d.dirn = value;
        break;

    case 132:
        a->d.ip = value;
        break;

    case 130:
        a->d.rid = value;
        break;
    }
    a->type = type;
}
