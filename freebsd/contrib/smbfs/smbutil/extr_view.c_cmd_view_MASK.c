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
typedef  int u_int32_t ;
typedef  int /*<<< orphan*/  u_int16_t ;
struct smb_share_info_1 {char* shi1_netname; int /*<<< orphan*/  shi1_remark; int /*<<< orphan*/  shi1_type; } ;
struct TYPE_2__ {int /*<<< orphan*/  ioc_srvname; } ;
struct smb_ctx {TYPE_1__ ct_ssn; } ;

/* Variables and functions */
 int EOF ; 
 int /*<<< orphan*/  EX_OSERR ; 
 int /*<<< orphan*/  SMBLK_CREATE ; 
 int /*<<< orphan*/  SMBL_SHARE ; 
 int /*<<< orphan*/  SMBL_VC ; 
 int SMB_ERROR_MORE_DATA ; 
 int SMB_RAP_ERROR ; 
 int /*<<< orphan*/  SMB_ST_ANY ; 
#define  STDPARAM_ARGS 128 
 int /*<<< orphan*/  STDPARAM_OPT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct smb_share_info_1*) ; 
 int FUNC3 (int,char**,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 () ; 
 struct smb_share_info_1* FUNC7 (int) ; 
 size_t FUNC8 (int /*<<< orphan*/ ,int) ; 
 char* FUNC9 (char*,char*) ; 
 int /*<<< orphan*/  optarg ; 
 int /*<<< orphan*/  FUNC10 (char*,...) ; 
 int /*<<< orphan*/  FUNC11 (scalar_t__) ; 
 char** shtype ; 
 scalar_t__ FUNC12 (struct smb_ctx*,int,char**,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC13 (struct smb_ctx*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC14 (struct smb_ctx*,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC15 (struct smb_ctx*) ; 
 scalar_t__ FUNC16 (struct smb_ctx*) ; 
 int /*<<< orphan*/  FUNC17 (struct smb_ctx*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (char*,int,...) ; 
 int FUNC19 (struct smb_ctx*,int,struct smb_share_info_1*,int,int*,int*) ; 
 scalar_t__ smb_rc ; 
 int /*<<< orphan*/  FUNC20 () ; 

int
FUNC21(int argc, char *argv[])
{
	struct smb_ctx sctx, *ctx = &sctx;
	struct smb_share_info_1 *rpbuf, *ep;
	char *cp;
	u_int32_t remark;
	u_int16_t type;
	int error, opt, bufsize, i, entries, total;
	

	if (argc < 2)
		FUNC20();
	if (FUNC12(ctx, argc, argv, SMBL_VC, SMBL_VC, SMB_ST_ANY) != 0)
		FUNC1(1);
	if (FUNC15(ctx) != 0)
		FUNC1(1);
	if (smb_rc)
		FUNC11(smb_rc);
	while ((opt = FUNC3(argc, argv, STDPARAM_OPT)) != EOF) {
		switch(opt){
		    case STDPARAM_ARGS:
			error = FUNC14(ctx, opt, optarg);
			if (error)
				FUNC1(1);
			break;
		    default:
			FUNC20();
			/*NOTREACHED*/
		}
	}
#ifdef APPLE
	if (loadsmbvfs())
		errx(EX_OSERR, "SMB filesystem is not available");
#endif
	FUNC17(ctx, "IPC$", SMB_ST_ANY);
	if (FUNC16(ctx) != 0)
		FUNC1(1);
	error = FUNC13(ctx, SMBL_SHARE, SMBLK_CREATE);
	if (error) {
		FUNC18("could not login to server %s", error, ctx->ct_ssn.ioc_srvname);
		FUNC1(1);
	}
	FUNC10("Share        Type       Comment\n");
	FUNC10("-------------------------------\n");
	bufsize = 0xffe0; /* samba notes win2k bug with 65535 */
	rpbuf = FUNC7(bufsize);
	error = FUNC19(ctx, 1, rpbuf, bufsize, &entries, &total);
	if (error &&
	    error != (SMB_ERROR_MORE_DATA | SMB_RAP_ERROR)) {
		FUNC18("unable to list resources", error);
		FUNC1(1);
	}
	for (ep = rpbuf, i = 0; i < entries; i++, ep++) {
		type = FUNC4(ep->shi1_type);
		remark = FUNC5(ep->shi1_remark);
		remark &= 0xFFFF;

		cp = (char*)rpbuf + remark;
		FUNC10("%-12s %-10s %s\n", ep->shi1_netname,
		    shtype[FUNC8(type, sizeof shtype / sizeof(char *) - 1)],
		    remark ? FUNC9(cp, cp) : "");
	}
	FUNC10("\n%d shares listed from %d available\n", entries, total);
	FUNC2(rpbuf);
	return 0;
}