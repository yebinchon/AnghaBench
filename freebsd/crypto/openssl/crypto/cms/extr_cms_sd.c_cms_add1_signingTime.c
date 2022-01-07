
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int type; } ;
typedef int CMS_SignerInfo ;
typedef TYPE_1__ ASN1_TIME ;


 int ASN1_TIME_free (TYPE_1__*) ;
 int CMS_F_CMS_ADD1_SIGNINGTIME ;
 scalar_t__ CMS_signed_add1_attr_by_NID (int *,int ,int ,TYPE_1__*,int) ;
 int CMSerr (int ,int ) ;
 int ERR_R_MALLOC_FAILURE ;
 int NID_pkcs9_signingTime ;
 TYPE_1__* X509_gmtime_adj (int *,int ) ;

__attribute__((used)) static int cms_add1_signingTime(CMS_SignerInfo *si, ASN1_TIME *t)
{
    ASN1_TIME *tt;
    int r = 0;
    if (t)
        tt = t;
    else
        tt = X509_gmtime_adj(((void*)0), 0);

    if (!tt)
        goto merr;

    if (CMS_signed_add1_attr_by_NID(si, NID_pkcs9_signingTime,
                                    tt->type, tt, -1) <= 0)
        goto merr;

    r = 1;

 merr:

    if (!t)
        ASN1_TIME_free(tt);

    if (!r)
        CMSerr(CMS_F_CMS_ADD1_SIGNINGTIME, ERR_R_MALLOC_FAILURE);

    return r;

}
