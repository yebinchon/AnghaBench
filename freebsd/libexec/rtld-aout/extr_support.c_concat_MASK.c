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
 int /*<<< orphan*/  FUNC0 (char*,char const*) ; 
 scalar_t__ FUNC1 (char const*) ; 
 char* FUNC2 (int) ; 

char *
FUNC3(const char *s1, const char *s2, const char *s3)
{
	int len = 1;
	char *s;
	if (s1)
		len += FUNC1(s1);
	if (s2)
		len += FUNC1(s2);
	if (s3)
		len += FUNC1(s3);
	s = FUNC2(len);
	s[0] = '\0';
	if (s1)
		FUNC0(s, s1);
	if (s2)
		FUNC0(s, s2);
	if (s3)
		FUNC0(s, s3);
	return s;
}