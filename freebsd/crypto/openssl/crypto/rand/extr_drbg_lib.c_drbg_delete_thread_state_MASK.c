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
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  private_drbg ; 
 int /*<<< orphan*/  public_drbg ; 

void FUNC3(void)
{
    RAND_DRBG *drbg;

    drbg = FUNC0(&public_drbg);
    FUNC1(&public_drbg, NULL);
    FUNC2(drbg);

    drbg = FUNC0(&private_drbg);
    FUNC1(&private_drbg, NULL);
    FUNC2(drbg);
}