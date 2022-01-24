#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u_char ;
struct TYPE_2__ {int qdcount; int ancount; int nscount; int arcount; } ;
struct dns_response {int /*<<< orphan*/ * additional; TYPE_1__ header; int /*<<< orphan*/ * authority; int /*<<< orphan*/ * answer; int /*<<< orphan*/ * query; } ;

/* Variables and functions */
 int /*<<< orphan*/  HFIXEDSZ ; 
 struct dns_response* FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (struct dns_response*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/  const*,int /*<<< orphan*/ ) ; 
 void* FUNC3 (int) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/  const*,int,int /*<<< orphan*/  const**,int) ; 
 void* FUNC5 (int /*<<< orphan*/  const*,int,int /*<<< orphan*/  const**,int) ; 

__attribute__((used)) static struct dns_response *
FUNC6(const u_char *answer, int size)
{
	struct dns_response *resp;
	const u_char *cp;

	/* allocate memory for the response */
	resp = FUNC0(1, sizeof(*resp));
	if (resp == NULL)
		return (NULL);

	/* initialize current pointer */
	cp = answer;

	/* copy header */
	FUNC2(&resp->header, cp, HFIXEDSZ);
	cp += HFIXEDSZ;

	/* fix header byte order */
	resp->header.qdcount = FUNC3(resp->header.qdcount);
	resp->header.ancount = FUNC3(resp->header.ancount);
	resp->header.nscount = FUNC3(resp->header.nscount);
	resp->header.arcount = FUNC3(resp->header.arcount);

	/* there must be at least one query */
	if (resp->header.qdcount < 1) {
		FUNC1(resp);
		return (NULL);
	}

	/* parse query section */
	resp->query = FUNC4(answer, size, &cp,
	    resp->header.qdcount);
	if (resp->header.qdcount && resp->query == NULL) {
		FUNC1(resp);
		return (NULL);
	}

	/* parse answer section */
	resp->answer = FUNC5(answer, size, &cp,
	    resp->header.ancount);
	if (resp->header.ancount && resp->answer == NULL) {
		FUNC1(resp);
		return (NULL);
	}

	/* parse authority section */
	resp->authority = FUNC5(answer, size, &cp,
	    resp->header.nscount);
	if (resp->header.nscount && resp->authority == NULL) {
		FUNC1(resp);
		return (NULL);
	}

	/* parse additional section */
	resp->additional = FUNC5(answer, size, &cp,
	    resp->header.arcount);
	if (resp->header.arcount && resp->additional == NULL) {
		FUNC1(resp);
		return (NULL);
	}

	return (resp);
}