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

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  do_rand_init ; 
 int /*<<< orphan*/  rand_init ; 
 int /*<<< orphan*/  FUNC1 (int) ; 

void FUNC2(int keep)
{
    if (FUNC0(&rand_init, do_rand_init))
        FUNC1(keep);
}