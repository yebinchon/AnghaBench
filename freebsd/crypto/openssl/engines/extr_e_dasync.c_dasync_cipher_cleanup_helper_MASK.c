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
struct dasync_pipeline_ctx {int /*<<< orphan*/  inner_cipher_data; } ;
typedef  int /*<<< orphan*/  EVP_CIPHER_CTX ;
typedef  int /*<<< orphan*/  EVP_CIPHER ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(EVP_CIPHER_CTX *ctx,
                                        const EVP_CIPHER *cipher)
{
    struct dasync_pipeline_ctx *pipe_ctx =
        (struct dasync_pipeline_ctx *)FUNC0(ctx);

    FUNC2(pipe_ctx->inner_cipher_data,
                       FUNC1(cipher));

    return 1;
}