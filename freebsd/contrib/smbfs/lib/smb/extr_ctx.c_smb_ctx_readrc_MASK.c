#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {scalar_t__* ioc_share; } ;
struct TYPE_3__ {scalar_t__* ioc_user; scalar_t__* ioc_srvname; } ;
struct smb_ctx {TYPE_2__ ct_sh; TYPE_1__ ct_ssn; int /*<<< orphan*/  ct_nb; } ;
typedef  int /*<<< orphan*/  sname ;

/* Variables and functions */
 scalar_t__ SMB_MAXSHARENAMELEN ; 
 scalar_t__ SMB_MAXSRVNAMELEN ; 
 scalar_t__ SMB_MAXUSERNAMELEN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct smb_ctx*,char*,int) ; 
 scalar_t__ FUNC2 () ; 
 int /*<<< orphan*/  smb_rc ; 
 int /*<<< orphan*/  FUNC3 (char*,int,char*,char*,...) ; 

int
FUNC4(struct smb_ctx *ctx)
{
	char sname[SMB_MAXSRVNAMELEN + SMB_MAXUSERNAMELEN + SMB_MAXSHARENAMELEN + 4];
/*	char *p;*/

	if (FUNC2() != 0)
		return 0;

	if (ctx->ct_ssn.ioc_user[0] == 0 || ctx->ct_ssn.ioc_srvname[0] == 0)
		return 0;

	FUNC1(ctx, "default", 0);
	FUNC0(smb_rc, ctx->ct_nb, "default", 0);
	FUNC1(ctx, ctx->ct_ssn.ioc_srvname, 1);
	FUNC0(smb_rc, ctx->ct_nb, ctx->ct_ssn.ioc_srvname, 1);
	/*
	 * SERVER:USER parameters
	 */
	FUNC3(sname, sizeof(sname), "%s:%s", ctx->ct_ssn.ioc_srvname,
	    ctx->ct_ssn.ioc_user);
	FUNC1(ctx, sname, 2);

	if (ctx->ct_sh.ioc_share[0] != 0) {
		/*
		 * SERVER:USER:SHARE parameters
	         */
		FUNC3(sname, sizeof(sname), "%s:%s:%s", ctx->ct_ssn.ioc_srvname,
		    ctx->ct_ssn.ioc_user, ctx->ct_sh.ioc_share);
		FUNC1(ctx, sname, 3);
	}
	return 0;
}