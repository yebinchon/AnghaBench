#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {TYPE_1__* digest; int /*<<< orphan*/  md_data; } ;
struct TYPE_7__ {unsigned int md_size; int (* final ) (TYPE_2__*,unsigned char*) ;int /*<<< orphan*/  ctx_size; int /*<<< orphan*/  (* cleanup ) (TYPE_2__*) ;} ;
typedef  TYPE_2__ EVP_MD_CTX ;

/* Variables and functions */
 unsigned int EVP_MAX_MD_SIZE ; 
 int /*<<< orphan*/  EVP_MD_CTX_FLAG_CLEANED ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC3 (TYPE_2__*,unsigned char*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*) ; 

int FUNC5(EVP_MD_CTX *ctx, unsigned char *md, unsigned int *size)
{
    int ret;

    FUNC1(ctx->digest->md_size <= EVP_MAX_MD_SIZE);
    ret = ctx->digest->final(ctx, md);
    if (size != NULL)
        *size = ctx->digest->md_size;
    if (ctx->digest->cleanup) {
        ctx->digest->cleanup(ctx);
        FUNC0(ctx, EVP_MD_CTX_FLAG_CLEANED);
    }
    FUNC2(ctx->md_data, ctx->digest->ctx_size);
    return ret;
}