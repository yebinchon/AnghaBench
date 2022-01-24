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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  do_rand_drbg_init ; 
 int /*<<< orphan*/ * master_drbg ; 
 int /*<<< orphan*/  rand_drbg_init ; 

RAND_DRBG *FUNC1(void)
{
    if (!FUNC0(&rand_drbg_init, do_rand_drbg_init))
        return NULL;

    return master_drbg;
}