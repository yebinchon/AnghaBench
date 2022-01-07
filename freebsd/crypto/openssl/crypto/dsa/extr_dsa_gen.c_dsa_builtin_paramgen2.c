
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int ggen ;
struct TYPE_3__ {int * g; int * q; int * p; } ;
typedef int EVP_MD_CTX ;
typedef int EVP_MD ;
typedef TYPE_1__ DSA ;
typedef int BN_MONT_CTX ;
typedef int BN_GENCB ;
typedef int BN_CTX ;
typedef int BIGNUM ;


 int BN_CTX_end (int *) ;
 int BN_CTX_free (int *) ;
 int * BN_CTX_get (int *) ;
 int * BN_CTX_new () ;
 int BN_CTX_start (int *) ;
 int BN_GENCB_call (int *,int,int) ;
 int BN_MONT_CTX_free (int *) ;
 int * BN_MONT_CTX_new () ;
 int BN_MONT_CTX_set (int *,int *,int *) ;
 int BN_add (int *,int *,int *) ;
 int BN_bin2bn (unsigned char*,int,int *) ;
 scalar_t__ BN_cmp (int *,int *) ;
 int BN_copy (int *,int *) ;
 int BN_div (int *,int *,int *,int *,int *) ;
 void* BN_dup (int *) ;
 int BN_free (int *) ;
 int BN_is_one (int *) ;
 int BN_is_prime_fasttest_ex (int *,int ,int *,int,int *) ;
 int BN_lshift (int *,int *,int) ;
 int BN_lshift1 (int *,int *) ;
 int BN_mask_bits (int *,size_t) ;
 int BN_mod (int *,int *,int *,int *) ;
 int BN_mod_exp_mont (int *,int *,int *,int *,int *,int *) ;
 int BN_set_word (int *,unsigned int) ;
 int BN_sub (int *,int *,int *) ;
 int * BN_value_one () ;
 int BN_zero (int *) ;
 int DSA_F_DSA_BUILTIN_PARAMGEN2 ;
 int DSA_R_INVALID_PARAMETERS ;
 int DSA_R_Q_NOT_PRIME ;
 int DSAerr (int ,int ) ;
 int DSS_prime_checks ;
 int EVP_Digest (unsigned char*,size_t,unsigned char*,int *,int const*,int *) ;
 int EVP_DigestFinal_ex (int *,unsigned char*,int *) ;
 int EVP_DigestInit_ex (int *,int const*,int *) ;
 int EVP_DigestUpdate (int *,unsigned char const*,int) ;
 int EVP_MAX_MD_SIZE ;
 int EVP_MD_CTX_free (int *) ;
 int * EVP_MD_CTX_new () ;
 int EVP_MD_size (int const*) ;
 int * EVP_sha1 () ;
 int * EVP_sha224 () ;
 int * EVP_sha256 () ;
 int OPENSSL_free (unsigned char*) ;
 unsigned char* OPENSSL_malloc (size_t) ;
 scalar_t__ RAND_bytes (unsigned char*,size_t) ;
 int memcpy (unsigned char*,unsigned char const*,size_t) ;
 int memset (unsigned char*,int ,int) ;

