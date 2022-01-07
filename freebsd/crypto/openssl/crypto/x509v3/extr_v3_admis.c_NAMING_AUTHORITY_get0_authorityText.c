
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int const* namingAuthorityText; } ;
typedef TYPE_1__ NAMING_AUTHORITY ;
typedef int ASN1_STRING ;



const ASN1_STRING *NAMING_AUTHORITY_get0_authorityText(
    const NAMING_AUTHORITY *n)
{
    return n->namingAuthorityText;
}
