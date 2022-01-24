#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct statfs {int f_mntfromname; } ;
struct TYPE_3__ {int rm_eo; int rm_so; } ;
typedef  TYPE_1__ regmatch_t ;
typedef  int /*<<< orphan*/  regex_t ;
typedef  int /*<<< orphan*/  dev ;

/* Variables and functions */
 int NMATCHES ; 
 int PATH_MAX ; 
 int /*<<< orphan*/  REG_EXTENDED ; 
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int /*<<< orphan*/  FUNC1 (int,char*,...) ; 
 char* FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (char*,int,int) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*,scalar_t__) ; 
 int FUNC5 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ *,char*,int,TYPE_1__*,int /*<<< orphan*/ ) ; 
 int FUNC7 (char*,struct statfs*) ; 
 int /*<<< orphan*/  FUNC8 (char*,int,int) ; 
 scalar_t__ FUNC9 (char*) ; 
 char* FUNC10 (char*,char*) ; 

__attribute__((used)) static char *
FUNC11(void)
{
	struct statfs rootfs;
	regex_t re;
#define NMATCHES 2
	regmatch_t rm[NMATCHES];
	char dev[PATH_MAX], *s;
	int rv;

	if (FUNC7("/", &rootfs) == -1)
		FUNC0(1, "statfs(\"/\")");

	if ((rv = FUNC5(&re, "^(/dev/[a-z/]+[0-9]*)([sp][0-9]+)?[a-h]?(\\.journal)?$",
		    REG_EXTENDED)) != 0)
		FUNC1(1, "regcomp() failed (%d)", rv);
	FUNC8(dev, rootfs.f_mntfromname, sizeof (dev));
	if ((s = FUNC10(dev, ".eli")) != NULL)
	    FUNC4(s, s+4, FUNC9(s + 4) + 1);

	if ((rv = FUNC6(&re, dev, NMATCHES, rm, 0)) != 0)
		FUNC1(1,
"mounted root fs resource doesn't match expectations (regexec returned %d)",
		    rv);
	if ((s = FUNC2(rm[1].rm_eo - rm[1].rm_so + 1)) == NULL)
		FUNC1(1, "out of memory");
	FUNC3(s, rootfs.f_mntfromname + rm[1].rm_so,
	    rm[1].rm_eo - rm[1].rm_so);
	s[rm[1].rm_eo - rm[1].rm_so] = 0;

	return s;
}