
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * namingAuthorityText; } ;
typedef TYPE_1__ NAMING_AUTHORITY ;
typedef int ASN1_STRING ;


 int ASN1_IA5STRING_free (int *) ;

void NAMING_AUTHORITY_set0_authorityText(NAMING_AUTHORITY *n, ASN1_STRING* t)
{
    ASN1_IA5STRING_free(n->namingAuthorityText);
    n->namingAuthorityText = t;
}
