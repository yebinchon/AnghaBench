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
typedef  int /*<<< orphan*/  ECDSA_SIG ;

/* Variables and functions */
 int /*<<< orphan*/  EC_F_ECDSA_SIG_NEW ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ERR_R_MALLOC_FAILURE ; 
 int /*<<< orphan*/ * FUNC1 (int) ; 

ECDSA_SIG *FUNC2(void)
{
    ECDSA_SIG *sig = FUNC1(sizeof(*sig));
    if (sig == NULL)
        FUNC0(EC_F_ECDSA_SIG_NEW, ERR_R_MALLOC_FAILURE);
    return sig;
}