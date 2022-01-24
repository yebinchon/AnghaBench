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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 char* FUNC1 (char*,char const*,size_t const) ; 
 int FUNC2 (char const*) ; 
 char* FUNC3 (size_t const) ; 

extern char *
FUNC4(const char *src)
{
	FUNC0(src != NULL);
	const size_t size = FUNC2(src) + 1;
	char *dest = FUNC3(size);
	return FUNC1(dest, src, size);
}