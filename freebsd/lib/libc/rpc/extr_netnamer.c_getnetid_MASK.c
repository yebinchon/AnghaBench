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
typedef  int /*<<< orphan*/  buf ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  NETID ; 
 char* NETIDFILE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 char* FUNC1 (char*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (char*,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  stderr ; 
 scalar_t__ FUNC5 (char*,char*) ; 
 int /*<<< orphan*/  FUNC6 (char*,char*) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 char* FUNC8 (char**,char*) ; 
 int FUNC9 (char**) ; 
 int FUNC10 (char*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,char**,int*) ; 

int
FUNC11(char *key, char *ret)
{
	char            buf[1024];	/* big enough */
	char           *res;
	char           *mkey;
	char           *mval;
	FILE           *fd;
#ifdef YP
	char           *domain;
	int             err;
	char           *lookup;
	int             len;
#endif
	int rv;

	rv = 0;

	fd = FUNC2(NETIDFILE, "r");
	if (fd == NULL) {
#ifdef YP
		res = "+";
		goto getnetidyp;
#else
		return (0);
#endif
	}
	while (fd != NULL) {
		res = FUNC1(buf, sizeof(buf), fd);
		if (res == NULL) {
			rv = 0;
			goto done;
		}
		if (res[0] == '#')
			continue;
		else if (res[0] == '+') {
#ifdef YP
	getnetidyp:
			err = yp_get_default_domain(&domain);
			if (err) {
				continue;
			}
			lookup = NULL;
			err = yp_match(domain, NETID, key,
				strlen(key), &lookup, &len);
			if (err) {
#ifdef DEBUG
				fprintf(stderr, "match failed error %d\n", err);
#endif
				continue;
			}
			lookup[len] = 0;
			strcpy(ret, lookup);
			free(lookup);
			rv = 2;
			goto done;
#else	/* YP */
#ifdef DEBUG
			fprintf(stderr,
"Bad record in %s '+' -- NIS not supported in this library copy\n",
				NETIDFILE);
#endif
			continue;
#endif	/* YP */
		} else {
			mkey = FUNC8(&res, "\t ");
			if (mkey == NULL) {
				FUNC3(stderr,
		"Bad record in %s -- %s", NETIDFILE, buf);
				continue;
			}
			do {
				mval = FUNC8(&res, " \t#\n");
			} while (mval != NULL && !*mval);
			if (mval == NULL) {
				FUNC3(stderr,
		"Bad record in %s val problem - %s", NETIDFILE, buf);
				continue;
			}
			if (FUNC5(mkey, key) == 0) {
				FUNC6(ret, mval);
				rv = 1;
				goto done;
			}
		}
	}

done:
	if (fd != NULL)
		FUNC0(fd);
	return (rv);
}