
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int dig ;
typedef int EVP_MD_CTX ;
typedef int BIGNUM ;


 int * BN_bin2bn (unsigned char*,int,int *) ;
 scalar_t__ BN_bn2bin (int const*,unsigned char*) ;
 int BN_num_bytes (int const*) ;
 int EVP_DigestFinal_ex (int *,unsigned char*,int *) ;
 int EVP_DigestInit_ex (int *,int ,int *) ;
 int EVP_DigestUpdate (int *,...) ;
 int EVP_MD_CTX_free (int *) ;
 int * EVP_MD_CTX_new () ;
 int EVP_sha1 () ;
 int OPENSSL_free (unsigned char*) ;
 unsigned char* OPENSSL_malloc (int) ;
 int SHA_DIGEST_LENGTH ;
 int strlen (char const*) ;

BIGNUM *SRP_Calc_x(const BIGNUM *s, const char *user, const char *pass)
{
    unsigned char dig[SHA_DIGEST_LENGTH];
    EVP_MD_CTX *ctxt;
    unsigned char *cs = ((void*)0);
    BIGNUM *res = ((void*)0);

    if ((s == ((void*)0)) || (user == ((void*)0)) || (pass == ((void*)0)))
        return ((void*)0);

    ctxt = EVP_MD_CTX_new();
    if (ctxt == ((void*)0))
        return ((void*)0);
    if ((cs = OPENSSL_malloc(BN_num_bytes(s))) == ((void*)0))
        goto err;

    if (!EVP_DigestInit_ex(ctxt, EVP_sha1(), ((void*)0))
        || !EVP_DigestUpdate(ctxt, user, strlen(user))
        || !EVP_DigestUpdate(ctxt, ":", 1)
        || !EVP_DigestUpdate(ctxt, pass, strlen(pass))
        || !EVP_DigestFinal_ex(ctxt, dig, ((void*)0))
        || !EVP_DigestInit_ex(ctxt, EVP_sha1(), ((void*)0)))
        goto err;
    if (BN_bn2bin(s, cs) < 0)
        goto err;
    if (!EVP_DigestUpdate(ctxt, cs, BN_num_bytes(s)))
        goto err;

    if (!EVP_DigestUpdate(ctxt, dig, sizeof(dig))
        || !EVP_DigestFinal_ex(ctxt, dig, ((void*)0)))
        goto err;

    res = BN_bin2bn(dig, sizeof(dig), ((void*)0));

 err:
    OPENSSL_free(cs);
    EVP_MD_CTX_free(ctxt);
    return res;
}
