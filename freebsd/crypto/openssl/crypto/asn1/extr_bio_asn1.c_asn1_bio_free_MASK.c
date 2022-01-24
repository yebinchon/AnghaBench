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
struct TYPE_4__ {struct TYPE_4__* buf; } ;
typedef  TYPE_1__ BIO_ASN1_BUF_CTX ;
typedef  int /*<<< orphan*/  BIO ;

/* Variables and functions */
 TYPE_1__* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 

__attribute__((used)) static int FUNC4(BIO *b)
{
    BIO_ASN1_BUF_CTX *ctx;

    if (b == NULL)
        return 0;

    ctx = FUNC0(b);
    if (ctx == NULL)
        return 0;

    FUNC3(ctx->buf);
    FUNC3(ctx);
    FUNC1(b, NULL);
    FUNC2(b, 0);

    return 1;
}