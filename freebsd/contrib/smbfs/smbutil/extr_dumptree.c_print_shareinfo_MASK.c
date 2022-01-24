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
struct smb_share_info {int mode; int /*<<< orphan*/  usecount; int /*<<< orphan*/  flags; int /*<<< orphan*/  gid; int /*<<< orphan*/  uid; int /*<<< orphan*/  sname; } ;

/* Variables and functions */
 char* FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int,char*,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ss_flags ; 
 char* FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  verbose ; 

__attribute__((used)) static void
FUNC5(struct smb_share_info *sip)
{
	char buf[200];

	FUNC1(4, "Share:    %s", sip->sname);
	FUNC2("(%s:%s) %o", FUNC4(sip->uid, 0), 
	    FUNC0(sip->gid, 0), sip->mode);
	FUNC2("\n");
	if (!verbose)
		return;
	FUNC1(8, "flags:    0x%04x %s\n", sip->flags,
	    FUNC3(buf, sip->flags, ss_flags));
	FUNC1(8, "usecount: %d\n", sip->usecount);
}