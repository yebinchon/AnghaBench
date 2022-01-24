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
 char* FUNC0 (char*,char) ; 
 int FUNC1 (char*) ; 

__attribute__((used)) static int FUNC2(char *str, char **name, char **val)
{
	int len = 0;
	char *p, *q;

	*name = *val = NULL;

	p = str;

	while (*p == ' ' || *p == '\t' || *p == '\n')
		p++;

	q = FUNC0(p, '=');
	if (q)
		*q++ = '\0';

	len = FUNC1(str) + 1;
	str = q;

	q = p + FUNC1(p);
	while (q != p && (*q == '\0' || *q == ' ' || *q == '\t' || *q == '\n'))
		*q-- = '\0';

	*name = p;

	p = str;
	if (!p)
		return len;

	while (*p == ' ' || *p == '\t' || *p == '\n')
		p++;

	q = p + FUNC1(p);
	len += (int)(q - str) + 1;
	while (q != p && (*q == '\0' || *q == ' ' || *q == '\t' || *q == '\n'))
		*q-- = '\0';
	*val = p;

	return len;
}