
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int flags; int length; int data; int type; } ;
typedef TYPE_1__ ASN1_STRING ;


 int ASN1_STRING_FLAG_EMBED ;
 int ASN1_STRING_set (TYPE_1__*,int ,int ) ;

int ASN1_STRING_copy(ASN1_STRING *dst, const ASN1_STRING *str)
{
    if (str == ((void*)0))
        return 0;
    dst->type = str->type;
    if (!ASN1_STRING_set(dst, str->data, str->length))
        return 0;

    dst->flags &= ASN1_STRING_FLAG_EMBED;
    dst->flags |= str->flags & ~ASN1_STRING_FLAG_EMBED;
    return 1;
}
