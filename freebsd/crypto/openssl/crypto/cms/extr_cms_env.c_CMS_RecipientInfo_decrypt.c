
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int type; } ;
typedef TYPE_1__ CMS_RecipientInfo ;
typedef int CMS_ContentInfo ;


 int CMS_F_CMS_RECIPIENTINFO_DECRYPT ;



 int CMS_R_UNSUPPORTED_RECIPIENTINFO_TYPE ;
 int CMSerr (int ,int ) ;
 int cms_RecipientInfo_kekri_decrypt (int *,TYPE_1__*) ;
 int cms_RecipientInfo_ktri_decrypt (int *,TYPE_1__*) ;
 int cms_RecipientInfo_pwri_crypt (int *,TYPE_1__*,int ) ;

int CMS_RecipientInfo_decrypt(CMS_ContentInfo *cms, CMS_RecipientInfo *ri)
{
    switch (ri->type) {
    case 128:
        return cms_RecipientInfo_ktri_decrypt(cms, ri);

    case 130:
        return cms_RecipientInfo_kekri_decrypt(cms, ri);

    case 129:
        return cms_RecipientInfo_pwri_crypt(cms, ri, 0);

    default:
        CMSerr(CMS_F_CMS_RECIPIENTINFO_DECRYPT,
               CMS_R_UNSUPPORTED_RECIPIENTINFO_TYPE);
        return 0;
    }
}
