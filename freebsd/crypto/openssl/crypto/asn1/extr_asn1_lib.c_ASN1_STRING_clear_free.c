
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int flags; int length; scalar_t__ data; } ;
typedef TYPE_1__ ASN1_STRING ;


 int ASN1_STRING_FLAG_NDEF ;
 int ASN1_STRING_free (TYPE_1__*) ;
 int OPENSSL_cleanse (scalar_t__,int ) ;

void ASN1_STRING_clear_free(ASN1_STRING *a)
{
    if (a == ((void*)0))
        return;
    if (a->data && !(a->flags & ASN1_STRING_FLAG_NDEF))
        OPENSSL_cleanse(a->data, a->length);
    ASN1_STRING_free(a);
}
