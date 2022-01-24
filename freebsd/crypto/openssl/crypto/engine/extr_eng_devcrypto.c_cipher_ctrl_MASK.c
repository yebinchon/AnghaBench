#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int /*<<< orphan*/  key; } ;
struct cipher_ctx {TYPE_1__ sess; int /*<<< orphan*/  op; } ;
typedef  int /*<<< orphan*/  EVP_CIPHER_CTX ;

/* Variables and functions */
 int /*<<< orphan*/  COP_ENCRYPT ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
#define  EVP_CTRL_COPY 129 
#define  EVP_CTRL_INIT 128 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC4(EVP_CIPHER_CTX *ctx, int type, int p1, void* p2)
{
    struct cipher_ctx *cipher_ctx =
        (struct cipher_ctx *)FUNC0(ctx);
    EVP_CIPHER_CTX *to_ctx = (EVP_CIPHER_CTX *)p2;
    struct cipher_ctx *to_cipher_ctx;

    switch (type) {
    case EVP_CTRL_COPY:
        if (cipher_ctx == NULL)
            return 1;
        /* when copying the context, a new session needs to be initialized */
        to_cipher_ctx =
            (struct cipher_ctx *)FUNC0(to_ctx);
        FUNC3(&to_cipher_ctx->sess, 0, sizeof(to_cipher_ctx->sess));
        return FUNC2(to_ctx, cipher_ctx->sess.key, FUNC1(ctx),
                           (cipher_ctx->op == COP_ENCRYPT));

    case EVP_CTRL_INIT:
        FUNC3(&cipher_ctx->sess, 0, sizeof(cipher_ctx->sess));
        return 1;

    default:
        break;
    }

    return -1;
}