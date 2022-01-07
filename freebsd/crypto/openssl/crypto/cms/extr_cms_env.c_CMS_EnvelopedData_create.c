
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int encryptedContentInfo; } ;
typedef int EVP_CIPHER ;
typedef TYPE_1__ CMS_EnvelopedData ;
typedef int CMS_ContentInfo ;


 int CMS_ContentInfo_free (int *) ;
 int * CMS_ContentInfo_new () ;
 int CMS_F_CMS_ENVELOPEDDATA_CREATE ;
 int CMSerr (int ,int ) ;
 int ERR_R_MALLOC_FAILURE ;
 int cms_EncryptedContent_init (int ,int const*,int *,int ) ;
 TYPE_1__* cms_enveloped_data_init (int *) ;

CMS_ContentInfo *CMS_EnvelopedData_create(const EVP_CIPHER *cipher)
{
    CMS_ContentInfo *cms;
    CMS_EnvelopedData *env;
    cms = CMS_ContentInfo_new();
    if (cms == ((void*)0))
        goto merr;
    env = cms_enveloped_data_init(cms);
    if (env == ((void*)0))
        goto merr;
    if (!cms_EncryptedContent_init(env->encryptedContentInfo,
                                   cipher, ((void*)0), 0))
        goto merr;
    return cms;
 merr:
    CMS_ContentInfo_free(cms);
    CMSerr(CMS_F_CMS_ENVELOPEDDATA_CREATE, ERR_R_MALLOC_FAILURE);
    return ((void*)0);
}
