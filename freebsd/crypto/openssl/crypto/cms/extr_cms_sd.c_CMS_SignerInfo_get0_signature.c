
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * signature; } ;
typedef TYPE_1__ CMS_SignerInfo ;
typedef int ASN1_OCTET_STRING ;



ASN1_OCTET_STRING *CMS_SignerInfo_get0_signature(CMS_SignerInfo *si)
{
    return si->signature;
}
