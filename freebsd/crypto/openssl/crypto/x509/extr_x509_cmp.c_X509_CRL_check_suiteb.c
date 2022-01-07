
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int algorithm; } ;
struct TYPE_6__ {TYPE_1__ sig_alg; } ;
struct TYPE_7__ {TYPE_2__ crl; } ;
typedef TYPE_3__ X509_CRL ;
typedef int EVP_PKEY ;


 int OBJ_obj2nid (int ) ;
 unsigned long X509_V_FLAG_SUITEB_128_LOS ;
 int X509_V_OK ;
 int check_suite_b (int *,int,unsigned long*) ;

int X509_CRL_check_suiteb(X509_CRL *crl, EVP_PKEY *pk, unsigned long flags)
{
    int sign_nid;
    if (!(flags & X509_V_FLAG_SUITEB_128_LOS))
        return X509_V_OK;
    sign_nid = OBJ_obj2nid(crl->crl.sig_alg.algorithm);
    return check_suite_b(pk, sign_nid, &flags);
}
