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
typedef  int /*<<< orphan*/  U32 ;

/* Variables and functions */
 double FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ UINT_MAX ; 
 double FUNC1 (int) ; 

__attribute__((used)) static double FUNC2(U32* seed, double mean)
{
    double const u = FUNC0(seed) / (double) UINT_MAX;
    return FUNC1(1-u) * (-mean);
}