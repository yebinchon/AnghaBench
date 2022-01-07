
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int BIGNUM ;


 char* BN_bn2dec (int const*) ;
 char* BN_bn2hex (int const*) ;
 int BN_num_bits (int const*) ;
 int ERR_R_MALLOC_FAILURE ;
 int OPENSSL_free (char*) ;
 char* OPENSSL_malloc (size_t) ;
 int OPENSSL_strlcat (char*,char*,size_t) ;
 int OPENSSL_strlcpy (char*,char*,size_t) ;
 int X509V3_F_BIGNUM_TO_STRING ;
 int X509V3err (int ,int ) ;
 int strlen (char*) ;

__attribute__((used)) static char *bignum_to_string(const BIGNUM *bn)
{
    char *tmp, *ret;
    size_t len;






    if (BN_num_bits(bn) < 128)
        return BN_bn2dec(bn);

    tmp = BN_bn2hex(bn);
    if (tmp == ((void*)0))
        return ((void*)0);

    len = strlen(tmp) + 3;
    ret = OPENSSL_malloc(len);
    if (ret == ((void*)0)) {
        X509V3err(X509V3_F_BIGNUM_TO_STRING, ERR_R_MALLOC_FAILURE);
        OPENSSL_free(tmp);
        return ((void*)0);
    }


    if (tmp[0] == '-') {
        OPENSSL_strlcpy(ret, "-0x", len);
        OPENSSL_strlcat(ret, tmp + 1, len);
    } else {
        OPENSSL_strlcpy(ret, "0x", len);
        OPENSSL_strlcat(ret, tmp, len);
    }
    OPENSSL_free(tmp);
    return ret;
}
