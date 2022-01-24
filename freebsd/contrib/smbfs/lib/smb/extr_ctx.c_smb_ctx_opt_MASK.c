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
struct TYPE_4__ {void* ioc_timeout; void* ioc_retrycount; int /*<<< orphan*/  ioc_group; int /*<<< orphan*/  ioc_owner; void* ioc_rights; } ;
struct TYPE_3__ {int /*<<< orphan*/  ioc_group; int /*<<< orphan*/  ioc_owner; void* ioc_rights; } ;
struct smb_ctx {TYPE_2__ ct_ssn; TYPE_1__ ct_sh; int /*<<< orphan*/  ct_flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  SMBCF_NOPWD ; 
 int /*<<< orphan*/  SMBCF_SRIGHTS ; 
 void* FUNC0 (char const*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int FUNC2 (struct smb_ctx*,char const*) ; 
 int FUNC3 (struct smb_ctx*,char const*) ; 
 int FUNC4 (char*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 char* FUNC5 (char*,char) ; 
 char* FUNC6 (char const*) ; 
 void* FUNC7 (char const*,char**,int) ; 

int
FUNC8(struct smb_ctx *ctx, int opt, const char *arg)
{
	int error = 0;
	char *p, *cp;

	switch(opt) {
	    case 'U':
		break;
	    case 'I':
		error = FUNC2(ctx, arg);
		break;
	    case 'M':
		ctx->ct_ssn.ioc_rights = FUNC7(arg, &cp, 8);
		if (*cp == '/') {
			ctx->ct_sh.ioc_rights = FUNC7(cp + 1, &cp, 8);
			ctx->ct_flags |= SMBCF_SRIGHTS;
		}
		break;
	    case 'N':
		ctx->ct_flags |= SMBCF_NOPWD;
		break;
	    case 'O':
		p = FUNC6(arg);
		cp = FUNC5(p, '/');
		if (cp) {
			*cp++ = '\0';
			error = FUNC4(cp, &ctx->ct_sh.ioc_owner,
			    &ctx->ct_sh.ioc_group);
		}
		if (*p && error == 0) {
			error = FUNC4(p, &ctx->ct_ssn.ioc_owner,
			    &ctx->ct_ssn.ioc_group);
		}
		FUNC1(p);
		break;
	    case 'P':
/*		ctx->ct_ssn.ioc_opt |= SMBCOPT_PERMANENT;*/
		break;
	    case 'R':
		ctx->ct_ssn.ioc_retrycount = FUNC0(arg);
		break;
	    case 'T':
		ctx->ct_ssn.ioc_timeout = FUNC0(arg);
		break;
	    case 'W':
		error = FUNC3(ctx, arg);
		break;
	}
	return error;
}