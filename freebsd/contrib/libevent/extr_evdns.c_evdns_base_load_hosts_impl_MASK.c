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
typedef  int /*<<< orphan*/  tmp ;
struct evdns_base {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct evdns_base*) ; 
 int /*<<< orphan*/  FUNC1 (struct evdns_base*,char*) ; 
 int FUNC2 (char const*,char**,size_t*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 char* FUNC4 (char*,char) ; 
 int /*<<< orphan*/  FUNC5 (char*,char*,int) ; 

__attribute__((used)) static int
FUNC6(struct evdns_base *base, const char *hosts_fname)
{
	char *str=NULL, *cp, *eol;
	size_t len;
	int err=0;

	FUNC0(base);

	if (hosts_fname == NULL ||
	    (err = FUNC2(hosts_fname, &str, &len, 0)) < 0) {
		char tmp[64];
		FUNC5(tmp, "127.0.0.1   localhost", sizeof(tmp));
		FUNC1(base, tmp);
		FUNC5(tmp, "::1   localhost", sizeof(tmp));
		FUNC1(base, tmp);
		return err ? -1 : 0;
	}

	/* This will break early if there is a NUL in the hosts file.
	 * Probably not a problem.*/
	cp = str;
	for (;;) {
		eol = FUNC4(cp, '\n');

		if (eol) {
			*eol = '\0';
			FUNC1(base, cp);
			cp = eol+1;
		} else {
			FUNC1(base, cp);
			break;
		}
	}

	FUNC3(str);
	return 0;
}