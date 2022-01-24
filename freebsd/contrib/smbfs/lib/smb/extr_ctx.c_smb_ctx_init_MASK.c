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
typedef  scalar_t__ uid_t ;
struct TYPE_4__ {void* ioc_group; void* ioc_owner; void* ioc_rights; void* ioc_mode; void* ioc_opt; } ;
struct TYPE_3__ {int ioc_timeout; int ioc_retrycount; void* ioc_rights; void* ioc_mode; void* ioc_group; void* ioc_owner; void* ioc_opt; } ;
struct smb_ctx {int ct_fd; int ct_minlevel; int ct_maxlevel; char const* ct_uncnext; int /*<<< orphan*/  ct_nb; TYPE_2__ ct_sh; TYPE_1__ ct_ssn; int /*<<< orphan*/  ct_smbtcpport; int /*<<< orphan*/  ct_parsedlevel; } ;
struct passwd {char const* pw_name; } ;

/* Variables and functions */
 int /*<<< orphan*/  SMBL_NONE ; 
 void* SMBM_ANY_GROUP ; 
 void* SMBM_ANY_OWNER ; 
 void* SMBM_DEFAULT ; 
 void* SMBM_EXEC ; 
 void* SMBVOPT_CREATE ; 
 int /*<<< orphan*/  SMB_TCP_PORT ; 
 int /*<<< orphan*/  FUNC0 (struct smb_ctx*,int) ; 
 int FUNC1 (int,char**,char*) ; 
 char* cf_optarg ; 
 int cf_optind ; 
 int cf_optreset ; 
 int /*<<< orphan*/  FUNC2 () ; 
 scalar_t__ FUNC3 () ; 
 struct passwd* FUNC4 (scalar_t__) ; 
 int FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*) ; 
 int FUNC7 (char const*) ; 
 int FUNC8 (struct smb_ctx*,char const*,int,char const**) ; 
 int FUNC9 (struct smb_ctx*,char const*) ; 
 int FUNC10 (struct smb_ctx*,char const*) ; 
 scalar_t__ FUNC11 (char const*,char*,int) ; 

int
FUNC12(struct smb_ctx *ctx, int argc, char *argv[],
	int minlevel, int maxlevel, int sharetype)
{
	int  opt, error = 0;
	uid_t euid;
	const char *arg, *cp;
	struct passwd *pwd;

	FUNC0(ctx,sizeof(*ctx));
	error = FUNC5(&ctx->ct_nb);
	if (error)
		return error;
	ctx->ct_fd = -1;
	ctx->ct_parsedlevel = SMBL_NONE;
	ctx->ct_minlevel = minlevel;
	ctx->ct_maxlevel = maxlevel;
	ctx->ct_smbtcpport = SMB_TCP_PORT;

	ctx->ct_ssn.ioc_opt = SMBVOPT_CREATE;
	ctx->ct_ssn.ioc_timeout = 15;
	ctx->ct_ssn.ioc_retrycount = 4;
	ctx->ct_ssn.ioc_owner = SMBM_ANY_OWNER;
	ctx->ct_ssn.ioc_group = SMBM_ANY_GROUP;
	ctx->ct_ssn.ioc_mode = SMBM_EXEC;
	ctx->ct_ssn.ioc_rights = SMBM_DEFAULT;

	ctx->ct_sh.ioc_opt = SMBVOPT_CREATE;
	ctx->ct_sh.ioc_owner = SMBM_ANY_OWNER;
	ctx->ct_sh.ioc_group = SMBM_ANY_GROUP;
	ctx->ct_sh.ioc_mode = SMBM_EXEC;
	ctx->ct_sh.ioc_rights = SMBM_DEFAULT;
	ctx->ct_sh.ioc_owner = SMBM_ANY_OWNER;
	ctx->ct_sh.ioc_group = SMBM_ANY_GROUP;

	FUNC6(ctx->ct_nb, "");
	euid = FUNC3();
	if ((pwd = FUNC4(euid)) != NULL) {
		FUNC10(ctx, pwd->pw_name);
		FUNC2();
	} else if (euid == 0)
		FUNC10(ctx, "root");
	else
		return 0;
	if (argv == NULL)
		return 0;
	for (opt = 1; opt < argc; opt++) {
		cp = argv[opt];
		if (FUNC11(cp, "//", 2) != 0)
			continue;
		error = FUNC8(ctx, cp, sharetype, (const char**)&cp);
		if (error)
			return error;
		ctx->ct_uncnext = cp;
		break;
	}
	while (error == 0 && (opt = FUNC1(argc, argv, ":E:L:U:")) != -1) {
		arg = cf_optarg;
		switch (opt) {
		    case 'E':
			error = FUNC9(ctx, arg);
			if (error)
				return error;
			break;
		    case 'L':
			error = FUNC7(arg);
			if (error)
				break;
			break;
		    case 'U':
			error = FUNC10(ctx, arg);
			break;
		}
	}
	cf_optind = cf_optreset = 1;
	return error;
}