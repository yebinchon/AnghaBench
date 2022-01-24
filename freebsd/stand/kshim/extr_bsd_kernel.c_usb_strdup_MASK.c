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
 int /*<<< orphan*/  XXX ; 
 char* FUNC0 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,char const*,int) ; 
 int FUNC2 (char const*) ; 

char   *
FUNC3(const char *str)
{
	char *tmp;
	int len;

	len = 1 + FUNC2(str);

	tmp = FUNC0(len,XXX,XXX);
	if (tmp == NULL)
		return (NULL);

	FUNC1(tmp, str, len);
	return (tmp);
}