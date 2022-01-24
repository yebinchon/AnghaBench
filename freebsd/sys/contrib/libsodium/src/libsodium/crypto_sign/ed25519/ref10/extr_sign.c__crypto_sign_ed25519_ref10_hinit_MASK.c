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
typedef  int /*<<< orphan*/  crypto_hash_sha512_state ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned char const*,int) ; 

void
FUNC2(crypto_hash_sha512_state *hs, int prehashed)
{
    static const unsigned char DOM2PREFIX[32 + 2] = {
        'S', 'i', 'g', 'E', 'd', '2', '5', '5', '1', '9', ' ',
        'n', 'o', ' ',
        'E', 'd', '2', '5', '5', '1', '9', ' ',
        'c', 'o', 'l', 'l', 'i', 's', 'i', 'o', 'n', 's', 1, 0
    };

    FUNC0(hs);
    if (prehashed) {
        FUNC1(hs, DOM2PREFIX, sizeof DOM2PREFIX);
    }
}