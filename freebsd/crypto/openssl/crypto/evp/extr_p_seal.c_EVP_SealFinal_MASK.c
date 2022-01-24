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
typedef  int /*<<< orphan*/  EVP_CIPHER_CTX ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *,unsigned char*,int*) ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

int FUNC2(EVP_CIPHER_CTX *ctx, unsigned char *out, int *outl)
{
    int i;
    i = FUNC0(ctx, out, outl);
    if (i)
        i = FUNC1(ctx, NULL, NULL, NULL, NULL);
    return i;
}