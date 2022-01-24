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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,char const*,int,char const*) ; 
 char* FUNC1 (char**,size_t*,int*) ; 
 char* FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  stderr ; 

int
FUNC5(char **line, size_t *len, char **v, const char *name, int minlen,
    const char *filename, int lineno)
{
	int fieldlen;
	char *ptr;

	ptr = FUNC1(line, len, &fieldlen);
	if (ptr == NULL)
		return (1);
	if (fieldlen < minlen) {
		FUNC0(stderr, "%s:%d too short %s\n", filename, lineno, name);
		return (1);
	}
	if ((*v = FUNC2(fieldlen + 1)) == NULL) {
		FUNC4("malloc()");
		return (1);
	}
	FUNC3(*v, ptr, fieldlen);
	(*v)[fieldlen] = '\0';

	return (0);
}