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
typedef  int u_long ;
struct sshkey {int dummy; } ;
struct passwd {int dummy; } ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  __progname ; 
 int /*<<< orphan*/  FUNC0 (struct passwd*,char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,char const*,int) ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,char const*,...) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct sshkey*,char*) ; 
 int /*<<< orphan*/  FUNC6 (char const*) ; 
 int /*<<< orphan*/ * FUNC7 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 
 int FUNC9 (char**,size_t*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  have_identity ; 
 char* identity_file ; 
 int /*<<< orphan*/  FUNC10 (struct sshkey*) ; 
 int /*<<< orphan*/ * stdin ; 
 scalar_t__ FUNC11 (char*,char*) ; 
 size_t FUNC12 (char*,char*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 
 int FUNC14 (char*,char*) ; 
 int /*<<< orphan*/ * FUNC15 (char*,char*) ; 
 int FUNC16 (char*,char**,int) ; 
 struct sshkey* FUNC17 (char**) ; 

__attribute__((used)) static void
FUNC18(struct passwd *pw)
{
	FILE *f;
	struct sshkey *public = NULL;
	char *comment = NULL, *cp, *ep, *line = NULL;
	size_t linesize = 0;
	int i, invalid = 1;
	const char *path;
	u_long lnum = 0;

	if (!have_identity)
		FUNC0(pw, "Enter file in which the key is");
	path = identity_file;

	if (FUNC11(identity_file, "-") == 0) {
		f = stdin;
		path = "(stdin)";
	} else if ((f = FUNC7(path, "r")) == NULL)
		FUNC3("%s: %s: %s", __progname, path, FUNC13(errno));

	while (FUNC9(&line, &linesize, f) != -1) {
		lnum++;
		cp = line;
		cp[FUNC12(cp, "\n")] = '\0';
		/* Trim leading space and comments */
		cp = line + FUNC14(line, " \t");
		if (*cp == '#' || *cp == '\0')
			continue;

		/*
		 * Input may be plain keys, private keys, authorized_keys
		 * or known_hosts.
		 */

		/*
		 * Try private keys first. Assume a key is private if
		 * "SSH PRIVATE KEY" appears on the first line and we're
		 * not reading from stdin (XXX support private keys on stdin).
		 */
		if (lnum == 1 && FUNC11(identity_file, "-") != 0 &&
		    FUNC15(cp, "PRIVATE KEY") != NULL) {
			FUNC8(line);
			FUNC4(f);
			FUNC6(path);
			FUNC2(0);
		}

		/*
		 * If it's not a private key, then this must be prepared to
		 * accept a public key prefixed with a hostname or options.
		 * Try a bare key first, otherwise skip the leading stuff.
		 */
		if ((public = FUNC17(&cp)) == NULL) {
			i = FUNC16(cp, &ep, 10);
			if (i == 0 || ep == NULL ||
			    (*ep != ' ' && *ep != '\t')) {
				int quoted = 0;

				comment = cp;
				for (; *cp && (quoted || (*cp != ' ' &&
				    *cp != '\t')); cp++) {
					if (*cp == '\\' && cp[1] == '"')
						cp++;	/* Skip both */
					else if (*cp == '"')
						quoted = !quoted;
				}
				if (!*cp)
					continue;
				*cp++ = '\0';
			}
		}
		/* Retry after parsing leading hostname/key options */
		if (public == NULL && (public = FUNC17(&cp)) == NULL) {
			FUNC1("%s:%lu: not a public key", path, lnum);
			continue;
		}

		/* Find trailing comment, if any */
		for (; *cp == ' ' || *cp == '\t'; cp++)
			;
		if (*cp != '\0' && *cp != '#')
			comment = cp;

		FUNC5(public, comment);
		FUNC10(public);
		invalid = 0; /* One good key in the file is sufficient */
	}
	FUNC4(f);
	FUNC8(line);

	if (invalid)
		FUNC3("%s is not a public key file.", path);
	FUNC2(0);
}