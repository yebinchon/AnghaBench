#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  key_len; TYPE_1__* cipher; } ;
struct TYPE_5__ {int flags; } ;
typedef  TYPE_2__ EVP_CIPHER_CTX ;

/* Variables and functions */
 int FUNC0 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned char*) ; 
 int EVP_CIPH_RAND_KEY ; 
 int /*<<< orphan*/  EVP_CTRL_RAND_KEY ; 
 scalar_t__ FUNC1 (unsigned char*,int /*<<< orphan*/ ) ; 

int FUNC2(EVP_CIPHER_CTX *ctx, unsigned char *key)
{
    if (ctx->cipher->flags & EVP_CIPH_RAND_KEY)
        return FUNC0(ctx, EVP_CTRL_RAND_KEY, 0, key);
    if (FUNC1(key, ctx->key_len) <= 0)
        return 0;
    return 1;
}