
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int * sequence; } ;
struct TYPE_5__ {scalar_t__ type; TYPE_1__ value; } ;
typedef TYPE_2__ ASN1_TYPE ;
typedef int ASN1_ITEM ;


 void* ASN1_item_unpack (int *,int const*) ;
 scalar_t__ V_ASN1_SEQUENCE ;

void *ASN1_TYPE_unpack_sequence(const ASN1_ITEM *it, const ASN1_TYPE *t)
{
    if (t == ((void*)0) || t->type != V_ASN1_SEQUENCE || t->value.sequence == ((void*)0))
        return ((void*)0);
    return ASN1_item_unpack(t->value.sequence, it);
}
