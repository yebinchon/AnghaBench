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
 int FUNC0 (char const*,char const*) ; 

__attribute__((used)) static int
FUNC1(const void *i1, const void *i2)
{
	const char *s1 = ((const char * const *)i1)[0];
	const char *s2 = ((const char * const *)i2)[0];

	return FUNC0(s1, s2);
}