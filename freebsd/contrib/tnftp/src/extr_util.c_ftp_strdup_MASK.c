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
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int /*<<< orphan*/  FUNC1 (int,char*) ; 
 char* FUNC2 (char const*) ; 

char *
FUNC3(const char *str)
{
	char *s;

	if (str == NULL)
		FUNC1(1, "ftp_strdup: called with NULL argument");
	s = FUNC2(str);
	if (s == NULL)
		FUNC0(1, "Unable to allocate memory for string copy");
	return (s);
}