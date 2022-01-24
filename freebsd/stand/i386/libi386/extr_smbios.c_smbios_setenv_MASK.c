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
typedef  int /*<<< orphan*/  caddr_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char const*,char const*,int) ; 
 char* FUNC1 (int /*<<< orphan*/ ,int const) ; 

__attribute__((used)) static void
FUNC2(const char *name, caddr_t addr, const int offset)
{
	const char*	val;

	val = FUNC1(addr, offset);
	if (val != NULL)
		FUNC0(name, val, 1);
}