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
typedef  int /*<<< orphan*/  slist_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 char* FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (char*,int,char*,char*) ; 
 int FUNC4 (char*) ; 
 char* FUNC5 (char**,char*) ; 

void
FUNC6(slist_t *list, char *args)
{
	char	*p, *e;
	int	len;

	if (args == NULL) {
		FUNC0(list, NULL);
		return;
	}
	while ((p = FUNC5(&args, ",")) != NULL) {
		if (*p == '\0')
			continue;
		len = FUNC4(p) + 3;	/* "," + p + ",\0" */
		if ((e = FUNC1(len)) == NULL)
			FUNC2("memory allocation error");
		FUNC3(e, len, ",%s,", p);
		FUNC0(list, e);
	}
}