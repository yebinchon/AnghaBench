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
 scalar_t__ FUNC0 (char const*,char*) ; 

__attribute__((used)) static int FUNC1(const char *role1, const char *role2)
{
	return (FUNC0(role1, "sta") == 0 && FUNC0(role2, "ap") == 0) ||
		(FUNC0(role1, "ap") == 0 && FUNC0(role2, "sta") == 0);
}