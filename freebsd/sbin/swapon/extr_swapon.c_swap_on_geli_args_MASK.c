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

/* Variables and functions */
 scalar_t__ EINVAL ; 
 scalar_t__ Eflag ; 
 scalar_t__ INT_MAX ; 
 char* FUNC0 (size_t) ; 
 int /*<<< orphan*/  FUNC1 (char**,char*,char const*,char const*,char const*,char const*,char const*,char const*,char const*,char const*,char const*) ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int FUNC3 () ; 
 int FUNC4 (char*,size_t,char*,int) ; 
 scalar_t__ FUNC5 (char*,char*) ; 
 char* FUNC6 (char const*) ; 
 char* FUNC7 (char**,char*) ; 
 char* FUNC8 (char*,char*) ; 
 scalar_t__ FUNC9 (char const*,char**,int) ; 
 int /*<<< orphan*/  FUNC10 (char*,...) ; 
 int /*<<< orphan*/  FUNC11 (char*,char*) ; 

__attribute__((used)) static char *
FUNC12(const char *mntops)
{
	const char *aalgo, *ealgo, *keylen_str, *sectorsize_str;
	const char *aflag, *eflag, *lflag, *Tflag, *sflag;
	char *p, *args, *token, *string, *ops;
	int pagesize;
	size_t pagesize_len;
	u_long ul;

	/* Use built-in defaults for geli(8). */
	aalgo = ealgo = keylen_str = "";
	aflag = eflag = lflag = Tflag = "";

	/* We will always specify sectorsize. */
	sflag = " -s ";
	sectorsize_str = NULL;

	if (mntops != NULL) {
		string = ops = FUNC6(mntops);

		while ((token = FUNC7(&string, ",")) != NULL) {
			if ((p = FUNC8(token, "aalgo=")) == token) {
				aalgo = p + sizeof("aalgo=") - 1;
				aflag = " -a ";
			} else if ((p = FUNC8(token, "ealgo=")) == token) {
				ealgo = p + sizeof("ealgo=") - 1;
				eflag = " -e ";
			} else if ((p = FUNC8(token, "keylen=")) == token) {
				keylen_str = p + sizeof("keylen=") - 1;
				errno = 0;
				ul = FUNC9(keylen_str, &p, 10);
				if (errno == 0) {
					if (*p != '\0' || ul > INT_MAX)
						errno = EINVAL;
				}
				if (errno) {
					FUNC10("Invalid keylen: %s", keylen_str);
					FUNC2(ops);
					return (NULL);
				}
				lflag = " -l ";
			} else if ((p = FUNC8(token, "sectorsize=")) == token) {
				sectorsize_str = p + sizeof("sectorsize=") - 1;
				errno = 0;
				ul = FUNC9(sectorsize_str, &p, 10);
				if (errno == 0) {
					if (*p != '\0' || ul > INT_MAX)
						errno = EINVAL;
				}
				if (errno) {
					FUNC10("Invalid sectorsize: %s",
					    sectorsize_str);
					FUNC2(ops);
					return (NULL);
				}
			} else if (FUNC5(token, "notrim") == 0) {
				if (Eflag) {
					FUNC10("Options \"notrim\" and "
					    "\"trimonce\" conflict");
					FUNC2(ops);
					return (NULL);
				}
				Tflag = " -T ";
			} else if (FUNC5(token, "late") == 0) {
				/* ignore known option */
			} else if (FUNC5(token, "noauto") == 0) {
				/* ignore known option */
			} else if (FUNC5(token, "sw") == 0) {
				/* ignore known option */
			} else if (FUNC5(token, "trimonce") == 0) {
				/* ignore known option */
			} else {
				FUNC11("Invalid option: %s", token);
				FUNC2(ops);
				return (NULL);
			}
		}
	} else
		ops = NULL;

	/*
	 * If we do not have a sector size at this point, fill in
	 * pagesize as sector size.
	 */
	if (sectorsize_str == NULL) {
		/* Use pagesize as default sectorsize. */
		pagesize = FUNC3();
		pagesize_len = FUNC4(NULL, 0, "%d", pagesize) + 1;
		p = FUNC0(pagesize_len);
		FUNC4(p, pagesize_len, "%d", pagesize);
		sectorsize_str = p;
	}

	(void)FUNC1(&args, "%s%s%s%s%s%s%s%s%s -d",
	    aflag, aalgo, eflag, ealgo, lflag, keylen_str, Tflag,
	    sflag, sectorsize_str);

	FUNC2(ops);
	return (args);
}