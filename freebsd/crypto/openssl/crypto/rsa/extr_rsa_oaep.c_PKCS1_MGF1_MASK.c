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
typedef  int /*<<< orphan*/  md ;
typedef  int /*<<< orphan*/  EVP_MD_CTX ;
typedef  int /*<<< orphan*/  EVP_MD ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,unsigned char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned char const*,int) ; 
 int EVP_MAX_MD_SIZE ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 () ; 
 int FUNC5 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC6 (unsigned char*,int) ; 
 int /*<<< orphan*/  FUNC7 (unsigned char*,unsigned char*,long) ; 

int FUNC8(unsigned char *mask, long len,
               const unsigned char *seed, long seedlen, const EVP_MD *dgst)
{
    long i, outlen = 0;
    unsigned char cnt[4];
    EVP_MD_CTX *c = FUNC4();
    unsigned char md[EVP_MAX_MD_SIZE];
    int mdlen;
    int rv = -1;

    if (c == NULL)
        goto err;
    mdlen = FUNC5(dgst);
    if (mdlen < 0)
        goto err;
    for (i = 0; outlen < len; i++) {
        cnt[0] = (unsigned char)((i >> 24) & 255);
        cnt[1] = (unsigned char)((i >> 16) & 255);
        cnt[2] = (unsigned char)((i >> 8)) & 255;
        cnt[3] = (unsigned char)(i & 255);
        if (!FUNC1(c, dgst, NULL)
            || !FUNC2(c, seed, seedlen)
            || !FUNC2(c, cnt, 4))
            goto err;
        if (outlen + mdlen <= len) {
            if (!FUNC0(c, mask + outlen, NULL))
                goto err;
            outlen += mdlen;
        } else {
            if (!FUNC0(c, md, NULL))
                goto err;
            FUNC7(mask + outlen, md, len - outlen);
            outlen = len;
        }
    }
    rv = 0;
 err:
    FUNC6(md, sizeof(md));
    FUNC3(c);
    return rv;
}