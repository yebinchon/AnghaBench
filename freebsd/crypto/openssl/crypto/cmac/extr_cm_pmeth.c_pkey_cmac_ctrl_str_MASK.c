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
typedef  int /*<<< orphan*/  EVP_PKEY_CTX ;
typedef  int /*<<< orphan*/  EVP_CIPHER ;

/* Variables and functions */
 int /*<<< orphan*/  EVP_PKEY_CTRL_CIPHER ; 
 int /*<<< orphan*/  EVP_PKEY_CTRL_SET_MAC_KEY ; 
 int FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char const*) ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/ * FUNC2 (char const*) ; 
 int FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,void*) ; 
 scalar_t__ FUNC4 (char const*,char*) ; 

__attribute__((used)) static int FUNC5(EVP_PKEY_CTX *ctx,
                              const char *type, const char *value)
{
    if (!value) {
        return 0;
    }
    if (FUNC4(type, "cipher") == 0) {
        const EVP_CIPHER *c;
        c = FUNC2(value);
        if (!c)
            return 0;
        return FUNC3(ctx, EVP_PKEY_CTRL_CIPHER, -1, (void *)c);
    }
    if (FUNC4(type, "key") == 0)
        return FUNC1(ctx, EVP_PKEY_CTRL_SET_MAC_KEY, value);
    if (FUNC4(type, "hexkey") == 0)
        return FUNC0(ctx, EVP_PKEY_CTRL_SET_MAC_KEY, value);
    return -2;
}