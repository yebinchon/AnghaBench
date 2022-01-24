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

/* Variables and functions */
 int /*<<< orphan*/  EVP_PKEY_CTRL_SET_MAC_KEY ; 
 int FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char const*) ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char const*) ; 
 scalar_t__ FUNC2 (char const*,char*) ; 

__attribute__((used)) static int FUNC3(EVP_PKEY_CTX *ctx,
                              const char *type, const char *value)
{
    if (!value) {
        return 0;
    }
    if (FUNC2(type, "key") == 0)
        return FUNC1(ctx, EVP_PKEY_CTRL_SET_MAC_KEY, value);
    if (FUNC2(type, "hexkey") == 0)
        return FUNC0(ctx, EVP_PKEY_CTRL_SET_MAC_KEY, value);
    return -2;
}