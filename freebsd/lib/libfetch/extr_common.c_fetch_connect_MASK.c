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
struct addrinfo {scalar_t__ ai_family; int /*<<< orphan*/  ai_addrlen; int /*<<< orphan*/  ai_addr; struct addrinfo* ai_next; } ;
typedef  int /*<<< orphan*/  conn_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,char const*,int) ; 
 int /*<<< orphan*/  SOCK_STREAM ; 
 int FUNC1 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int FUNC3 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,char const*,...) ; 
 int /*<<< orphan*/ * FUNC5 (int) ; 
 struct addrinfo* FUNC6 (char const*,int,int) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (struct addrinfo*) ; 
 char* FUNC9 (char*) ; 
 int FUNC10 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

conn_t *
FUNC11(const char *host, int port, int af, int verbose)
{
	struct addrinfo *cais = NULL, *sais = NULL, *cai, *sai;
	const char *bindaddr;
	conn_t *conn = NULL;
	int err = 0, sd = -1;

	FUNC0("---> %s:%d\n", host, port);

	/* resolve server address */
	if (verbose)
		FUNC4("resolving server address: %s:%d", host, port);
	if ((sais = FUNC6(host, port, af)) == NULL)
		goto fail;

	/* resolve client address */
	bindaddr = FUNC9("FETCH_BIND_ADDRESS");
	if (bindaddr != NULL && *bindaddr != '\0') {
		if (verbose)
			FUNC4("resolving client address: %s", bindaddr);
		if ((cais = FUNC6(bindaddr, 0, af)) == NULL)
			goto fail;
	}

	/* try each server address in turn */
	for (err = 0, sai = sais; sai != NULL; sai = sai->ai_next) {
		/* open socket */
		if ((sd = FUNC10(sai->ai_family, SOCK_STREAM, 0)) < 0)
			goto syserr;
		/* attempt to bind to client address */
		for (err = 0, cai = cais; cai != NULL; cai = cai->ai_next) {
			if (cai->ai_family != sai->ai_family)
				continue;
			if ((err = FUNC1(sd, cai->ai_addr, cai->ai_addrlen)) == 0)
				break;
		}
		if (err != 0) {
			if (verbose)
				FUNC4("failed to bind to %s", bindaddr);
			goto syserr;
		}
		/* attempt to connect to server address */
		if ((err = FUNC3(sd, sai->ai_addr, sai->ai_addrlen)) == 0)
			break;
		/* clean up before next attempt */
		FUNC2(sd);
		sd = -1;
	}
	if (err != 0) {
		if (verbose)
			FUNC4("failed to connect to %s:%d", host, port);
		goto syserr;
	}

	if ((conn = FUNC5(sd)) == NULL)
		goto syserr;
	if (cais != NULL)
		FUNC8(cais);
	if (sais != NULL)
		FUNC8(sais);
	return (conn);
syserr:
	FUNC7();
	goto fail;
fail:
	if (sd >= 0)
		FUNC2(sd);
	if (cais != NULL)
		FUNC8(cais);
	if (sais != NULL)
		FUNC8(sais);
	return (NULL);
}