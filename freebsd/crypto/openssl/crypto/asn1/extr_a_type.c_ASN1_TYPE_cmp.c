
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int boolean; scalar_t__ ptr; int object; } ;
struct TYPE_6__ {int type; TYPE_1__ value; } ;
typedef TYPE_2__ ASN1_TYPE ;
typedef int ASN1_STRING ;


 int ASN1_STRING_cmp (int *,int *) ;
 int OBJ_cmp (int ,int ) ;
int ASN1_TYPE_cmp(const ASN1_TYPE *a, const ASN1_TYPE *b)
{
    int result = -1;

    if (!a || !b || a->type != b->type)
        return -1;

    switch (a->type) {
    case 139:
        result = OBJ_cmp(a->value.object, b->value.object);
        break;
    case 148:
        result = a->value.boolean - b->value.boolean;
        break;
    case 141:
        result = 0;
        break;
    case 142:
    case 147:
    case 150:
    case 138:
    case 135:
    case 134:
    case 140:
    case 136:
    case 133:
    case 129:
    case 143:
    case 131:
    case 146:
    case 144:
    case 128:
    case 145:
    case 132:
    case 149:
    case 130:
    case 137:
    default:
        result = ASN1_STRING_cmp((ASN1_STRING *)a->value.ptr,
                                 (ASN1_STRING *)b->value.ptr);
        break;
    }

    return result;
}
