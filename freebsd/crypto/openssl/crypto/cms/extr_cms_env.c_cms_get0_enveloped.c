
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int * envelopedData; } ;
struct TYPE_5__ {TYPE_1__ d; int contentType; } ;
typedef int CMS_EnvelopedData ;
typedef TYPE_2__ CMS_ContentInfo ;


 int CMS_F_CMS_GET0_ENVELOPED ;
 int CMS_R_CONTENT_TYPE_NOT_ENVELOPED_DATA ;
 int CMSerr (int ,int ) ;
 scalar_t__ NID_pkcs7_enveloped ;
 scalar_t__ OBJ_obj2nid (int ) ;

CMS_EnvelopedData *cms_get0_enveloped(CMS_ContentInfo *cms)
{
    if (OBJ_obj2nid(cms->contentType) != NID_pkcs7_enveloped) {
        CMSerr(CMS_F_CMS_GET0_ENVELOPED,
               CMS_R_CONTENT_TYPE_NOT_ENVELOPED_DATA);
        return ((void*)0);
    }
    return cms->d.envelopedData;
}
