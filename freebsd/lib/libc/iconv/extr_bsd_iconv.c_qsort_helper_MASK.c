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
 int FUNC0 (char const* const,char const* const) ; 

__attribute__((used)) static int
FUNC1(const void *first, const void *second)
{
	const char * const *s1;
	const char * const *s2;

	s1 = first;
	s2 = second;
	return (FUNC0(*s1, *s2));
}