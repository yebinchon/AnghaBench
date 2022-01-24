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
struct group {char* gr_name; char* gr_passwd; char** gr_mem; int /*<<< orphan*/  gr_gid; } ;

/* Variables and functions */
 char** FUNC0 (char**,int) ; 
 int FUNC1 (char*,char*,int /*<<< orphan*/ *) ; 
 char* FUNC2 (char*,char) ; 
 char* FUNC3 (char**,char*) ; 

__attribute__((used)) static bool
FUNC4(char *line, struct group *gr)
{
	char *loc;
	int ndx;

	/* Assign non-member information to structure. */
	gr->gr_name = line;
	if ((loc = FUNC2(line, ':')) == NULL)
		return (false);
	*loc = '\0';
	gr->gr_passwd = loc + 1;
	if (*gr->gr_passwd == ':')
		*gr->gr_passwd = '\0';
	else {
		if ((loc = FUNC2(loc + 1, ':')) == NULL)
			return (false);
		*loc = '\0';
	}
	if (FUNC1(loc + 1, "%u", &gr->gr_gid) != 1)
		return (false);

	/* Assign member information to structure. */
	if ((loc = FUNC2(loc + 1, ':')) == NULL)
		return (false);
	line = loc + 1;
	gr->gr_mem = NULL;
	ndx = 0;
	do {
		gr->gr_mem = FUNC0(gr->gr_mem, sizeof(*gr->gr_mem) *
		    (ndx + 1));
		if (gr->gr_mem == NULL)
			return (false);

		/* Skip locations without members (i.e., empty string). */
		do {
			gr->gr_mem[ndx] = FUNC3(&line, ",");
		} while (gr->gr_mem[ndx] != NULL && *gr->gr_mem[ndx] == '\0');
	} while (gr->gr_mem[ndx++] != NULL);

	return (true);
}