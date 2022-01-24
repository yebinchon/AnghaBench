#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  cipher_data; } ;
typedef  TYPE_1__ EVP_CIPHER_CTX ;
typedef  int /*<<< orphan*/  EVP_CHACHA_AEAD_CTX ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC1 () ; 
 int /*<<< orphan*/ * FUNC2 (TYPE_1__*) ; 

__attribute__((used)) static int FUNC3(EVP_CIPHER_CTX *ctx)
{
    EVP_CHACHA_AEAD_CTX *actx = FUNC2(ctx);
    if (actx)
        FUNC0(ctx->cipher_data, sizeof(*actx) + FUNC1());
    return 1;
}