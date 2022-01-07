
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int signedAttrs; } ;
typedef TYPE_1__ CMS_SignerInfo ;
typedef int ASN1_OBJECT ;


 void* X509at_get0_data_by_OBJ (int ,int const*,int,int) ;

void *CMS_signed_get0_data_by_OBJ(CMS_SignerInfo *si, const ASN1_OBJECT *oid,
                                  int lastpos, int type)
{
    return X509at_get0_data_by_OBJ(si->signedAttrs, oid, lastpos, type);
}
