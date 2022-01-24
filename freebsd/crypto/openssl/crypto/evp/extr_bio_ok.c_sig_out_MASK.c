#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int buf_len; int blockout; scalar_t__ sigio; int /*<<< orphan*/ * buf; int /*<<< orphan*/ * md; } ;
typedef  int /*<<< orphan*/  EVP_MD_CTX ;
typedef  int /*<<< orphan*/  EVP_MD ;
typedef  TYPE_1__ BIO_OK_CTX ;
typedef  int /*<<< orphan*/  BIO ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ *) ; 
 void* FUNC6 (int /*<<< orphan*/ *) ; 
 int FUNC7 (int /*<<< orphan*/  const*) ; 
 int OK_BLOCK_SIZE ; 
 scalar_t__ FUNC8 (void*,int) ; 
 int /*<<< orphan*/  WELLKNOWN ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,void*,int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC12(BIO *b)
{
    BIO_OK_CTX *ctx;
    EVP_MD_CTX *md;
    const EVP_MD *digest;
    int md_size;
    void *md_data;

    ctx = FUNC1(b);
    md = ctx->md;
    digest = FUNC5(md);
    md_size = FUNC7(digest);
    md_data = FUNC6(md);

    if (ctx->buf_len + 2 * md_size > OK_BLOCK_SIZE)
        return 1;

    if (!FUNC3(md, digest, NULL))
        goto berr;
    /*
     * FIXME: there's absolutely no guarantee this makes any sense at all,
     * particularly now EVP_MD_CTX has been restructured.
     */
    if (FUNC8(md_data, md_size) <= 0)
        goto berr;
    FUNC10(&(ctx->buf[ctx->buf_len]), md_data, md_size);
    FUNC9(&(ctx->buf[ctx->buf_len]), md_size);
    ctx->buf_len += md_size;

    if (!FUNC4(md, WELLKNOWN, FUNC11(WELLKNOWN)))
        goto berr;
    if (!FUNC2(md, &(ctx->buf[ctx->buf_len]), NULL))
        goto berr;
    ctx->buf_len += md_size;
    ctx->blockout = 1;
    ctx->sigio = 0;
    return 1;
 berr:
    FUNC0(b);
    return 0;
}