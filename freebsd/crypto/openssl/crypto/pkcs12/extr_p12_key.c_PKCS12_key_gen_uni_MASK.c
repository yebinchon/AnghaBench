#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int uint16_t ;
typedef  int /*<<< orphan*/  EVP_MD_CTX ;
typedef  int /*<<< orphan*/  EVP_MD ;

/* Variables and functions */
 int /*<<< orphan*/  ERR_R_MALLOC_FAILURE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,unsigned char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned char*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 () ; 
 int FUNC5 (int /*<<< orphan*/  const*) ; 
 int FUNC6 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC7 (unsigned char*) ; 
 unsigned char* FUNC8 (int) ; 
 int /*<<< orphan*/  PKCS12_F_PKCS12_KEY_GEN_UNI ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC11 (unsigned char*,int) ; 
 int /*<<< orphan*/  FUNC12 (unsigned char*,unsigned char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int,int) ; 
 int /*<<< orphan*/  stderr ; 

int FUNC14(unsigned char *pass, int passlen, unsigned char *salt,
                       int saltlen, int id, int iter, int n,
                       unsigned char *out, const EVP_MD *md_type)
{
    unsigned char *B = NULL, *D = NULL, *I = NULL, *p = NULL, *Ai = NULL;
    int Slen, Plen, Ilen;
    int i, j, u, v;
    int ret = 0;
    EVP_MD_CTX *ctx = NULL;
#ifdef  OPENSSL_DEBUG_KEYGEN
    unsigned char *tmpout = out;
    int tmpn = n;
#endif

    ctx = FUNC4();
    if (ctx == NULL)
        goto err;

#ifdef  OPENSSL_DEBUG_KEYGEN
    fprintf(stderr, "KEYGEN DEBUG\n");
    fprintf(stderr, "ID %d, ITER %d\n", id, iter);
    fprintf(stderr, "Password (length %d):\n", passlen);
    h__dump(pass, passlen);
    fprintf(stderr, "Salt (length %d):\n", saltlen);
    h__dump(salt, saltlen);
#endif
    v = FUNC5(md_type);
    u = FUNC6(md_type);
    if (u < 0 || v <= 0)
        goto err;
    D = FUNC8(v);
    Ai = FUNC8(u);
    B = FUNC8(v + 1);
    Slen = v * ((saltlen + v - 1) / v);
    if (passlen)
        Plen = v * ((passlen + v - 1) / v);
    else
        Plen = 0;
    Ilen = Slen + Plen;
    I = FUNC8(Ilen);
    if (D == NULL || Ai == NULL || B == NULL || I == NULL)
        goto err;
    for (i = 0; i < v; i++)
        D[i] = id;
    p = I;
    for (i = 0; i < Slen; i++)
        *p++ = salt[i % saltlen];
    for (i = 0; i < Plen; i++)
        *p++ = pass[i % passlen];
    for (;;) {
        if (!FUNC1(ctx, md_type, NULL)
            || !FUNC2(ctx, D, v)
            || !FUNC2(ctx, I, Ilen)
            || !FUNC0(ctx, Ai, NULL))
            goto err;
        for (j = 1; j < iter; j++) {
            if (!FUNC1(ctx, md_type, NULL)
                || !FUNC2(ctx, Ai, u)
                || !FUNC0(ctx, Ai, NULL))
                goto err;
        }
        FUNC12(out, Ai, FUNC13(n, u));
        if (u >= n) {
#ifdef OPENSSL_DEBUG_KEYGEN
            fprintf(stderr, "Output KEY (length %d)\n", tmpn);
            h__dump(tmpout, tmpn);
#endif
            ret = 1;
            goto end;
        }
        n -= u;
        out += u;
        for (j = 0; j < v; j++)
            B[j] = Ai[j % u];
        for (j = 0; j < Ilen; j += v) {
            int k;
            unsigned char *Ij = I + j;
            uint16_t c = 1;

            /* Work out Ij = Ij + B + 1 */
            for (k = v - 1; k >= 0; k--) {
                c += Ij[k] + B[k];
                Ij[k] = (unsigned char)c;
                c >>= 8;
            }
        }
    }

 err:
    FUNC9(PKCS12_F_PKCS12_KEY_GEN_UNI, ERR_R_MALLOC_FAILURE);

 end:
    FUNC7(Ai);
    FUNC7(B);
    FUNC7(D);
    FUNC7(I);
    FUNC3(ctx);
    return ret;
}