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
typedef  int /*<<< orphan*/  ctr ;
typedef  int /*<<< orphan*/  EVP_MD_CTX ;
typedef  int /*<<< orphan*/  EVP_MD ;

/* Variables and functions */
 size_t ECDH_KDF_MAX ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,unsigned char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned char const*,size_t) ; 
 int EVP_MAX_MD_SIZE ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 () ; 
 size_t FUNC5 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC6 (unsigned char*,size_t) ; 
 int /*<<< orphan*/  FUNC7 (unsigned char*,unsigned char*,size_t) ; 

int FUNC8(unsigned char *out, size_t outlen,
                   const unsigned char *Z, size_t Zlen,
                   const unsigned char *sinfo, size_t sinfolen,
                   const EVP_MD *md)
{
    EVP_MD_CTX *mctx = NULL;
    int rv = 0;
    unsigned int i;
    size_t mdlen;
    unsigned char ctr[4];
    if (sinfolen > ECDH_KDF_MAX || outlen > ECDH_KDF_MAX
        || Zlen > ECDH_KDF_MAX)
        return 0;
    mctx = FUNC4();
    if (mctx == NULL)
        return 0;
    mdlen = FUNC5(md);
    for (i = 1;; i++) {
        unsigned char mtmp[EVP_MAX_MD_SIZE];
        if (!FUNC1(mctx, md, NULL))
            goto err;
        ctr[3] = i & 0xFF;
        ctr[2] = (i >> 8) & 0xFF;
        ctr[1] = (i >> 16) & 0xFF;
        ctr[0] = (i >> 24) & 0xFF;
        if (!FUNC2(mctx, Z, Zlen))
            goto err;
        if (!FUNC2(mctx, ctr, sizeof(ctr)))
            goto err;
        if (!FUNC2(mctx, sinfo, sinfolen))
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
            FUNC7(out, mtmp, outlen);
            FUNC6(mtmp, mdlen);
            break;
        }
    }
    rv = 1;
 err:
    FUNC3(mctx);
    return rv;
}