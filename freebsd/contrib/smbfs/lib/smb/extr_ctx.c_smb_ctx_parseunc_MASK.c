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
typedef  int /*<<< orphan*/  tmp ;
struct smb_ctx {scalar_t__ ct_maxlevel; scalar_t__ ct_minlevel; scalar_t__ ct_parsedlevel; } ;

/* Variables and functions */
 int EINVAL ; 
 scalar_t__ SMBL_NONE ; 
 scalar_t__ SMBL_SHARE ; 
 scalar_t__ SMBL_VC ; 
 int SMB_ST_NONE ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int FUNC1 (char const*,char,char*,int,char const**) ; 
 int FUNC2 (struct smb_ctx*,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct smb_ctx*,char*) ; 
 int FUNC4 (struct smb_ctx*,char*,int) ; 
 int FUNC5 (struct smb_ctx*,int /*<<< orphan*/ ) ; 
 int FUNC6 (struct smb_ctx*,char*) ; 
 int /*<<< orphan*/  FUNC7 (char*,int /*<<< orphan*/ ) ; 
 char* FUNC8 (char*,char) ; 

int
FUNC9(struct smb_ctx *ctx, const char *unc, int sharetype,
	const char **next)
{
	const char *p = unc;
	char *p1, *psmb, *pnb;
	char tmp[1024];
	int error ;

	ctx->ct_parsedlevel = SMBL_NONE;
	if (*p++ != '/' || *p++ != '/') {
		FUNC7("UNC should start with '//'", 0);
		return EINVAL;
	}
	p1 = tmp;
	error = FUNC1(p, '@', p1, sizeof(tmp), &p);
	if (!error) {
		if (ctx->ct_maxlevel < SMBL_VC) {
			FUNC7("no user name required", 0);
			return EINVAL;
		}
		error = FUNC6(ctx, tmp);
		if (error)
			return error;
		ctx->ct_parsedlevel = SMBL_VC;
	}
	error = FUNC1(p, '/', p1, sizeof(tmp), &p);
	if (error) {
		error = FUNC1(p, '\0', p1, sizeof(tmp), &p);
		if (error) {
			FUNC7("no server name found", 0);
			return error;
		}
	}
	if (*p1 == 0) {
		FUNC7("empty server name", 0);
		return EINVAL;
	}
	/*
	 * Check for port number specification.
	 */
	psmb = FUNC8(tmp, ':');
	if (psmb) {
		*psmb++ = '\0';
		pnb = FUNC8(psmb, ':');
		if (pnb) {
			*pnb++ = '\0';
			error = FUNC2(ctx, FUNC0(pnb));
			if (error) {
				FUNC7("Invalid NetBIOS port number", 0);
				return error;
			}
		}
		error = FUNC5(ctx, FUNC0(psmb));
		if (error) {
			FUNC7("Invalid SMB port number", 0);
			return error;
		}
	}
	error = FUNC3(ctx, tmp);
	if (error)
		return error;
	if (sharetype == SMB_ST_NONE) {
		*next = p;
		return 0;
	}
	if (*p != 0 && ctx->ct_maxlevel < SMBL_SHARE) {
		FUNC7("no share name required", 0);
		return EINVAL;
	}
	error = FUNC1(p, '/', p1, sizeof(tmp), &p);
	if (error) {
		error = FUNC1(p, '\0', p1, sizeof(tmp), &p);
		if (error) {
			FUNC7("unexpected end of line", 0);
			return error;
		}
	}
	if (*p1 == 0 && ctx->ct_minlevel >= SMBL_SHARE) {
		FUNC7("empty share name", 0);
		return EINVAL;
	}
	*next = p;
	if (*p1 == 0)
		return 0;
	error = FUNC4(ctx, p1, sharetype);
	return error;
}