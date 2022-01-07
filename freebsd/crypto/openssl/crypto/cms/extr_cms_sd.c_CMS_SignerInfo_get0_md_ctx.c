
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * mctx; } ;
typedef int EVP_MD_CTX ;
typedef TYPE_1__ CMS_SignerInfo ;



EVP_MD_CTX *CMS_SignerInfo_get0_md_ctx(CMS_SignerInfo *si)
{
    return si->mctx;
}
