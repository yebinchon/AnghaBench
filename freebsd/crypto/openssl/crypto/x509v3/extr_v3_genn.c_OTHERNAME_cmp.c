
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int value; int type_id; } ;
typedef TYPE_1__ OTHERNAME ;


 int ASN1_TYPE_cmp (int ,int ) ;
 int OBJ_cmp (int ,int ) ;

int OTHERNAME_cmp(OTHERNAME *a, OTHERNAME *b)
{
    int result = -1;

    if (!a || !b)
        return -1;

    if ((result = OBJ_cmp(a->type_id, b->type_id)) != 0)
        return result;

    result = ASN1_TYPE_cmp(a->value, b->value);
    return result;
}
