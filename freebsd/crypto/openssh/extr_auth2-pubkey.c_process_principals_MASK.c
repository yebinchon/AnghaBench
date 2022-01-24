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
typedef  int u_int ;
struct sshkey_cert {int dummy; } ;
struct sshauthopt {int dummy; } ;
struct ssh {int dummy; } ;
typedef  int /*<<< orphan*/  loc ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct ssh*,char*,struct sshkey_cert const*,char*,struct sshauthopt**) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int FUNC2 (char**,size_t*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (char*,int,char*,char const*,scalar_t__) ; 
 char* FUNC4 (char*,char) ; 

__attribute__((used)) static int
FUNC5(struct ssh *ssh, FILE *f, const char *file,
    const struct sshkey_cert *cert, struct sshauthopt **authoptsp)
{
	char loc[256], *line = NULL, *cp, *ep;
	size_t linesize = 0;
	u_long linenum = 0;
	u_int found_principal = 0;

	if (authoptsp != NULL)
		*authoptsp = NULL;

	while (FUNC2(&line, &linesize, f) != -1) {
		linenum++;
		/* Always consume entire input */
		if (found_principal)
			continue;

		/* Skip leading whitespace. */
		for (cp = line; *cp == ' ' || *cp == '\t'; cp++)
			;
		/* Skip blank and comment lines. */
		if ((ep = FUNC4(cp, '#')) != NULL)
			*ep = '\0';
		if (!*cp || *cp == '\n')
			continue;

		FUNC3(loc, sizeof(loc), "%.200s:%lu", file, linenum);
		if (FUNC0(ssh, cp, cert, loc, authoptsp) == 0)
			found_principal = 1;
	}
	FUNC1(line);
	return found_principal;
}