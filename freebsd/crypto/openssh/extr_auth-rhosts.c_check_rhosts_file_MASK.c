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
typedef  int /*<<< orphan*/  userbuf ;
struct stat {int /*<<< orphan*/  st_mode; } ;
typedef  int /*<<< orphan*/  buf ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int O_NONBLOCK ; 
 int O_RDONLY ; 
 int RBUFLN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,char const*) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (int,char*) ; 
 scalar_t__ FUNC5 (char*,int,int /*<<< orphan*/ *) ; 
 int FUNC6 (int,struct stat*) ; 
 int /*<<< orphan*/  FUNC7 (char*,char const*,char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (char*,char const*,char const*) ; 
 int FUNC9 (char const*,int) ; 
 int FUNC10 (char*,char*,char*,char*,char*) ; 
 scalar_t__ FUNC11 (char*,char const*) ; 
 scalar_t__ FUNC12 (char*,char const*) ; 
 int /*<<< orphan*/  FUNC13 (char*,char const*,int) ; 
 scalar_t__ FUNC14 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC15 (int) ; 

__attribute__((used)) static int
FUNC16(const char *filename, const char *hostname,
		  const char *ipaddr, const char *client_user,
		  const char *server_user)
{
	FILE *f;
#define RBUFLN 1024
	char buf[RBUFLN];/* Must not be larger than host, user, dummy below. */
	int fd;
	struct stat st;

	/* Open the .rhosts file, deny if unreadable */
	if ((fd = FUNC9(filename, O_RDONLY|O_NONBLOCK)) == -1)
		return 0;
	if (FUNC6(fd, &st) == -1) {
		FUNC2(fd);
		return 0;
	}
	if (!FUNC0(st.st_mode)) {
		FUNC8("User %s hosts file %s is not a regular file",
		    server_user, filename);
		FUNC2(fd);
		return 0;
	}
	FUNC15(fd);
	if ((f = FUNC4(fd, "r")) == NULL) {
		FUNC2(fd);
		return 0;
	}
	while (FUNC5(buf, sizeof(buf), f)) {
		/* All three must have length >= buf to avoid overflows. */
		char hostbuf[RBUFLN], userbuf[RBUFLN], dummy[RBUFLN];
		char *host, *user, *cp;
		int negated;

		for (cp = buf; *cp == ' ' || *cp == '\t'; cp++)
			;
		if (*cp == '#' || *cp == '\n' || !*cp)
			continue;

		/*
		 * NO_PLUS is supported at least on OSF/1.  We skip it (we
		 * don't ever support the plus syntax).
		 */
		if (FUNC14(cp, "NO_PLUS", 7) == 0)
			continue;

		/*
		 * This should be safe because each buffer is as big as the
		 * whole string, and thus cannot be overwritten.
		 */
		switch (FUNC10(buf, "%1023s %1023s %1023s", hostbuf, userbuf,
		    dummy)) {
		case 0:
			FUNC1("Found empty line in %.100s.", filename);
			continue;
		case 1:
			/* Host name only. */
			FUNC13(userbuf, server_user, sizeof(userbuf));
			break;
		case 2:
			/* Got both host and user name. */
			break;
		case 3:
			FUNC1("Found garbage in %.100s.", filename);
			continue;
		default:
			/* Weird... */
			continue;
		}

		host = hostbuf;
		user = userbuf;
		negated = 0;

		/* Process negated host names, or positive netgroups. */
		if (host[0] == '-') {
			negated = 1;
			host++;
		} else if (host[0] == '+')
			host++;

		if (user[0] == '-') {
			negated = 1;
			user++;
		} else if (user[0] == '+')
			user++;

		/* Check for empty host/user names (particularly '+'). */
		if (!host[0] || !user[0]) {
			/* We come here if either was '+' or '-'. */
			FUNC1("Ignoring wild host/user names "
			    "in %.100s.", filename);
			continue;
		}
		/* Verify that host name matches. */
		if (host[0] == '@') {
			if (!FUNC7(host + 1, hostname, NULL, NULL) &&
			    !FUNC7(host + 1, ipaddr, NULL, NULL))
				continue;
		} else if (FUNC11(host, hostname) &&
		    FUNC12(host, ipaddr) != 0)
			continue;	/* Different hostname. */

		/* Verify that user name matches. */
		if (user[0] == '@') {
			if (!FUNC7(user + 1, NULL, client_user, NULL))
				continue;
		} else if (FUNC12(user, client_user) != 0)
			continue;	/* Different username. */

		/* Found the user and host. */
		FUNC3(f);

		/* If the entry was negated, deny access. */
		if (negated) {
			FUNC1("Matched negative entry in %.100s.",
			    filename);
			return 0;
		}
		/* Accept authentication. */
		return 1;
	}

	/* Authentication using this file denied. */
	FUNC3(f);
	return 0;
}