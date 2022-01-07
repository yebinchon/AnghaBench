
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int const* namingAuthorityUrl; } ;
typedef TYPE_1__ NAMING_AUTHORITY ;
typedef int ASN1_IA5STRING ;



const ASN1_IA5STRING *NAMING_AUTHORITY_get0_authorityURL(
    const NAMING_AUTHORITY *n)
{
    return n->namingAuthorityUrl;
}
