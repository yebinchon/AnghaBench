
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int cert; } ;
typedef TYPE_1__ PKCS7_RECIP_INFO ;
typedef int ASN1_VALUE ;
typedef int ASN1_ITEM ;


 int ASN1_OP_FREE_POST ;
 int X509_free (int ) ;

__attribute__((used)) static int ri_cb(int operation, ASN1_VALUE **pval, const ASN1_ITEM *it,
                 void *exarg)
{
    if (operation == ASN1_OP_FREE_POST) {
        PKCS7_RECIP_INFO *ri = (PKCS7_RECIP_INFO *)*pval;
        X509_free(ri->cert);
    }
    return 1;
}
