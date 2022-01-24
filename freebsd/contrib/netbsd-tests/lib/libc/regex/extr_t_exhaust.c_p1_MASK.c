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
 char* FUNC0 (char*,char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 char* FUNC2 (char*,size_t) ; 

__attribute__((used)) static char *
FUNC3(size_t len)
{
	char *d, *s1, *s2, *s3;
	s1 = FUNC2("\\(", 60);
	s2 = FUNC2("(.*)", len);
	s3 = FUNC0(s1, s2);
	FUNC1(s2);
	FUNC1(s1);
	s1 = FUNC0(s3, ")");
	FUNC1(s3);
	d = FUNC0("(", s1);
	FUNC1(s1);
	return d;
}