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
typedef  int /*<<< orphan*/  EVP_ENCODE_CTX ;

/* Variables and functions */
 int EVP_ENCODE_CTX_NO_NEWLINES ; 
 int EVP_ENCODE_CTX_USE_SRP_ALPHABET ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned char*,int*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned char*,int*,unsigned char const*,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC6 (char*,char*,int) ; 

__attribute__((used)) static int FUNC7(char *dst, const unsigned char *src, int size)
{
    EVP_ENCODE_CTX *ctx = FUNC1();
    int outl = 0, outl2 = 0;
    unsigned char pad[2] = {0, 0};
    size_t leadz = 0;

    if (ctx == NULL)
        return 0;

    FUNC3(ctx);
    FUNC5(ctx, EVP_ENCODE_CTX_NO_NEWLINES
                                  | EVP_ENCODE_CTX_USE_SRP_ALPHABET);

    /*
     * We pad at the front with zero bytes until the length is a multiple of 3
     * so that EVP_EncodeUpdate/EVP_EncodeFinal does not add any of its own "="
     * padding
     */
    leadz = 3 - (size % 3);
    if (leadz != 3
            && !FUNC4(ctx, (unsigned char *)dst, &outl, pad,
                                 leadz)) {
        FUNC0(ctx);
        return 0;
    }

    if (!FUNC4(ctx, (unsigned char *)dst + outl, &outl2, src,
                          size)) {
        FUNC0(ctx);
        return 0;
    }
    outl += outl2;
    FUNC2(ctx, (unsigned char *)dst + outl, &outl2);
    outl += outl2;

    /* Strip the encoded padding at the front */
    if (leadz != 3) {
        FUNC6(dst, dst + leadz, outl - leadz);
        dst[outl - leadz] = '\0';
    }

    FUNC0(ctx);
    return 1;
}