
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int X509_CRL ;
struct TYPE_4__ {int * crl; } ;
struct TYPE_5__ {TYPE_1__ d; int type; } ;
typedef TYPE_2__ CMS_RevocationInfoChoice ;
typedef int CMS_ContentInfo ;


 int CMS_REVCHOICE_CRL ;
 TYPE_2__* CMS_add0_RevocationInfoChoice (int *) ;

int CMS_add0_crl(CMS_ContentInfo *cms, X509_CRL *crl)
{
    CMS_RevocationInfoChoice *rch;
    rch = CMS_add0_RevocationInfoChoice(cms);
    if (!rch)
        return 0;
    rch->type = CMS_REVCHOICE_CRL;
    rch->d.crl = crl;
    return 1;
}
