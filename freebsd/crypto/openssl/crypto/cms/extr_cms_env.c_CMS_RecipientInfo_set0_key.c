
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {unsigned char* key; size_t keylen; } ;
struct TYPE_5__ {TYPE_3__* kekri; } ;
struct TYPE_6__ {scalar_t__ type; TYPE_1__ d; } ;
typedef TYPE_2__ CMS_RecipientInfo ;
typedef TYPE_3__ CMS_KEKRecipientInfo ;


 int CMS_F_CMS_RECIPIENTINFO_SET0_KEY ;
 scalar_t__ CMS_RECIPINFO_KEK ;
 int CMS_R_NOT_KEK ;
 int CMSerr (int ,int ) ;

int CMS_RecipientInfo_set0_key(CMS_RecipientInfo *ri,
                               unsigned char *key, size_t keylen)
{
    CMS_KEKRecipientInfo *kekri;
    if (ri->type != CMS_RECIPINFO_KEK) {
        CMSerr(CMS_F_CMS_RECIPIENTINFO_SET0_KEY, CMS_R_NOT_KEK);
        return 0;
    }

    kekri = ri->d.kekri;
    kekri->key = key;
    kekri->keylen = keylen;
    return 1;
}
