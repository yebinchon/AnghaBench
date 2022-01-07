
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int * signedData; } ;
struct TYPE_5__ {TYPE_1__ d; int contentType; } ;
typedef int CMS_SignedData ;
typedef TYPE_2__ CMS_ContentInfo ;


 int CMS_F_CMS_GET0_SIGNED ;
 int CMS_R_CONTENT_TYPE_NOT_SIGNED_DATA ;
 int CMSerr (int ,int ) ;
 scalar_t__ NID_pkcs7_signed ;
 scalar_t__ OBJ_obj2nid (int ) ;

__attribute__((used)) static CMS_SignedData *cms_get0_signed(CMS_ContentInfo *cms)
{
    if (OBJ_obj2nid(cms->contentType) != NID_pkcs7_signed) {
        CMSerr(CMS_F_CMS_GET0_SIGNED, CMS_R_CONTENT_TYPE_NOT_SIGNED_DATA);
        return ((void*)0);
    }
    return cms->d.signedData;
}
