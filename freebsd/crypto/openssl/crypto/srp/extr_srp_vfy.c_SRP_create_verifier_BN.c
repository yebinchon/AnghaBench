
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int BN_CTX ;
typedef int BIGNUM ;


 int BN_CTX_free (int *) ;
 int * BN_CTX_new () ;
 int * BN_bin2bn (unsigned char*,int ,int *) ;
 int BN_clear_free (int *) ;
 int BN_mod_exp (int *,int const*,int *,int const*,int *) ;
 int * BN_new () ;
 int MAX_LEN ;
 scalar_t__ RAND_bytes (unsigned char*,int ) ;
 int * SRP_Calc_x (int *,char const*,char const*) ;
 int SRP_RANDOM_SALT_LEN ;

int SRP_create_verifier_BN(const char *user, const char *pass, BIGNUM **salt,
                           BIGNUM **verifier, const BIGNUM *N,
                           const BIGNUM *g)
{
    int result = 0;
    BIGNUM *x = ((void*)0);
    BN_CTX *bn_ctx = BN_CTX_new();
    unsigned char tmp2[MAX_LEN];
    BIGNUM *salttmp = ((void*)0);

    if ((user == ((void*)0)) ||
        (pass == ((void*)0)) ||
        (salt == ((void*)0)) ||
        (verifier == ((void*)0)) || (N == ((void*)0)) || (g == ((void*)0)) || (bn_ctx == ((void*)0)))
        goto err;

    if (*salt == ((void*)0)) {
        if (RAND_bytes(tmp2, SRP_RANDOM_SALT_LEN) <= 0)
            goto err;

        salttmp = BN_bin2bn(tmp2, SRP_RANDOM_SALT_LEN, ((void*)0));
        if (salttmp == ((void*)0))
            goto err;
    } else {
        salttmp = *salt;
    }

    x = SRP_Calc_x(salttmp, user, pass);
    if (x == ((void*)0))
        goto err;

    *verifier = BN_new();
    if (*verifier == ((void*)0))
        goto err;

    if (!BN_mod_exp(*verifier, g, x, N, bn_ctx)) {
        BN_clear_free(*verifier);
        goto err;
    }

    result = 1;
    *salt = salttmp;

 err:
    if (salt != ((void*)0) && *salt != salttmp)
        BN_clear_free(salttmp);
    BN_clear_free(x);
    BN_CTX_free(bn_ctx);
    return result;
}
