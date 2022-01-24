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
typedef  scalar_t__ u_long ;
struct sshkey {int dummy; } ;
struct sshauthopt {int dummy; } ;
struct ssh {int dummy; } ;
struct passwd {int dummy; } ;
typedef  int /*<<< orphan*/  loc ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct ssh*,struct passwd*,struct sshkey*,char*,char*,struct sshauthopt**) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int FUNC2 (char**,size_t*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (char**) ; 
 int /*<<< orphan*/  FUNC4 (char*,int,char*,char*,scalar_t__) ; 

__attribute__((used)) static int
FUNC5(struct ssh *ssh, struct passwd *pw, FILE *f,
    char *file, struct sshkey *key, struct sshauthopt **authoptsp)
{
	char *cp, *line = NULL, loc[256];
	size_t linesize = 0;
	int found_key = 0;
	u_long linenum = 0;

	if (authoptsp != NULL)
		*authoptsp = NULL;

	while (FUNC2(&line, &linesize, f) != -1) {
		linenum++;
		/* Always consume entire file */
		if (found_key)
			continue;

		/* Skip leading whitespace, empty and comment lines. */
		cp = line;
		FUNC3(&cp);
		if (!*cp || *cp == '\n' || *cp == '#')
			continue;
		FUNC4(loc, sizeof(loc), "%.200s:%lu", file, linenum);
		if (FUNC0(ssh, pw, key, cp, loc, authoptsp) == 0)
			found_key = 1;
	}
	FUNC1(line);
	return found_key;
}