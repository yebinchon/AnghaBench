#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct group {scalar_t__ gr_gid; char** gr_mem; } ;
struct TYPE_2__ {scalar_t__ pw_gid; } ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int errno ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 char* FUNC2 (int /*<<< orphan*/ *,size_t*) ; 
 int /*<<< orphan*/ * FUNC3 (char*,char*) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 struct group* FUNC5 (char*) ; 
 char* FUNC6 (size_t) ; 
 int /*<<< orphan*/  FUNC7 (char*,char*,size_t) ; 
 TYPE_1__* pw ; 
 scalar_t__ FUNC8 (char*,char*) ; 
 char* FUNC9 (char*) ; 
 int /*<<< orphan*/  FUNC10 (char*,char*) ; 
 char* FUNC11 (char*,char*) ; 

__attribute__((used)) static int
FUNC12(char *fname, char *name, int pwset, char **residue, int *ecode)
{
	FILE *fd;
	int found = 0;
	size_t len;
	char *line, *mp, *p;

	if (ecode != NULL)
		*ecode = 0;
	if ((fd = FUNC3(fname, "r")) != NULL) {
		while (!found && (line = FUNC2(fd, &len)) != NULL) {
			/* skip comments */
			if (line[0] == '#')
				continue;
			if (line[len - 1] == '\n') {
				line[len - 1] = '\0';
				mp = NULL;
			} else {
				if ((mp = FUNC6(len + 1)) == NULL)
					FUNC0("Ran out of memory.");
				FUNC7(mp, line, len);
				mp[len] = '\0';
				line = mp;
			}
			/* avoid possible leading and trailing whitespace */
			p = FUNC11(line, " \t");
			/* skip empty lines */
			if (p == NULL)
				goto nextline;
			/*
			 * if first chr is '@', check group membership
			 */
			if (p[0] == '@') {
				int i = 0;
				struct group *grp;

				if (p[1] == '\0') /* single @ matches anyone */
					found = 1;
				else {
					if ((grp = FUNC5(p+1)) == NULL)
						goto nextline;
					/*
					 * Check user's default group
					 */
					if (pwset && grp->gr_gid == pw->pw_gid)
						found = 1;
					/*
					 * Check supplementary groups
					 */
					while (!found && grp->gr_mem[i])
						found = FUNC8(name,
							grp->gr_mem[i++])
							== 0;
				}
			}
			/*
			 * Otherwise, just check for username match
			 */
			else
				found = FUNC8(p, name) == 0;
			/*
			 * Save the rest of line to "residue" if matched
			 */
			if (found && residue) {
				if ((p = FUNC11(NULL, "")) != NULL)
					p += FUNC10(p, " \t");
				if (p && *p) {
				 	if ((*residue = FUNC9(p)) == NULL)
						FUNC0("Ran out of memory.");
				} else
					*residue = NULL;
			}
nextline:
			if (mp)
				FUNC4(mp);
		}
		(void) FUNC1(fd);
	} else if (ecode != NULL)
		*ecode = errno;
	return (found);
}