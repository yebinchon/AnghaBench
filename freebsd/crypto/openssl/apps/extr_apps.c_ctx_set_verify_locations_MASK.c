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
typedef  int /*<<< orphan*/  SSL_CTX ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *,char const*,char const*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 

int FUNC3(SSL_CTX *ctx, const char *CAfile,
                             const char *CApath, int noCAfile, int noCApath)
{
    if (CAfile == NULL && CApath == NULL) {
        if (!noCAfile && FUNC2(ctx) <= 0)
            return 0;
        if (!noCApath && FUNC1(ctx) <= 0)
            return 0;

        return 1;
    }
    return FUNC0(ctx, CAfile, CApath);
}