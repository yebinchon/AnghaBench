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
struct sockaddr {int dummy; } ;
struct sadb_msg {int dummy; } ;

/* Variables and functions */
 scalar_t__ addr ; 
 int /*<<< orphan*/  FUNC0 (int,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (struct sadb_msg*) ; 
 scalar_t__ FUNC2 () ; 
 int FUNC3 (char*) ; 
 char* FUNC4 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int FUNC6 () ; 
 struct sadb_msg* FUNC7 (int) ; 
 scalar_t__ FUNC8 (int,struct sockaddr*,int,struct sockaddr*,int,int,char*,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (int,struct sockaddr*,int,struct sockaddr*,int,int,int /*<<< orphan*/ ,int,char*,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 (int,struct sockaddr*,int,struct sockaddr*,int,int,char*,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC11 (int,int) ; 
 scalar_t__ FUNC12 (int) ; 
 scalar_t__ FUNC13 (int,int) ; 
 scalar_t__ FUNC14 (int,struct sockaddr*,int,struct sockaddr*,int,int,char*,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC15 (int,struct sockaddr*,int,struct sockaddr*,int,int,char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (char*,...) ; 
 int /*<<< orphan*/  FUNC17 (int) ; 
 int /*<<< orphan*/  FUNC18 (char*) ; 
 int FUNC19 (int) ; 
 int /*<<< orphan*/  FUNC20 (char*) ; 

int
FUNC21()
{
	int so;
	char *pol1 = "out ipsec";
	char *pol2 = "out ipsec ah/transport//use";
	char *sp1, *sp2;
	int splen1, splen2;
	int spid;
	struct sadb_msg *m;

	FUNC16("TEST2\n");
	if (FUNC2() != 0)
		FUNC0(1, "root privilege required.");

	sp1 = FUNC4(pol1, FUNC18(pol1));
	splen1 = FUNC3(sp1);
	sp2 = FUNC4(pol2, FUNC18(pol2));
	splen2 = FUNC3(sp2);

	if ((so = FUNC6()) < 0)
		FUNC0(1, "ERROR: %s", FUNC5());

	FUNC16("spdflush()\n");
	if (FUNC12(so) < 0)
		FUNC0(1, "ERROR: %s", FUNC5());
	m = FUNC7(so);
	FUNC1(m);

	FUNC16("spdsetidx()\n");
	if (FUNC14(so, (struct sockaddr *)addr, 128,
				(struct sockaddr *)addr, 128,
				255, sp1, splen1, 0) < 0)
		FUNC0(1, "ERROR: %s", FUNC5());
	m = FUNC7(so);
	FUNC1(m);
	
	FUNC16("spdupdate()\n");
	if (FUNC15(so, (struct sockaddr *)addr, 128,
				(struct sockaddr *)addr, 128,
				255, sp2, splen2, 0) < 0)
		FUNC0(1, "ERROR: %s", FUNC5());
	m = FUNC7(so);
	FUNC1(m);

	FUNC16("sleep(4)\n");
	FUNC17(4);

	FUNC16("spddelete()\n");
	if (FUNC10(so, (struct sockaddr *)addr, 128,
				(struct sockaddr *)addr, 128,
				255, sp1, splen1, 0) < 0)
		FUNC0(1, "ERROR: %s", FUNC5());
	m = FUNC7(so);
	FUNC1(m);

	FUNC16("spdadd()\n");
	if (FUNC8(so, (struct sockaddr *)addr, 128,
				(struct sockaddr *)addr, 128,
				255, sp2, splen2, 0) < 0)
		FUNC0(1, "ERROR: %s", FUNC5());
	spid = FUNC19(so);

	FUNC16("spdget(%u)\n", spid);
	if (FUNC13(so, spid) < 0)
		FUNC0(1, "ERROR: %s", FUNC5());
	m = FUNC7(so);
	FUNC1(m);

	FUNC16("sleep(4)\n");
	FUNC17(4);

	FUNC16("spddelete2()\n");
	if (FUNC11(so, spid) < 0)
		FUNC0(1, "ERROR: %s", FUNC5());
	m = FUNC7(so);
	FUNC1(m);

	FUNC16("spdadd() with lifetime's 10(s)\n");
	if (FUNC9(so, (struct sockaddr *)addr, 128,
				(struct sockaddr *)addr, 128,
				255, 0, 10, sp2, splen2, 0) < 0)
		FUNC0(1, "ERROR: %s", FUNC5());
	spid = FUNC19(so);

	/* expecting failure */
	FUNC16("spdupdate()\n");
	if (FUNC15(so, (struct sockaddr *)addr, 128,
				(struct sockaddr *)addr, 128,
				255, sp2, splen2, 0) == 0) {
		FUNC20("ERROR: expecting failure.");
	}

	return 0;
}