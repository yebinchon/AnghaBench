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
struct chacha_ctx {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct chacha_ctx*,unsigned char*,unsigned char*,unsigned long long) ; 
 int /*<<< orphan*/  FUNC2 (struct chacha_ctx*,unsigned char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct chacha_ctx*,unsigned char const*) ; 
 int crypto_stream_chacha20_KEYBYTES ; 
 int /*<<< orphan*/  FUNC4 (unsigned char*,int /*<<< orphan*/ ,unsigned long long) ; 
 int /*<<< orphan*/  FUNC5 (struct chacha_ctx*,int) ; 

__attribute__((used)) static int
FUNC6(unsigned char *c, unsigned long long clen,
                const unsigned char *n, const unsigned char *k)
{
    struct chacha_ctx ctx;

    if (!clen) {
        return 0;
    }
    FUNC0(crypto_stream_chacha20_KEYBYTES == 256 / 8);
    FUNC3(&ctx, k);
    FUNC2(&ctx, n, NULL);
    FUNC4(c, 0, clen);
    FUNC1(&ctx, c, c, clen);
    FUNC5(&ctx, sizeof ctx);

    return 0;
}