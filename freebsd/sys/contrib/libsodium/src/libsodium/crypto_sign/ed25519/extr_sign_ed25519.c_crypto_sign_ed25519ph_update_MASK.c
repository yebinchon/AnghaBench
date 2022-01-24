#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  hs; } ;
typedef  TYPE_1__ crypto_sign_ed25519ph_state ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *,unsigned char const*,unsigned long long) ; 

int
FUNC1(crypto_sign_ed25519ph_state *state,
                             const unsigned char *m, unsigned long long mlen)
{
    return FUNC0(&state->hs, m, mlen);
}