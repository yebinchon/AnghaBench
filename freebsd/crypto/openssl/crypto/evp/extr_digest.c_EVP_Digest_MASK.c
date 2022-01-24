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
typedef  int /*<<< orphan*/  EVP_MD_CTX ;
typedef  int /*<<< orphan*/  EVP_MD ;
typedef  int /*<<< orphan*/  ENGINE ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,unsigned char*,unsigned int*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,void const*,size_t) ; 
 int /*<<< orphan*/  EVP_MD_CTX_FLAG_ONESHOT ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

int FUNC6(const void *data, size_t count,
               unsigned char *md, unsigned int *size, const EVP_MD *type,
               ENGINE *impl)
{
    EVP_MD_CTX *ctx = FUNC4();
    int ret;

    if (ctx == NULL)
        return 0;
    FUNC5(ctx, EVP_MD_CTX_FLAG_ONESHOT);
    ret = FUNC1(ctx, type, impl)
        && FUNC2(ctx, data, count)
        && FUNC0(ctx, md, size);
    FUNC3(ctx);

    return ret;
}