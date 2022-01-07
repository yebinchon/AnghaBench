
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int unsignedAttrs; } ;
typedef TYPE_1__ CMS_SignerInfo ;
typedef int ASN1_OBJECT ;


 void* X509at_get0_data_by_OBJ (int ,int *,int,int) ;

void *CMS_unsigned_get0_data_by_OBJ(CMS_SignerInfo *si, ASN1_OBJECT *oid,
                                    int lastpos, int type)
{
    return X509at_get0_data_by_OBJ(si->unsignedAttrs, oid, lastpos, type);
}
