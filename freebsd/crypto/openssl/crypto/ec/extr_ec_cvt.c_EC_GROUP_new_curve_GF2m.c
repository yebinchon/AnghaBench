
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int EC_METHOD ;
typedef int EC_GROUP ;
typedef int BN_CTX ;
typedef int BIGNUM ;


 int * EC_GF2m_simple_method () ;
 int EC_GROUP_clear_free (int *) ;
 int * EC_GROUP_new (int const*) ;
 int EC_GROUP_set_curve (int *,int const*,int const*,int const*,int *) ;

EC_GROUP *EC_GROUP_new_curve_GF2m(const BIGNUM *p, const BIGNUM *a,
                                  const BIGNUM *b, BN_CTX *ctx)
{
    const EC_METHOD *meth;
    EC_GROUP *ret;

    meth = EC_GF2m_simple_method();

    ret = EC_GROUP_new(meth);
    if (ret == ((void*)0))
        return ((void*)0);

    if (!EC_GROUP_set_curve(ret, p, a, b, ctx)) {
        EC_GROUP_clear_free(ret);
        return ((void*)0);
    }

    return ret;
}
