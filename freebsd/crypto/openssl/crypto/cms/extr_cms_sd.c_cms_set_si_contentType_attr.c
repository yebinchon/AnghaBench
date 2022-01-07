
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_8__ {TYPE_2__* signedData; } ;
struct TYPE_9__ {TYPE_3__ d; } ;
struct TYPE_7__ {TYPE_1__* encapContentInfo; } ;
struct TYPE_6__ {int * eContentType; } ;
typedef int CMS_SignerInfo ;
typedef TYPE_4__ CMS_ContentInfo ;
typedef int ASN1_OBJECT ;


 scalar_t__ CMS_signed_add1_attr_by_NID (int *,int ,int ,int *,int) ;
 int NID_pkcs9_contentType ;
 int V_ASN1_OBJECT ;

__attribute__((used)) static int cms_set_si_contentType_attr(CMS_ContentInfo *cms, CMS_SignerInfo *si)
{
    ASN1_OBJECT *ctype = cms->d.signedData->encapContentInfo->eContentType;


    return CMS_signed_add1_attr_by_NID(si, NID_pkcs9_contentType,
                                       V_ASN1_OBJECT, ctype, -1) > 0;
}
