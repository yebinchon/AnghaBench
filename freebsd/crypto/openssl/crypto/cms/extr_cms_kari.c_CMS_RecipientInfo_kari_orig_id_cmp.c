
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int X509 ;
struct TYPE_9__ {int subjectKeyIdentifier; int issuerAndSerialNumber; } ;
struct TYPE_11__ {scalar_t__ type; TYPE_3__ d; } ;
struct TYPE_8__ {TYPE_1__* kari; } ;
struct TYPE_10__ {scalar_t__ type; TYPE_2__ d; } ;
struct TYPE_7__ {TYPE_5__* originator; } ;
typedef TYPE_4__ CMS_RecipientInfo ;
typedef TYPE_5__ CMS_OriginatorIdentifierOrKey ;


 int CMS_F_CMS_RECIPIENTINFO_KARI_ORIG_ID_CMP ;
 scalar_t__ CMS_OIK_ISSUER_SERIAL ;
 scalar_t__ CMS_OIK_KEYIDENTIFIER ;
 scalar_t__ CMS_RECIPINFO_AGREE ;
 int CMS_R_NOT_KEY_AGREEMENT ;
 int CMSerr (int ,int ) ;
 int cms_ias_cert_cmp (int ,int *) ;
 int cms_keyid_cert_cmp (int ,int *) ;

int CMS_RecipientInfo_kari_orig_id_cmp(CMS_RecipientInfo *ri, X509 *cert)
{
    CMS_OriginatorIdentifierOrKey *oik;
    if (ri->type != CMS_RECIPINFO_AGREE) {
        CMSerr(CMS_F_CMS_RECIPIENTINFO_KARI_ORIG_ID_CMP,
               CMS_R_NOT_KEY_AGREEMENT);
        return -2;
    }
    oik = ri->d.kari->originator;
    if (oik->type == CMS_OIK_ISSUER_SERIAL)
        return cms_ias_cert_cmp(oik->d.issuerAndSerialNumber, cert);
    else if (oik->type == CMS_OIK_KEYIDENTIFIER)
        return cms_keyid_cert_cmp(oik->d.subjectKeyIdentifier, cert);
    return -1;
}
