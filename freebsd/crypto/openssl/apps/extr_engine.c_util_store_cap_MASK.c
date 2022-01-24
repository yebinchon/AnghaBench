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
struct util_store_cap_data {scalar_t__ engine; scalar_t__ ok; int /*<<< orphan*/  cap_size; int /*<<< orphan*/  cap_buf; } ;
typedef  int /*<<< orphan*/  buf ;
typedef  int /*<<< orphan*/  OSSL_STORE_LOADER ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int,char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static void FUNC4(const OSSL_STORE_LOADER *loader, void *arg)
{
    struct util_store_cap_data *ctx = arg;

    if (FUNC1(loader) == ctx->engine) {
        char buf[256];
        FUNC0(buf, sizeof(buf), "STORE(%s)",
                     FUNC2(loader));
        if (!FUNC3(ctx->cap_buf, ctx->cap_size, buf))
            ctx->ok = 0;
    }
}