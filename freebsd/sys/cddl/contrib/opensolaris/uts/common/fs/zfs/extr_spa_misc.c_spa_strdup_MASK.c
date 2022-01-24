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
 int /*<<< orphan*/  KM_SLEEP ; 
 int /*<<< orphan*/  FUNC0 (char const*,char*,size_t) ; 
 char* FUNC1 (size_t,int /*<<< orphan*/ ) ; 
 size_t FUNC2 (char const*) ; 

char *
FUNC3(const char *s)
{
	size_t len;
	char *new;

	len = FUNC2(s);
	new = FUNC1(len + 1, KM_SLEEP);
	FUNC0(s, new, len);
	new[len] = '\0';

	return (new);
}