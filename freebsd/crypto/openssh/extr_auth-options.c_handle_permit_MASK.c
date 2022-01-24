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

/* Variables and functions */
 size_t INT_MAX ; 
 scalar_t__ NI_MAXHOST ; 
 scalar_t__ FUNC0 (char*) ; 
 scalar_t__ FUNC1 (char**,char*,char*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 char* FUNC3 (char**) ; 
 char* FUNC4 (char const**,char const**) ; 
 char** FUNC5 (char**,size_t,size_t,int) ; 
 int /*<<< orphan*/ * FUNC6 (char*,char) ; 
 scalar_t__ FUNC7 (char*,char*) ; 
 char* FUNC8 (char*) ; 
 scalar_t__ FUNC9 (char*) ; 

__attribute__((used)) static int
FUNC10(const char **optsp, int allow_bare_port,
    char ***permitsp, size_t *npermitsp, const char **errstrp)
{
	char *opt, *tmp, *cp, *host, **permits = *permitsp;
	size_t npermits = *npermitsp;
	const char *errstr = "unknown error";

	if (npermits > INT_MAX) {
		*errstrp = "too many permission directives";
		return -1;
	}
	if ((opt = FUNC4(optsp, &errstr)) == NULL) {
		return -1;
	}
	if (allow_bare_port && FUNC6(opt, ':') == NULL) {
		/*
		 * Allow a bare port number in permitlisten to indicate a
		 * listen_host wildcard.
		 */
		if (FUNC1(&tmp, "*:%s", opt) < 0) {
			*errstrp = "memory allocation failed";
			return -1;
		}
		FUNC2(opt);
		opt = tmp;
	}
	if ((tmp = FUNC8(opt)) == NULL) {
		FUNC2(opt);
		*errstrp = "memory allocation failed";
		return -1;
	}
	cp = tmp;
	/* validate syntax before recording it. */
	host = FUNC3(&cp);
	if (host == NULL || FUNC9(host) >= NI_MAXHOST) {
		FUNC2(tmp);
		FUNC2(opt);
		*errstrp = "invalid permission hostname";
		return -1;
	}
	/*
	 * don't want to use permitopen_port to avoid
	 * dependency on channels.[ch] here.
	 */
	if (cp == NULL ||
	    (FUNC7(cp, "*") != 0 && FUNC0(cp) <= 0)) {
		FUNC2(tmp);
		FUNC2(opt);
		*errstrp = "invalid permission port";
		return -1;
	}
	/* XXX - add streamlocal support */
	FUNC2(tmp);
	/* Record it */
	if ((permits = FUNC5(permits, npermits, npermits + 1,
	    sizeof(*permits))) == NULL) {
		FUNC2(opt);
		/* NB. don't update *permitsp if alloc fails */
		*errstrp = "memory allocation failed";
		return -1;
	}
	permits[npermits++] = opt;
	*permitsp = permits;
	*npermitsp = npermits;
	return 0;
}