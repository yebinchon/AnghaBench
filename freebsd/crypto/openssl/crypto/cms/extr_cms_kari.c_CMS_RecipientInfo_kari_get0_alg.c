
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int X509_ALGOR ;
struct TYPE_6__ {TYPE_1__* kari; } ;
struct TYPE_7__ {scalar_t__ type; TYPE_2__ d; } ;
struct TYPE_5__ {int * ukm; int * keyEncryptionAlgorithm; } ;
typedef TYPE_3__ CMS_RecipientInfo ;
typedef int ASN1_OCTET_STRING ;


 int CMS_F_CMS_RECIPIENTINFO_KARI_GET0_ALG ;
 scalar_t__ CMS_RECIPINFO_AGREE ;
 int CMS_R_NOT_KEY_AGREEMENT ;
 int CMSerr (int ,int ) ;

int CMS_RecipientInfo_kari_get0_alg(CMS_RecipientInfo *ri,
                                    X509_ALGOR **palg,
                                    ASN1_OCTET_STRING **pukm)
{
    if (ri->type != CMS_RECIPINFO_AGREE) {
        CMSerr(CMS_F_CMS_RECIPIENTINFO_KARI_GET0_ALG,
               CMS_R_NOT_KEY_AGREEMENT);
        return 0;
    }
    if (palg)
        *palg = ri->d.kari->keyEncryptionAlgorithm;
    if (pukm)
        *pukm = ri->d.kari->ukm;
    return 1;
}
