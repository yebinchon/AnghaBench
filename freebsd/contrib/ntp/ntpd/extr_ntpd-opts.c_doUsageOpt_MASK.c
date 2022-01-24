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
typedef  int /*<<< orphan*/  tOptions ;
typedef  int /*<<< orphan*/  tOptDesc ;

/* Variables and functions */
 int NTPD_EXIT_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  ntpdOptions ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static void
FUNC2(tOptions * opts, tOptDesc * od)
{
    int ex_code;
    ex_code = NTPD_EXIT_SUCCESS;
    FUNC1(&ntpdOptions, ex_code);
    /* NOTREACHED */
    FUNC0(1);
    (void)opts;
    (void)od;
}