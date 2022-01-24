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
typedef  int /*<<< orphan*/  ldns_rr_list ;
typedef  int /*<<< orphan*/  ldns_resolver ;
typedef  int /*<<< orphan*/  ldns_pkt ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  LDNS_RR_TYPE_NS ; 
 int /*<<< orphan*/  LDNS_SECTION_ANSWER ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,...) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *) ; 
 char* FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int verbosity ; 

void
FUNC14(FILE *fd, ldns_resolver *r, ldns_pkt *p)
{
	ldns_rr_list *new_nss;
	ldns_rr_list *hostnames;
	char *answerfrom_str;

	if (verbosity < 5) {
		return;
	}

	hostnames = FUNC2(r, FUNC3(p), 0, 0);

	new_nss = FUNC5(p,
			LDNS_RR_TYPE_NS, LDNS_SECTION_ANSWER);
	FUNC11(fd, new_nss);
	FUNC10(new_nss);

	FUNC1(fd, ";; Received %d bytes from %s#%d(",
			(int) FUNC6(p),
			FUNC7(FUNC3(p)),
			(int) FUNC9(r));
	/* if we can resolve this print it, other print the ip again */
	if (hostnames) {
		FUNC8(fd,
				FUNC13(FUNC12(hostnames, 0), 0));
		FUNC10(hostnames);
	} else {
		answerfrom_str = FUNC7(FUNC3(p));
		if (answerfrom_str) {
			FUNC1(fd, "%s", answerfrom_str);
			FUNC0(answerfrom_str);
		}
	}
	FUNC1(fd, ") in %u ms\n\n", (unsigned int)FUNC4(p));
}