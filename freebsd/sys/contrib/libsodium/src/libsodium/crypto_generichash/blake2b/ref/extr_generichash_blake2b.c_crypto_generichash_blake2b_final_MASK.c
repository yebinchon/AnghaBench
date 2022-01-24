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
typedef  int /*<<< orphan*/  crypto_generichash_blake2b_state ;

/* Variables and functions */
 size_t const UINT8_MAX ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

int
FUNC2(crypto_generichash_blake2b_state *state,
                                 unsigned char *out, const size_t outlen)
{
    FUNC0(outlen <= UINT8_MAX);
    return FUNC1(state, (uint8_t *) out, (uint8_t) outlen);
}