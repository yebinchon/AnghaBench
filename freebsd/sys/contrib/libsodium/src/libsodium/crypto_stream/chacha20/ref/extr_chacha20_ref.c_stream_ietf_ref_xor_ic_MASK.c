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
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int /*<<< orphan*/  uint32_t ;
struct chacha_ctx {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct chacha_ctx*,unsigned char const*,unsigned char*,unsigned long long) ; 
 int /*<<< orphan*/  FUNC2 (struct chacha_ctx*,unsigned char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct chacha_ctx*,unsigned char const*) ; 
 int /*<<< orphan*/  FUNC4 (struct chacha_ctx*,int) ; 

__attribute__((used)) static int
FUNC5(unsigned char *c, const unsigned char *m,
                       unsigned long long mlen, const unsigned char *n,
                       uint32_t ic, const unsigned char *k)
{
    struct chacha_ctx ctx;
    uint8_t           ic_bytes[4];

    if (!mlen) {
        return 0;
    }
    FUNC0(ic_bytes, ic);
    FUNC3(&ctx, k);
    FUNC2(&ctx, n, ic_bytes);
    FUNC1(&ctx, m, c, mlen);
    FUNC4(&ctx, sizeof ctx);

    return 0;
}