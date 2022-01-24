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

/* Variables and functions */
 int /*<<< orphan*/  MD5_DIGEST_LENGTH ; 
 int FUNC0 (unsigned char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (unsigned char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(EVP_MD_CTX *ctx, unsigned char *md)
{
    int ret;
    ret = FUNC0(md, FUNC1(ctx));

    if (ret > 0) {
        FUNC2(md, MD5_DIGEST_LENGTH);
    }
    return ret;
}