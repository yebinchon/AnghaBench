
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int X509_PURPOSE ;
typedef int X509 ;


 int KU_CRL_SIGN ;
 int check_ca (int const*) ;
 scalar_t__ ku_reject (int const*,int ) ;

__attribute__((used)) static int check_purpose_crl_sign(const X509_PURPOSE *xp, const X509 *x,
                                  int ca)
{
    if (ca) {
        int ca_ret;
        if ((ca_ret = check_ca(x)) != 2)
            return ca_ret;
        else
            return 0;
    }
    if (ku_reject(x, KU_CRL_SIGN))
        return 0;
    return 1;
}
