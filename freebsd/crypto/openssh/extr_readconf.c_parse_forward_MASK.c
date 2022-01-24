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
typedef  int /*<<< orphan*/  u_char ;
struct fwdarg {char* listen_path; char* arg; scalar_t__ listen_port; char* listen_host; char* connect_host; char* connect_path; scalar_t__ connect_port; int /*<<< orphan*/  ispath; } ;
struct Forward {char* listen_path; char* arg; scalar_t__ listen_port; char* listen_host; char* connect_host; char* connect_path; scalar_t__ connect_port; int /*<<< orphan*/  ispath; } ;
typedef  int /*<<< orphan*/  fwdargs ;

/* Variables and functions */
 scalar_t__ NI_MAXHOST ; 
 scalar_t__ PATH_MAX_SUN ; 
 void* PORT_STREAMLOCAL ; 
 void* FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct fwdarg*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC4 (char**,struct fwdarg*) ; 
 scalar_t__ FUNC5 (char*) ; 
 void* FUNC6 (char const*) ; 

int
FUNC7(struct Forward *fwd, const char *fwdspec, int dynamicfwd, int remotefwd)
{
	struct fwdarg fwdargs[4];
	char *p, *cp;
	int i;

	FUNC3(fwd, 0, sizeof(*fwd));
	FUNC3(fwdargs, 0, sizeof(fwdargs));

	cp = p = FUNC6(fwdspec);

	/* skip leading spaces */
	while (FUNC2((u_char)*cp))
		cp++;

	for (i = 0; i < 4; ++i) {
		if (FUNC4(&cp, &fwdargs[i]) != 0)
			break;
	}

	/* Check for trailing garbage */
	if (cp != NULL && *cp != '\0') {
		i = 0;	/* failure */
	}

	switch (i) {
	case 1:
		if (fwdargs[0].ispath) {
			fwd->listen_path = FUNC6(fwdargs[0].arg);
			fwd->listen_port = PORT_STREAMLOCAL;
		} else {
			fwd->listen_host = NULL;
			fwd->listen_port = FUNC0(fwdargs[0].arg);
		}
		fwd->connect_host = FUNC6("socks");
		break;

	case 2:
		if (fwdargs[0].ispath && fwdargs[1].ispath) {
			fwd->listen_path = FUNC6(fwdargs[0].arg);
			fwd->listen_port = PORT_STREAMLOCAL;
			fwd->connect_path = FUNC6(fwdargs[1].arg);
			fwd->connect_port = PORT_STREAMLOCAL;
		} else if (fwdargs[1].ispath) {
			fwd->listen_host = NULL;
			fwd->listen_port = FUNC0(fwdargs[0].arg);
			fwd->connect_path = FUNC6(fwdargs[1].arg);
			fwd->connect_port = PORT_STREAMLOCAL;
		} else {
			fwd->listen_host = FUNC6(fwdargs[0].arg);
			fwd->listen_port = FUNC0(fwdargs[1].arg);
			fwd->connect_host = FUNC6("socks");
		}
		break;

	case 3:
		if (fwdargs[0].ispath) {
			fwd->listen_path = FUNC6(fwdargs[0].arg);
			fwd->listen_port = PORT_STREAMLOCAL;
			fwd->connect_host = FUNC6(fwdargs[1].arg);
			fwd->connect_port = FUNC0(fwdargs[2].arg);
		} else if (fwdargs[2].ispath) {
			fwd->listen_host = FUNC6(fwdargs[0].arg);
			fwd->listen_port = FUNC0(fwdargs[1].arg);
			fwd->connect_path = FUNC6(fwdargs[2].arg);
			fwd->connect_port = PORT_STREAMLOCAL;
		} else {
			fwd->listen_host = NULL;
			fwd->listen_port = FUNC0(fwdargs[0].arg);
			fwd->connect_host = FUNC6(fwdargs[1].arg);
			fwd->connect_port = FUNC0(fwdargs[2].arg);
		}
		break;

	case 4:
		fwd->listen_host = FUNC6(fwdargs[0].arg);
		fwd->listen_port = FUNC0(fwdargs[1].arg);
		fwd->connect_host = FUNC6(fwdargs[2].arg);
		fwd->connect_port = FUNC0(fwdargs[3].arg);
		break;
	default:
		i = 0; /* failure */
	}

	FUNC1(p);

	if (dynamicfwd) {
		if (!(i == 1 || i == 2))
			goto fail_free;
	} else {
		if (!(i == 3 || i == 4)) {
			if (fwd->connect_path == NULL &&
			    fwd->listen_path == NULL)
				goto fail_free;
		}
		if (fwd->connect_port <= 0 && fwd->connect_path == NULL)
			goto fail_free;
	}

	if ((fwd->listen_port < 0 && fwd->listen_path == NULL) ||
	    (!remotefwd && fwd->listen_port == 0))
		goto fail_free;
	if (fwd->connect_host != NULL &&
	    FUNC5(fwd->connect_host) >= NI_MAXHOST)
		goto fail_free;
	/* XXX - if connecting to a remote socket, max sun len may not match this host */
	if (fwd->connect_path != NULL &&
	    FUNC5(fwd->connect_path) >= PATH_MAX_SUN)
		goto fail_free;
	if (fwd->listen_host != NULL &&
	    FUNC5(fwd->listen_host) >= NI_MAXHOST)
		goto fail_free;
	if (fwd->listen_path != NULL &&
	    FUNC5(fwd->listen_path) >= PATH_MAX_SUN)
		goto fail_free;

	return (i);

 fail_free:
	FUNC1(fwd->connect_host);
	fwd->connect_host = NULL;
	FUNC1(fwd->connect_path);
	fwd->connect_path = NULL;
	FUNC1(fwd->listen_host);
	fwd->listen_host = NULL;
	FUNC1(fwd->listen_path);
	fwd->listen_path = NULL;
	return (0);
}