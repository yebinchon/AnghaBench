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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,size_t,size_t) ; 
 char* FUNC1 (size_t) ; 
 int /*<<< orphan*/  FUNC2 (char*,char const*) ; 
 size_t FUNC3 (char const*) ; 

__attribute__((used)) static char *
FUNC4(const char *str, size_t len)
{
	size_t slen = FUNC3(str);
	char *p = FUNC1(slen * len + 1);
	FUNC0(p != NULL, "slen=%zu, len=%zu", slen, len);
	for (size_t i = 0; i < len; i++)
		FUNC2(&p[i * slen], str);
	return p;
}