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
struct sshkey {int dummy; } ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int SSH_ERR_ALLOC_FAIL ; 
 int SSH_ERR_INVALID_FORMAT ; 
 int SSH_ERR_SYSTEM_ERROR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int FUNC3 (char**,size_t*,int /*<<< orphan*/ *) ; 
 int FUNC4 (struct sshkey*,char**) ; 
 scalar_t__ FUNC5 (char*,char*) ; 
 size_t FUNC6 (char*,char*) ; 
 char* FUNC7 (char*) ; 
 scalar_t__ FUNC8 (char*,char*,int) ; 

__attribute__((used)) static int
FUNC9(struct sshkey *k, const char *filename, char **commentp)
{
	FILE *f;
	char *line = NULL, *cp;
	size_t linesize = 0;
	int r;

	if (commentp != NULL)
		*commentp = NULL;
	if ((f = FUNC1(filename, "r")) == NULL)
		return SSH_ERR_SYSTEM_ERROR;
	while (FUNC3(&line, &linesize, f) != -1) {
		cp = line;
		switch (*cp) {
		case '#':
		case '\n':
		case '\0':
			continue;
		}
		/* Abort loading if this looks like a private key */
		if (FUNC8(cp, "-----BEGIN", 10) == 0 ||
		    FUNC5(cp, "SSH PRIVATE KEY FILE") == 0)
			break;
		/* Skip leading whitespace. */
		for (; *cp && (*cp == ' ' || *cp == '\t'); cp++)
			;
		if (*cp) {
			if ((r = FUNC4(k, &cp)) == 0) {
				cp[FUNC6(cp, "\r\n")] = '\0';
				if (commentp) {
					*commentp = FUNC7(*cp ?
					    cp : filename);
					if (*commentp == NULL)
						r = SSH_ERR_ALLOC_FAIL;
				}
				FUNC2(line);
				FUNC0(f);
				return r;
			}
		}
	}
	FUNC2(line);
	FUNC0(f);
	return SSH_ERR_INVALID_FORMAT;
}