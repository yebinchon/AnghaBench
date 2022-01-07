
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int EC_POINT ;
typedef int EC_GROUP ;
typedef int BN_CTX ;
typedef int BIGNUM ;


 int BN_bn2bin (int const*,unsigned char*) ;
 size_t BN_num_bytes (int const*) ;
 int EC_F_EC_POINT_BN2POINT ;
 int EC_POINT_clear_free (int *) ;
 int * EC_POINT_new (int const*) ;
 int EC_POINT_oct2point (int const*,int *,unsigned char*,size_t,int *) ;
 int ECerr (int ,int ) ;
 int ERR_R_MALLOC_FAILURE ;
 int OPENSSL_free (unsigned char*) ;
 unsigned char* OPENSSL_malloc (size_t) ;

EC_POINT *EC_POINT_bn2point(const EC_GROUP *group,
                            const BIGNUM *bn, EC_POINT *point, BN_CTX *ctx)
{
    size_t buf_len = 0;
    unsigned char *buf;
    EC_POINT *ret;

    if ((buf_len = BN_num_bytes(bn)) == 0)
        return ((void*)0);
    if ((buf = OPENSSL_malloc(buf_len)) == ((void*)0)) {
        ECerr(EC_F_EC_POINT_BN2POINT, ERR_R_MALLOC_FAILURE);
        return ((void*)0);
    }

    if (!BN_bn2bin(bn, buf)) {
        OPENSSL_free(buf);
        return ((void*)0);
    }

    if (point == ((void*)0)) {
        if ((ret = EC_POINT_new(group)) == ((void*)0)) {
            OPENSSL_free(buf);
            return ((void*)0);
        }
    } else
        ret = point;

    if (!EC_POINT_oct2point(group, ret, buf, buf_len, ctx)) {
        if (ret != point)
            EC_POINT_clear_free(ret);
        OPENSSL_free(buf);
        return ((void*)0);
    }

    OPENSSL_free(buf);
    return ret;
}
