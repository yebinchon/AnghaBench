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

/* Variables and functions */
 int /*<<< orphan*/  CT_F_CT_BASE64_DECODE ; 
 int /*<<< orphan*/  CT_R_BASE64_DECODE_ERROR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ERR_R_MALLOC_FAILURE ; 
 int FUNC1 (unsigned char*,unsigned char*,size_t) ; 
 int /*<<< orphan*/  FUNC2 (unsigned char*) ; 
 unsigned char* FUNC3 (int) ; 
 size_t FUNC4 (char const*) ; 

__attribute__((used)) static int FUNC5(const char *in, unsigned char **out)
{
    size_t inlen = FUNC4(in);
    int outlen, i;
    unsigned char *outbuf = NULL;

    if (inlen == 0) {
        *out = NULL;
        return 0;
    }

    outlen = (inlen / 4) * 3;
    outbuf = FUNC3(outlen);
    if (outbuf == NULL) {
        FUNC0(CT_F_CT_BASE64_DECODE, ERR_R_MALLOC_FAILURE);
        goto err;
    }

    outlen = FUNC1(outbuf, (unsigned char *)in, inlen);
    if (outlen < 0) {
        FUNC0(CT_F_CT_BASE64_DECODE, CT_R_BASE64_DECODE_ERROR);
        goto err;
    }

    /* Subtract padding bytes from |outlen|.  Any more than 2 is malformed. */
    i = 0;
    while (in[--inlen] == '=') {
        --outlen;
        if (++i > 2)
            goto err;
    }

    *out = outbuf;
    return outlen;
err:
    FUNC2(outbuf);
    return -1;
}