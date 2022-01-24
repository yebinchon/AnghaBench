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
typedef  int /*<<< orphan*/  RAND_DRBG ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  OPENSSL_INIT_THREAD_RAND ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  do_rand_drbg_init ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  master_drbg ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  private_drbg ; 
 int /*<<< orphan*/  rand_drbg_init ; 

RAND_DRBG *FUNC5(void)
{
    RAND_DRBG *drbg;

    if (!FUNC2(&rand_drbg_init, do_rand_drbg_init))
        return NULL;

    drbg = FUNC0(&private_drbg);
    if (drbg == NULL) {
        if (!FUNC4(OPENSSL_INIT_THREAD_RAND))
            return NULL;
        drbg = FUNC3(master_drbg);
        FUNC1(&private_drbg, drbg);
    }
    return drbg;
}