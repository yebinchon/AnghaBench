
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {TYPE_1__* ktri; } ;
struct TYPE_7__ {scalar_t__ type; TYPE_2__ d; } ;
struct TYPE_5__ {int * pkey; } ;
typedef int EVP_PKEY ;
typedef TYPE_3__ CMS_RecipientInfo ;


 int CMS_F_CMS_RECIPIENTINFO_SET0_PKEY ;
 scalar_t__ CMS_RECIPINFO_TRANS ;
 int CMS_R_NOT_KEY_TRANSPORT ;
 int CMSerr (int ,int ) ;
 int EVP_PKEY_free (int *) ;

int CMS_RecipientInfo_set0_pkey(CMS_RecipientInfo *ri, EVP_PKEY *pkey)
{
    if (ri->type != CMS_RECIPINFO_TRANS) {
        CMSerr(CMS_F_CMS_RECIPIENTINFO_SET0_PKEY, CMS_R_NOT_KEY_TRANSPORT);
        return 0;
    }
    EVP_PKEY_free(ri->d.ktri->pkey);
    ri->d.ktri->pkey = pkey;
    return 1;
}
