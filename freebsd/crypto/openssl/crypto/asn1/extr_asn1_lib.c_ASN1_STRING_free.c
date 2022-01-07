
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int flags; } ;
typedef TYPE_1__ ASN1_STRING ;


 int ASN1_STRING_FLAG_EMBED ;
 int asn1_string_embed_free (TYPE_1__*,int) ;

void ASN1_STRING_free(ASN1_STRING *a)
{
    if (a == ((void*)0))
        return;
    asn1_string_embed_free(a, a->flags & ASN1_STRING_FLAG_EMBED);
}
