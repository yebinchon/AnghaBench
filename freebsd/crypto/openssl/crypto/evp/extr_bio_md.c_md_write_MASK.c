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
typedef  int /*<<< orphan*/  BIO ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ *,char const*,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned char const*,unsigned int) ; 

__attribute__((used)) static int FUNC7(BIO *b, const char *in, int inl)
{
    int ret = 0;
    EVP_MD_CTX *ctx;
    BIO *next;

    if ((in == NULL) || (inl <= 0))
        return 0;

    ctx = FUNC2(b);
    next = FUNC4(b);
    if ((ctx != NULL) && (next != NULL))
        ret = FUNC5(next, in, inl);

    if (FUNC3(b)) {
        if (ret > 0) {
            if (!FUNC6(ctx, (const unsigned char *)in,
                                  (unsigned int)ret)) {
                FUNC0(b);
                return 0;
            }
        }
    }
    if (next != NULL) {
        FUNC0(b);
        FUNC1(b);
    }
    return ret;
}