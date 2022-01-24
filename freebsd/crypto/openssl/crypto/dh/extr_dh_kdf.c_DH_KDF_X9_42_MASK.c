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
typedef  int /*<<< orphan*/  EVP_MD_CTX ;
typedef  int /*<<< orphan*/  EVP_MD ;
typedef  int /*<<< orphan*/  ASN1_OBJECT ;

/* Variables and functions */
 size_t DH_KDF_MAX ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,unsigned char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned char const*,int) ; 
 int EVP_MAX_MD_SIZE ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 () ; 
 size_t FUNC5 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC6 (unsigned char*,size_t) ; 
 int /*<<< orphan*/  FUNC7 (unsigned char*) ; 
 int FUNC8 (unsigned char**,unsigned char**,int /*<<< orphan*/ *,size_t,unsigned char const*,size_t) ; 
 int /*<<< orphan*/  FUNC9 (unsigned char*,unsigned char*,size_t) ; 

int FUNC10(unsigned char *out, size_t outlen,
                 const unsigned char *Z, size_t Zlen,
                 ASN1_OBJECT *key_oid,
                 const unsigned char *ukm, size_t ukmlen, const EVP_MD *md)
{
    EVP_MD_CTX *mctx = NULL;
    int rv = 0;
    unsigned int i;
    size_t mdlen;
    unsigned char *der = NULL, *ctr;
    int derlen;
    if (Zlen > DH_KDF_MAX)
        return 0;
    mctx = FUNC4();
    if (mctx == NULL)
        return 0;
    mdlen = FUNC5(md);
    derlen = FUNC8(&der, &ctr, key_oid, outlen, ukm, ukmlen);
    if (derlen == 0)
        goto err;
    for (i = 1;; i++) {
        unsigned char mtmp[EVP_MAX_MD_SIZE];
        if (!FUNC1(mctx, md, NULL)
            || !FUNC2(mctx, Z, Zlen))
            goto err;
        ctr[3] = i & 0xFF;
        ctr[2] = (i >> 8) & 0xFF;
        ctr[1] = (i >> 16) & 0xFF;
        ctr[0] = (i >> 24) & 0xFF;
        if (!FUNC2(mctx, der, derlen))
            goto err;
        if (outlen >= mdlen) {
            if (!FUNC0(mctx, out, NULL))
                goto err;
            outlen -= mdlen;
            if (outlen == 0)
                break;
            out += mdlen;
        } else {
            if (!FUNC0(mctx, mtmp, NULL))
                goto err;
            FUNC9(out, mtmp, outlen);
            FUNC6(mtmp, mdlen);
            break;
        }
    }
    rv = 1;
 err:
    FUNC7(der);
    FUNC3(mctx);
    return rv;
}