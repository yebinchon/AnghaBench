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
typedef  int /*<<< orphan*/  unit ;
struct gctl_req {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 struct gctl_req* FUNC2 () ; 
 char* FUNC3 (struct gctl_req*) ; 
 int /*<<< orphan*/  FUNC4 (struct gctl_req*,char*,int,...) ; 
 int /*<<< orphan*/  FUNC5 (struct gctl_req*,char*,int,char*) ; 
 char* FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (char*,...) ; 
 scalar_t__ FUNC8 (char*) ; 
 scalar_t__ verbose ; 

__attribute__((used)) static int
FUNC9(int unit)
{
	static int v;
	struct gctl_req *grq;
	int ncp;
	char *cp;
	char const *errstr;

	grq = FUNC2();
	ncp = 65536;
	cp = FUNC6(ncp);
	FUNC4(grq, "verb", -1, "list");
	FUNC4(grq, "class", -1, "CCD");
	FUNC4(grq, "unit", sizeof(unit), &unit);
	FUNC5(grq, "output", ncp, cp);
	errstr = FUNC3(grq);
	if (errstr != NULL)
		FUNC0(1, "%s\nor possibly kernel and ccdconfig out of sync",
			errstr);
	if (FUNC8(cp) == 0)
		FUNC0(1, "ccd%d not configured", unit);
	if (verbose && !v) {
		FUNC7("# ccd\t\tileave\tflags\tcomponent devices\n");
		v = 1;
	}
	FUNC7("%s", cp);
	FUNC1(cp);
	return (0);
}