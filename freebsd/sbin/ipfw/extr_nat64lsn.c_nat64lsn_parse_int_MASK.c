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
typedef  scalar_t__ uint32_t ;

/* Variables and functions */
 int /*<<< orphan*/  EX_USAGE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,char const*,char const*) ; 
 scalar_t__ FUNC1 (char const*,char**,int) ; 

__attribute__((used)) static uint32_t
FUNC2(const char *arg, const char *desc)
{
	char *p;
	uint32_t val;

	val = (uint32_t)FUNC1(arg, &p, 10);
	if (*p != '\0')
		FUNC0(EX_USAGE, "Invalid %s value: %s\n", desc, arg);
	return (val);
}