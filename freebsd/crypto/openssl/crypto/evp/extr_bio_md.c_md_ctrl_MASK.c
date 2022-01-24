#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/ * digest; } ;
typedef  TYPE_1__ EVP_MD_CTX ;
typedef  int /*<<< orphan*/  EVP_MD ;
typedef  int /*<<< orphan*/  BIO ;

/* Variables and functions */
#define  BIO_CTRL_DUP 134 
#define  BIO_CTRL_RESET 133 
#define  BIO_C_DO_STATE_MACHINE 132 
#define  BIO_C_GET_MD 131 
#define  BIO_C_GET_MD_CTX 130 
#define  BIO_C_SET_MD 129 
#define  BIO_C_SET_MD_CTX 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 long FUNC2 (int /*<<< orphan*/ *,int,long,void*) ; 
 TYPE_1__* FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,void*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int) ; 
 long FUNC8 (TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*,TYPE_1__*) ; 

__attribute__((used)) static long FUNC10(BIO *b, int cmd, long num, void *ptr)
{
    EVP_MD_CTX *ctx, *dctx, **pctx;
    const EVP_MD **ppmd;
    EVP_MD *md;
    long ret = 1;
    BIO *dbio, *next;


    ctx = FUNC3(b);
    next = FUNC5(b);

    switch (cmd) {
    case BIO_CTRL_RESET:
        if (FUNC4(b))
            ret = FUNC8(ctx, ctx->digest, NULL);
        else
            ret = 0;
        if (ret > 0)
            ret = FUNC2(next, cmd, num, ptr);
        break;
    case BIO_C_GET_MD:
        if (FUNC4(b)) {
            ppmd = ptr;
            *ppmd = ctx->digest;
        } else
            ret = 0;
        break;
    case BIO_C_GET_MD_CTX:
        pctx = ptr;
        *pctx = ctx;
        FUNC7(b, 1);
        break;
    case BIO_C_SET_MD_CTX:
        if (FUNC4(b))
            FUNC6(b, ptr);
        else
            ret = 0;
        break;
    case BIO_C_DO_STATE_MACHINE:
        FUNC0(b);
        ret = FUNC2(next, cmd, num, ptr);
        FUNC1(b);
        break;

    case BIO_C_SET_MD:
        md = ptr;
        ret = FUNC8(ctx, md, NULL);
        if (ret > 0)
            FUNC7(b, 1);
        break;
    case BIO_CTRL_DUP:
        dbio = ptr;
        dctx = FUNC3(dbio);
        if (!FUNC9(dctx, ctx))
            return 0;
        FUNC7(b, 1);
        break;
    default:
        ret = FUNC2(next, cmd, num, ptr);
        break;
    }
    return ret;
}