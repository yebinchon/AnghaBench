
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int EC_POINT ;
typedef int EC_GROUP ;
typedef int BN_CTX ;
typedef int BIGNUM ;


 int BN_clear_free (int *) ;
 int BN_hex2bn (int **,char const*) ;
 int * EC_POINT_bn2point (int const*,int *,int *,int *) ;

EC_POINT *EC_POINT_hex2point(const EC_GROUP *group,
                             const char *buf, EC_POINT *point, BN_CTX *ctx)
{
    EC_POINT *ret = ((void*)0);
    BIGNUM *tmp_bn = ((void*)0);

    if (!BN_hex2bn(&tmp_bn, buf))
        return ((void*)0);

    ret = EC_POINT_bn2point(group, tmp_bn, point, ctx);

    BN_clear_free(tmp_bn);

    return ret;
}
