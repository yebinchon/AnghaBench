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
 char* PKFILE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 char* FUNC1 (char*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (char*,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  stderr ; 
 scalar_t__ FUNC5 (char*,char const*) ; 
 int /*<<< orphan*/  FUNC6 (char*,char*) ; 
 int /*<<< orphan*/  FUNC7 (char const*) ; 
 char* FUNC8 (char**,char*) ; 
 int FUNC9 (char**) ; 
 int FUNC10 (char*,char*,char const*,int /*<<< orphan*/ ,char**,int*) ; 

int
FUNC11(const char *key, char *ret)
{
	char buf[1024];	/* big enough */
	char *res;
	FILE *fd;
	char *mkey;
	char *mval;

	fd = FUNC2(PKFILE, "r");
	if (fd == NULL)
		return (0);
	for (;;) {
		res = FUNC1(buf, sizeof(buf), fd);
		if (res == NULL) {
			FUNC0(fd);
			return (0);
		}
		if (res[0] == '#')
			continue;
		else if (res[0] == '+') {
#ifdef YP
			char *PKMAP = "publickey.byname";
			char *lookup;
			char *domain;
			int err;
			int len;

			err = yp_get_default_domain(&domain);
			if (err) {
				continue;
			}
			lookup = NULL;
			err = yp_match(domain, PKMAP, key, strlen(key), &lookup, &len);
			if (err) {
#ifdef DEBUG
				fprintf(stderr, "match failed error %d\n", err);
#endif
				continue;
			}
			lookup[len] = 0;
			strcpy(ret, lookup);
			fclose(fd);
			free(lookup);
			return (2);
#else /* YP */
#ifdef DEBUG
			fprintf(stderr,
"Bad record in %s '+' -- NIS not supported in this library copy\n", PKFILE);
#endif /* DEBUG */
			continue;
#endif /* YP */
		} else {
			mkey = FUNC8(&res, "\t ");
			if (mkey == NULL) {
				FUNC3(stderr,
				"Bad record in %s -- %s", PKFILE, buf);
				continue;
			}
			do {
				mval = FUNC8(&res, " \t#\n");
			} while (mval != NULL && !*mval);
			if (mval == NULL) {
				FUNC3(stderr,
			"Bad record in %s val problem - %s", PKFILE, buf);
				continue;
			}
			if (FUNC5(mkey, key) == 0) {
				FUNC6(ret, mval);
				FUNC0(fd);
				return (1);
			}
		}
	}
}