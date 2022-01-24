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
struct TYPE_4__ {int /*<<< orphan*/  ioc_srvname; int /*<<< orphan*/  ioc_opt; } ;
struct TYPE_3__ {int /*<<< orphan*/  ioc_opt; } ;
struct smb_ctx {int ct_parsedlevel; TYPE_2__ ct_ssn; TYPE_1__ ct_sh; } ;

/* Variables and functions */
 int EACCES ; 
 int ENOENT ; 
 int EOF ; 
 int /*<<< orphan*/  EX_OSERR ; 
#define  SMBL_SHARE 130 
#define  SMBL_VC 129 
 int /*<<< orphan*/  SMBSOPT_CREATE ; 
 int SMBS_PERMANENT ; 
 int /*<<< orphan*/  SMBVOPT_CREATE ; 
 int SMBV_PERMANENT ; 
 int /*<<< orphan*/  SMB_ST_ANY ; 
#define  STDPARAM_ARGS 128 
 int /*<<< orphan*/  STDPARAM_OPT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 (int,char**,int /*<<< orphan*/ ) ; 
 int FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  optarg ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__) ; 
 scalar_t__ FUNC7 (struct smb_ctx*,int,char**,int,int,int /*<<< orphan*/ ) ; 
 int FUNC8 (struct smb_ctx*,int,int /*<<< orphan*/ ) ; 
 int FUNC9 (struct smb_ctx*,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 (struct smb_ctx*) ; 
 scalar_t__ FUNC11 (struct smb_ctx*) ; 
 int FUNC12 (struct smb_ctx*,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (char*,int,...) ; 
 scalar_t__ smb_rc ; 

int
FUNC14(int argc, char *argv[])
{
	struct smb_ctx sctx, *ctx = &sctx;
	int error, opt, level;

	if (argc < 2)
		FUNC4();
	if (FUNC7(ctx, argc, argv, SMBL_VC, SMBL_SHARE, SMB_ST_ANY) != 0)
		FUNC1(1);
	if (FUNC10(ctx) != 0)
		FUNC1(1);
	if (smb_rc)
		FUNC6(smb_rc);
	while ((opt = FUNC2(argc, argv, STDPARAM_OPT)) != EOF){
		switch (opt) {
		    case STDPARAM_ARGS:
			error = FUNC9(ctx, opt, optarg);
			if (error)
				FUNC1(1);
			break;
		    default:
			FUNC4();
			/*NOTREACHED*/
		}
	}
#ifdef APPLE
	error = loadsmbvfs();
	if (error)
		errx(EX_OSERR, "SMB filesystem is not available");
#endif
	ctx->ct_ssn.ioc_opt &= ~SMBVOPT_CREATE;
	ctx->ct_sh.ioc_opt &= ~SMBSOPT_CREATE;
	if (FUNC11(ctx) != 0)
		FUNC1(1);
	level = ctx->ct_parsedlevel;
	error = FUNC8(ctx, level, 0);
	if (error == ENOENT) {
/*		ctx->ct_ssn.ioc_opt |= SMBCOPT_SINGLE;
		error = smb_ctx_login(ctx);
		if (error == ENOENT) {
			ctx->ct_ssn.ioc_opt |= SMBCOPT_PRIVATE;
			error = smb_ctx_login(ctx);
			if (error == ENOENT) {
				ctx->ct_ssn.ioc_opt &= ~SMBCOPT_SINGLE;
				error = smb_ctx_login(ctx);
			}
		}*/
		if (error) {
			FUNC13("There is no connection to %s", error, ctx->ct_ssn.ioc_srvname);
			FUNC1(1);
		}
	}
	if (error)
		FUNC1(1);
	switch (level) {
	    case SMBL_VC:
		opt = SMBV_PERMANENT;
		break;
	    case SMBL_SHARE:
		opt = SMBS_PERMANENT;
		break;
	    default:
		FUNC13("unknown connection level %d", 0, level);
		FUNC1(1);
	}
	error = FUNC12(ctx, level, opt, 0);
	if (error && error != EACCES) {
		FUNC13("Can't release connection", error);
		FUNC1(1);
	}
	FUNC5("Connection unmarked as permanent and will be closed when possible\n");
	FUNC1(0);
}