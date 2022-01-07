
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_29__ TYPE_9__ ;
typedef struct TYPE_28__ TYPE_8__ ;
typedef struct TYPE_27__ TYPE_7__ ;
typedef struct TYPE_26__ TYPE_6__ ;
typedef struct TYPE_25__ TYPE_5__ ;
typedef struct TYPE_24__ TYPE_4__ ;
typedef struct TYPE_23__ TYPE_3__ ;
typedef struct TYPE_22__ TYPE_2__ ;
typedef struct TYPE_21__ TYPE_1__ ;
typedef struct TYPE_20__ TYPE_14__ ;
typedef struct TYPE_19__ TYPE_13__ ;
typedef struct TYPE_18__ TYPE_12__ ;
typedef struct TYPE_17__ TYPE_11__ ;
typedef struct TYPE_16__ TYPE_10__ ;


struct TYPE_29__ {int * eContentType; } ;
struct TYPE_28__ {TYPE_7__* encryptedContentInfo; } ;
struct TYPE_27__ {int * contentType; } ;
struct TYPE_26__ {TYPE_5__* encapContentInfo; } ;
struct TYPE_25__ {int * eContentType; } ;
struct TYPE_24__ {TYPE_3__* encryptedContentInfo; } ;
struct TYPE_23__ {int * contentType; } ;
struct TYPE_22__ {TYPE_1__* encapContentInfo; } ;
struct TYPE_21__ {int * eContentType; } ;
struct TYPE_19__ {TYPE_12__* compressedData; TYPE_10__* authenticatedData; TYPE_8__* encryptedData; TYPE_6__* digestedData; TYPE_4__* envelopedData; TYPE_2__* signedData; } ;
struct TYPE_20__ {TYPE_13__ d; int contentType; } ;
struct TYPE_18__ {TYPE_11__* encapContentInfo; } ;
struct TYPE_17__ {int * eContentType; } ;
struct TYPE_16__ {TYPE_9__* encapContentInfo; } ;
typedef TYPE_14__ CMS_ContentInfo ;
typedef int ASN1_OBJECT ;


 int CMS_F_CMS_GET0_ECONTENT_TYPE ;
 int CMS_R_UNSUPPORTED_CONTENT_TYPE ;
 int CMSerr (int ,int ) ;






 int OBJ_obj2nid (int ) ;

__attribute__((used)) static ASN1_OBJECT **cms_get0_econtent_type(CMS_ContentInfo *cms)
{
    switch (OBJ_obj2nid(cms->contentType)) {

    case 128:
        return &cms->d.signedData->encapContentInfo->eContentType;

    case 129:
        return &cms->d.envelopedData->encryptedContentInfo->contentType;

    case 131:
        return &cms->d.digestedData->encapContentInfo->eContentType;

    case 130:
        return &cms->d.encryptedData->encryptedContentInfo->contentType;

    case 133:
        return &cms->d.authenticatedData->encapContentInfo->eContentType;

    case 132:
        return &cms->d.compressedData->encapContentInfo->eContentType;

    default:
        CMSerr(CMS_F_CMS_GET0_ECONTENT_TYPE, CMS_R_UNSUPPORTED_CONTENT_TYPE);
        return ((void*)0);

    }
}