int dsa_builtin_paramgen2(DSA *ret, size_t L, size_t N,
                          const EVP_MD *evpmd, const unsigned char *seed_in,
                          size_t seed_len, int idx, unsigned char *seed_out,
                          int *counter_ret, unsigned long *h_ret,
                          BN_GENCB *cb)
{
    int ok = -1;
    unsigned char *seed = ((void*)0), *seed_tmp = ((void*)0);
    unsigned char md[EVP_MAX_MD_SIZE];
    int mdsize;
    BIGNUM *r0, *W, *X, *c, *test;
    BIGNUM *g = ((void*)0), *q = ((void*)0), *p = ((void*)0);
    BN_MONT_CTX *mont = ((void*)0);
    int i, k, n = 0, m = 0, qsize = N >> 3;
    int counter = 0;
    int r = 0;
    BN_CTX *ctx = ((void*)0);
    EVP_MD_CTX *mctx = EVP_MD_CTX_new();
    unsigned int h = 2;

    if (mctx == ((void*)0))
        goto err;


    if (L <= N) {
        DSAerr(DSA_F_DSA_BUILTIN_PARAMGEN2, DSA_R_INVALID_PARAMETERS);
        goto err;
    }

    if (evpmd == ((void*)0)) {
        if (N == 160)
            evpmd = EVP_sha1();
        else if (N == 224)
            evpmd = EVP_sha224();
        else
            evpmd = EVP_sha256();
    }

    mdsize = EVP_MD_size(evpmd);

    if (!ret->p || !ret->q || idx >= 0) {
        if (seed_len == 0)
            seed_len = mdsize;

        seed = OPENSSL_malloc(seed_len);

        if (seed_out)
            seed_tmp = seed_out;
        else
            seed_tmp = OPENSSL_malloc(seed_len);

        if (seed == ((void*)0) || seed_tmp == ((void*)0))
            goto err;

        if (seed_in)
            memcpy(seed, seed_in, seed_len);

    }

    if ((ctx = BN_CTX_new()) == ((void*)0))
        goto err;

    if ((mont = BN_MONT_CTX_new()) == ((void*)0))
        goto err;

    BN_CTX_start(ctx);
    r0 = BN_CTX_get(ctx);
    g = BN_CTX_get(ctx);
    W = BN_CTX_get(ctx);
    X = BN_CTX_get(ctx);
    c = BN_CTX_get(ctx);
    test = BN_CTX_get(ctx);
    if (test == ((void*)0))
        goto err;


    if (ret->p && ret->q) {
        p = ret->p;
        q = ret->q;
        if (idx >= 0)
            memcpy(seed_tmp, seed, seed_len);
        goto g_only;
    } else {
        p = BN_CTX_get(ctx);
        q = BN_CTX_get(ctx);
        if (q == ((void*)0))
            goto err;
    }

    if (!BN_lshift(test, BN_value_one(), L - 1))
        goto err;
    for (;;) {
        for (;;) {
            unsigned char *pmd;

            if (!BN_GENCB_call(cb, 0, m++))
                goto err;

            if (!seed_in) {
                if (RAND_bytes(seed, seed_len) <= 0)
                    goto err;
            }

            if (!EVP_Digest(seed, seed_len, md, ((void*)0), evpmd, ((void*)0)))
                goto err;

            if (mdsize > qsize)
                pmd = md + mdsize - qsize;
            else
                pmd = md;

            if (mdsize < qsize)
                memset(md + mdsize, 0, qsize - mdsize);


            pmd[0] |= 0x80;
            pmd[qsize - 1] |= 0x01;
            if (!BN_bin2bn(pmd, qsize, q))
                goto err;


            r = BN_is_prime_fasttest_ex(q, DSS_prime_checks, ctx,
                                        seed_in ? 1 : 0, cb);
            if (r > 0)
                break;
            if (r != 0)
                goto err;

            if (seed_in) {
                ok = 0;
                DSAerr(DSA_F_DSA_BUILTIN_PARAMGEN2, DSA_R_Q_NOT_PRIME);
                goto err;
            }



        }

        if (seed_out)
            memcpy(seed_out, seed, seed_len);

        if (!BN_GENCB_call(cb, 2, 0))
            goto err;
        if (!BN_GENCB_call(cb, 3, 0))
            goto err;


        counter = 0;


        n = (L - 1) / (mdsize << 3);

        for (;;) {
            if ((counter != 0) && !BN_GENCB_call(cb, 0, counter))
                goto err;


            BN_zero(W);

            for (k = 0; k <= n; k++) {



                for (i = seed_len - 1; i >= 0; i--) {
                    seed[i]++;
                    if (seed[i] != 0)
                        break;
                }

                if (!EVP_Digest(seed, seed_len, md, ((void*)0), evpmd, ((void*)0)))
                    goto err;


                if (!BN_bin2bn(md, mdsize, r0))
                    goto err;
                if (!BN_lshift(r0, r0, (mdsize << 3) * k))
                    goto err;
                if (!BN_add(W, W, r0))
                    goto err;
            }


            if (!BN_mask_bits(W, L - 1))
                goto err;
            if (!BN_copy(X, W))
                goto err;
            if (!BN_add(X, X, test))
                goto err;


            if (!BN_lshift1(r0, q))
                goto err;
            if (!BN_mod(c, X, r0, ctx))
                goto err;
            if (!BN_sub(r0, c, BN_value_one()))
                goto err;
            if (!BN_sub(p, X, r0))
                goto err;


            if (BN_cmp(p, test) >= 0) {

                r = BN_is_prime_fasttest_ex(p, DSS_prime_checks, ctx, 1, cb);
                if (r > 0)
                    goto end;
                if (r != 0)
                    goto err;
            }


            counter++;



            if (counter >= (int)(4 * L))
                break;
        }
        if (seed_in) {
            ok = 0;
            DSAerr(DSA_F_DSA_BUILTIN_PARAMGEN2, DSA_R_INVALID_PARAMETERS);
            goto err;
        }
    }
 end:
    if (!BN_GENCB_call(cb, 2, 1))
        goto err;

 g_only:



    if (!BN_sub(test, p, BN_value_one()))
        goto err;
    if (!BN_div(r0, ((void*)0), test, q, ctx))
        goto err;

    if (idx < 0) {
        if (!BN_set_word(test, h))
            goto err;
    } else
        h = 1;
    if (!BN_MONT_CTX_set(mont, p, ctx))
        goto err;

    for (;;) {
        static const unsigned char ggen[4] = { 0x67, 0x67, 0x65, 0x6e };
        if (idx >= 0) {
            md[0] = idx & 0xff;
            md[1] = (h >> 8) & 0xff;
            md[2] = h & 0xff;
            if (!EVP_DigestInit_ex(mctx, evpmd, ((void*)0)))
                goto err;
            if (!EVP_DigestUpdate(mctx, seed_tmp, seed_len))
                goto err;
            if (!EVP_DigestUpdate(mctx, ggen, sizeof(ggen)))
                goto err;
            if (!EVP_DigestUpdate(mctx, md, 3))
                goto err;
            if (!EVP_DigestFinal_ex(mctx, md, ((void*)0)))
                goto err;
            if (!BN_bin2bn(md, mdsize, test))
                goto err;
        }

        if (!BN_mod_exp_mont(g, test, r0, p, ctx, mont))
            goto err;
        if (!BN_is_one(g))
            break;
        if (idx < 0 && !BN_add(test, test, BN_value_one()))
            goto err;
        h++;
        if (idx >= 0 && h > 0xffff)
            goto err;
    }

    if (!BN_GENCB_call(cb, 3, 1))
        goto err;

    ok = 1;
 err:
    if (ok == 1) {
        if (p != ret->p) {
            BN_free(ret->p);
            ret->p = BN_dup(p);
        }
        if (q != ret->q) {
            BN_free(ret->q);
            ret->q = BN_dup(q);
        }
        BN_free(ret->g);
        ret->g = BN_dup(g);
        if (ret->p == ((void*)0) || ret->q == ((void*)0) || ret->g == ((void*)0)) {
            ok = -1;
            goto err;
        }
        if (counter_ret != ((void*)0))
            *counter_ret = counter;
        if (h_ret != ((void*)0))
            *h_ret = h;
    }
    OPENSSL_free(seed);
    if (seed_out != seed_tmp)
        OPENSSL_free(seed_tmp);
    BN_CTX_end(ctx);
    BN_CTX_free(ctx);
    BN_MONT_CTX_free(mont);
    EVP_MD_CTX_free(mctx);
    return ok;
}
