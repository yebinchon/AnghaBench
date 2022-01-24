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
struct TYPE_6__ {TYPE_1__* bytes; } ;
typedef  TYPE_2__ X509_NAME ;
struct TYPE_5__ {int /*<<< orphan*/  length; int /*<<< orphan*/  data; } ;
typedef  int /*<<< orphan*/  EVP_MD_CTX ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,unsigned char*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  EVP_MD_CTX_FLAG_NON_FIPS_ALLOW ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*,int /*<<< orphan*/ *) ; 

unsigned long FUNC8(X509_NAME *x)
{
    EVP_MD_CTX *md_ctx = FUNC4();
    unsigned long ret = 0;
    unsigned char md[16];

    if (md_ctx == NULL)
        return ret;

    /* Make sure X509_NAME structure contains valid cached encoding */
    FUNC7(x, NULL);
    FUNC5(md_ctx, EVP_MD_CTX_FLAG_NON_FIPS_ALLOW);
    if (FUNC1(md_ctx, FUNC6(), NULL)
        && FUNC2(md_ctx, x->bytes->data, x->bytes->length)
        && FUNC0(md_ctx, md, NULL))
        ret = (((unsigned long)md[0]) | ((unsigned long)md[1] << 8L) |
               ((unsigned long)md[2] << 16L) | ((unsigned long)md[3] << 24L)
            ) & 0xffffffffL;
    FUNC3(md_ctx);

    return ret;
}