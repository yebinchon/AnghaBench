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
struct ifbreq {int ifbr_ifsflags; int ifbr_addrmax; int ifbr_portno; int ifbr_priority; int ifbr_path_cost; size_t ifbr_proto; size_t ifbr_role; size_t ifbr_state; int /*<<< orphan*/  ifbr_ifsname; } ;
struct ifbifconf {int ifbic_len; char* ifbic_buf; struct ifbreq* ifbic_req; } ;
typedef  int /*<<< orphan*/  bifc ;

/* Variables and functions */
 int /*<<< orphan*/  BRDGGIFS ; 
 int /*<<< orphan*/  IFBIFBITS ; 
 int IFBIF_STP ; 
 scalar_t__ FUNC0 (int,int /*<<< orphan*/ ,struct ifbifconf*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int,char*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 scalar_t__ FUNC3 (char) ; 
 size_t FUNC4 (char**) ; 
 int /*<<< orphan*/  FUNC5 (char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*,...) ; 
 char* FUNC7 (char*,int) ; 
 char** stpproto ; 
 char** stproles ; 
 char** stpstates ; 
 char* FUNC8 (char const*) ; 

__attribute__((used)) static void
FUNC9(int s, const char *prefix)
{
	struct ifbifconf bifc;
	struct ifbreq *req;
	char *inbuf = NULL, *ninbuf;
	char *p, *pad;
	int i, len = 8192;

	pad = FUNC8(prefix);
	if (pad == NULL)
		FUNC1(1, "strdup");
	/* replace the prefix with whitespace */
	for (p = pad; *p != '\0'; p++) {
		if(FUNC3(*p))
			*p = ' ';
	}

	for (;;) {
		ninbuf = FUNC7(inbuf, len);
		if (ninbuf == NULL)
			FUNC1(1, "unable to allocate interface buffer");
		bifc.ifbic_len = len;
		bifc.ifbic_buf = inbuf = ninbuf;
		if (FUNC0(s, BRDGGIFS, &bifc, sizeof(bifc), 0) < 0)
			FUNC1(1, "unable to get interface list");
		if ((bifc.ifbic_len + sizeof(*req)) < len)
			break;
		len *= 2;
	}

	for (i = 0; i < bifc.ifbic_len / sizeof(*req); i++) {
		req = bifc.ifbic_req + i;
		FUNC6("%s%s ", prefix, req->ifbr_ifsname);
		FUNC5("flags", req->ifbr_ifsflags, IFBIFBITS);
		FUNC6("\n");

		FUNC6("%s", pad);
		FUNC6("ifmaxaddr %u", req->ifbr_addrmax);
		FUNC6(" port %u priority %u", req->ifbr_portno,
		    req->ifbr_priority);
		FUNC6(" path cost %u", req->ifbr_path_cost);

		if (req->ifbr_ifsflags & IFBIF_STP) {
			if (req->ifbr_proto < FUNC4(stpproto))
				FUNC6(" proto %s", stpproto[req->ifbr_proto]);
			else
				FUNC6(" <unknown proto %d>",
				    req->ifbr_proto);

			FUNC6("\n%s", pad);
			if (req->ifbr_role < FUNC4(stproles))
				FUNC6("role %s", stproles[req->ifbr_role]);
			else
				FUNC6("<unknown role %d>",
				    req->ifbr_role);
			if (req->ifbr_state < FUNC4(stpstates))
				FUNC6(" state %s", stpstates[req->ifbr_state]);
			else
				FUNC6(" <unknown state %d>",
				    req->ifbr_state);
		}
		FUNC6("\n");
	}
	FUNC2(pad);
	FUNC2(inbuf);
}