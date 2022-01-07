
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int point_conversion_form_t ;
typedef int EC_POINT ;
typedef int EC_GROUP ;
typedef int BN_CTX ;
typedef int BIGNUM ;


 int * BN_bin2bn (unsigned char*,size_t,int *) ;
 size_t EC_POINT_point2buf (int const*,int const*,int ,unsigned char**,int *) ;
 int OPENSSL_free (unsigned char*) ;

BIGNUM *EC_POINT_point2bn(const EC_GROUP *group,
                          const EC_POINT *point,
                          point_conversion_form_t form,
                          BIGNUM *ret, BN_CTX *ctx)
{
    size_t buf_len = 0;
    unsigned char *buf;

    buf_len = EC_POINT_point2buf(group, point, form, &buf, ctx);

    if (buf_len == 0)
        return ((void*)0);

    ret = BN_bin2bn(buf, buf_len, ret);

    OPENSSL_free(buf);

    return ret;
}
