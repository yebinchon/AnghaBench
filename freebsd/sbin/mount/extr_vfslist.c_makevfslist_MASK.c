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
 char** FUNC0 (size_t) ; 
 int skipvfs ; 
 char* FUNC1 (char*,char) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 

const char **
FUNC3(char *fslist)
{
	const char **av;
	int i;
	char *nextcp;

	if (fslist == NULL)
		return (NULL);
	if (fslist[0] == 'n' && fslist[1] == 'o') {
		fslist += 2;
		skipvfs = 1;
	}
	for (i = 0, nextcp = fslist; *nextcp; nextcp++)
		if (*nextcp == ',')
			i++;
	if ((av = FUNC0((size_t)(i + 2) * sizeof(char *))) == NULL) {
		FUNC2("malloc failed");
		return (NULL);
	}
	nextcp = fslist;
	i = 0;
	av[i++] = nextcp;
	while ((nextcp = FUNC1(nextcp, ',')) != NULL) {
		*nextcp++ = '\0';
		av[i++] = nextcp;
	}
	av[i++] = NULL;
	return (av);
}