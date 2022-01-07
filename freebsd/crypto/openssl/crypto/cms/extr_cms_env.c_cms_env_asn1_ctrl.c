
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_6__ ;
typedef struct TYPE_15__ TYPE_5__ ;
typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_13__ {TYPE_2__* kari; TYPE_1__* ktri; } ;
struct TYPE_16__ {scalar_t__ type; TYPE_3__ d; } ;
struct TYPE_15__ {TYPE_4__* ameth; } ;
struct TYPE_14__ {int (* pkey_ctrl ) (TYPE_5__*,int ,int,TYPE_6__*) ;} ;
struct TYPE_12__ {int * pctx; } ;
struct TYPE_11__ {TYPE_5__* pkey; } ;
typedef int EVP_PKEY_CTX ;
typedef TYPE_5__ EVP_PKEY ;
typedef TYPE_6__ CMS_RecipientInfo ;


 int ASN1_PKEY_CTRL_CMS_ENVELOPE ;
 int CMS_F_CMS_ENV_ASN1_CTRL ;
 scalar_t__ CMS_RECIPINFO_AGREE ;
 scalar_t__ CMS_RECIPINFO_TRANS ;
 int CMS_R_CTRL_FAILURE ;
 int CMS_R_NOT_SUPPORTED_FOR_THIS_KEY_TYPE ;
 int CMSerr (int ,int ) ;
 TYPE_5__* EVP_PKEY_CTX_get0_pkey (int *) ;
 int stub1 (TYPE_5__*,int ,int,TYPE_6__*) ;

int cms_env_asn1_ctrl(CMS_RecipientInfo *ri, int cmd)
{
    EVP_PKEY *pkey;
    int i;
    if (ri->type == CMS_RECIPINFO_TRANS)
        pkey = ri->d.ktri->pkey;
    else if (ri->type == CMS_RECIPINFO_AGREE) {
        EVP_PKEY_CTX *pctx = ri->d.kari->pctx;
        if (!pctx)
            return 0;
        pkey = EVP_PKEY_CTX_get0_pkey(pctx);
        if (!pkey)
            return 0;
    } else
        return 0;
    if (!pkey->ameth || !pkey->ameth->pkey_ctrl)
        return 1;
    i = pkey->ameth->pkey_ctrl(pkey, ASN1_PKEY_CTRL_CMS_ENVELOPE, cmd, ri);
    if (i == -2) {
        CMSerr(CMS_F_CMS_ENV_ASN1_CTRL,
               CMS_R_NOT_SUPPORTED_FOR_THIS_KEY_TYPE);
        return 0;
    }
    if (i <= 0) {
        CMSerr(CMS_F_CMS_ENV_ASN1_CTRL, CMS_R_CTRL_FAILURE);
        return 0;
    }
    return 1;
}
