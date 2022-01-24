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
struct TYPE_2__ {size_t sv_proto; int /*<<< orphan*/  sv_maxvcs; int /*<<< orphan*/  sv_maxmux; int /*<<< orphan*/  sv_caps; int /*<<< orphan*/  sv_sm; } ;
struct smb_vc_info {char* srvname; char* vcname; int mode; size_t iodstate; TYPE_1__ sopt; int /*<<< orphan*/  usecount; int /*<<< orphan*/  flags; int /*<<< orphan*/  gid; int /*<<< orphan*/  uid; } ;

/* Variables and functions */
 int /*<<< orphan*/  conn_caps ; 
 int /*<<< orphan*/ * conn_proto ; 
 char* FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * iod_state ; 
 int /*<<< orphan*/  FUNC1 (int,char*,size_t,...) ; 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 char* FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  vc_flags ; 
 int /*<<< orphan*/  verbose ; 

__attribute__((used)) static void
FUNC5(struct smb_vc_info *vip)
{
	char buf[200];

	FUNC2("VC: \\\\%s\\%s\n", vip->srvname, vip->vcname);
	FUNC2("(%s:%s) %o", FUNC4(vip->uid, 0), 
	    FUNC0(vip->gid, 0), vip->mode);
	FUNC2("\n");
	if (!verbose)
		return;
	FUNC1(4, "state:    %s\n", iod_state[vip->iodstate]);
	FUNC1(4, "flags:    0x%04x %s\n", vip->flags,
	    FUNC3(buf, vip->flags, vc_flags));
	FUNC1(4, "usecount: %d\n", vip->usecount);
	FUNC1(4, "dialect:  %d (%s)\n", vip->sopt.sv_proto, conn_proto[vip->sopt.sv_proto]);
	FUNC1(4, "smode:    %d\n", vip->sopt.sv_sm);
	FUNC1(4, "caps:     0x%04x %s\n", vip->sopt.sv_caps,
	    FUNC3(buf, vip->sopt.sv_caps, conn_caps));
	FUNC1(4, "maxmux:   %d\n", vip->sopt.sv_maxmux);
	FUNC1(4, "maxvcs:   %d\n", vip->sopt.sv_maxvcs);
}