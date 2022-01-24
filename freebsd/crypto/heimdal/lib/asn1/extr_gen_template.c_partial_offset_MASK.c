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
 scalar_t__ FUNC0 (char**,char*,char const*,char const*) ; 
 int /*<<< orphan*/  FUNC1 (int,char*) ; 
 char* FUNC2 (char*) ; 

__attribute__((used)) static char *
FUNC3(const char *basetype, const char *name, int need_offset)
{
    char *str;
    if (name == NULL || need_offset == 0)
	return FUNC2("0");
    if (FUNC0(&str, "offsetof(struct %s, %s)", basetype, name) < 0 || str == NULL)
	FUNC1(1, "malloc");
    return str;
}