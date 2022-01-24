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
 char const* FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  sigfpecode ; 

const char *
FUNC1(int si_code)
{

	return (FUNC0(sigfpecode, si_code));
}