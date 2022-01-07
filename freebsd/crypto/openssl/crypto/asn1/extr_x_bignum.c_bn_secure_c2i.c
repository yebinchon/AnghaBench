
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int BIGNUM ;
typedef int ASN1_VALUE ;
typedef int ASN1_ITEM ;


 int BN_FLG_CONSTTIME ;
 int BN_set_flags (int *,int ) ;
 int bn_c2i (int **,unsigned char const*,int,int,char*,int const*) ;
 int bn_secure_new (int **,int const*) ;

__attribute__((used)) static int bn_secure_c2i(ASN1_VALUE **pval, const unsigned char *cont, int len,
                         int utype, char *free_cont, const ASN1_ITEM *it)
{
    int ret;
    BIGNUM *bn;

    if (!*pval && !bn_secure_new(pval, it))
        return 0;

    ret = bn_c2i(pval, cont, len, utype, free_cont, it);
    if (!ret)
        return 0;


    bn = (BIGNUM *)*pval;
    BN_set_flags(bn, BN_FLG_CONSTTIME);
    return ret;
}
