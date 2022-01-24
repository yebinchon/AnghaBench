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
 size_t FUNC0 (char const*) ; 
 scalar_t__ FUNC1 (char const*,char const*,size_t) ; 
 char* FUNC2 (char const*) ; 

__attribute__((used)) static char *
FUNC3(const char *path, const char *strip)
{
	size_t len;

	if (strip == NULL)
		return (FUNC2(path));

	len = FUNC0(strip);
	if (FUNC1(path, strip, len) == 0) {
		if (strip[len - 1] != '/' && path[len] == '/')
			len++;
		return (FUNC2(path + len));
	}

	return (FUNC2(path));
}