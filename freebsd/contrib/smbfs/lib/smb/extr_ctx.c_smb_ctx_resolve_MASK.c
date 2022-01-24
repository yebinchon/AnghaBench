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
struct sockaddr_nb {int /*<<< orphan*/  snb_len; } ;
struct sockaddr {int dummy; } ;
struct smbioc_ossn {scalar_t__* ioc_srvname; scalar_t__* ioc_localcs; scalar_t__* ioc_servercs; scalar_t__* ioc_password; int /*<<< orphan*/  ioc_svlen; int /*<<< orphan*/  ioc_lolen; struct sockaddr* ioc_local; struct sockaddr* ioc_server; int /*<<< orphan*/  ioc_user; } ;
struct smbioc_oshare {scalar_t__* ioc_share; } ;
struct smb_ctx {int ct_flags; scalar_t__ ct_minlevel; scalar_t__* ct_locname; TYPE_1__* ct_nb; int /*<<< orphan*/  ct_smbtcpport; scalar_t__ ct_srvaddr; struct smbioc_oshare ct_sh; struct smbioc_ossn ct_ssn; } ;
struct nb_name {int /*<<< orphan*/  nn_scope; int /*<<< orphan*/  nn_type; int /*<<< orphan*/  nn_name; } ;
struct TYPE_3__ {int /*<<< orphan*/  nb_scope; } ;

/* Variables and functions */
 int EINVAL ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  NBERR_NAMETOOLONG ; 
 int /*<<< orphan*/  NBT_SERVER ; 
 int /*<<< orphan*/  NBT_WKSTA ; 
 int NB_NAMELEN ; 
 int SMBCF_NOPWD ; 
 int SMBCF_RESOLVED ; 
 scalar_t__ SMBL_SHARE ; 
 char* FUNC1 (char*) ; 
 int FUNC2 (scalar_t__*,scalar_t__*) ; 
 int FUNC3 (TYPE_1__*) ; 
 int FUNC4 (scalar_t__*) ; 
 int FUNC5 (scalar_t__,struct sockaddr**,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct sockaddr*) ; 
 int FUNC7 (struct sockaddr*,struct nb_name*,struct sockaddr_nb**) ; 
 int FUNC8 (scalar_t__*,TYPE_1__*,struct sockaddr**) ; 
 int /*<<< orphan*/  nls_lower ; 
 int /*<<< orphan*/  FUNC9 (scalar_t__*,scalar_t__*) ; 
 int /*<<< orphan*/  nls_upper ; 
 int FUNC10 (char*,scalar_t__*,int /*<<< orphan*/ ) ; 
 int FUNC11 (struct smb_ctx*,char*) ; 
 int /*<<< orphan*/  FUNC12 (char*,int,...) ; 
 int /*<<< orphan*/  FUNC13 (scalar_t__*,char*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,scalar_t__*,int) ; 
 int FUNC15 (scalar_t__*) ; 

int
FUNC16(struct smb_ctx *ctx)
{
	struct smbioc_ossn *ssn = &ctx->ct_ssn;
	struct smbioc_oshare *sh = &ctx->ct_sh;
	struct nb_name nn;
	struct sockaddr *sap;
	struct sockaddr_nb *salocal, *saserver;
	char *cp;
	int error = 0;
	
	ctx->ct_flags &= ~SMBCF_RESOLVED;
	if (ssn->ioc_srvname[0] == 0) {
		FUNC12("no server name specified", 0);
		return EINVAL;
	}
	if (ctx->ct_minlevel >= SMBL_SHARE && sh->ioc_share[0] == 0) {
		FUNC12("no share name specified for %s@%s",
		    0, ssn->ioc_user, ssn->ioc_srvname);
		return EINVAL;
	}
	error = FUNC3(ctx->ct_nb);
	if (error)
		return error;
	if (ssn->ioc_localcs[0] == 0)
		FUNC13(ssn->ioc_localcs, "ISO8859-1");
	error = FUNC10("tolower", ssn->ioc_localcs, nls_lower);
	if (error)
		return error;
	error = FUNC10("toupper", ssn->ioc_localcs, nls_upper);
	if (error)
		return error;
	if (ssn->ioc_servercs[0] != 0) {
		error = FUNC2
			(ssn->ioc_servercs, ssn->ioc_localcs);
		if (error) return error;
	}
	if (ctx->ct_srvaddr) {
		error = FUNC5(ctx->ct_srvaddr, &sap, ctx->ct_smbtcpport);
	} else {
		error = FUNC8(ssn->ioc_srvname, ctx->ct_nb, &sap);
	}
	if (error) {
		FUNC12("can't get server address", error);
		return error;
	}
	nn.nn_scope = ctx->ct_nb->nb_scope;
	nn.nn_type = NBT_SERVER;
	if (FUNC15(ssn->ioc_srvname) > NB_NAMELEN)
		return FUNC0(NBERR_NAMETOOLONG);
	FUNC14(nn.nn_name, ssn->ioc_srvname, sizeof(nn.nn_name));
	error = FUNC7(sap, &nn, &saserver);
	FUNC6(sap);
	if (error) {
		FUNC12("can't allocate server address", error);
		return error;
	}
	ssn->ioc_server = (struct sockaddr*)saserver;
	if (ctx->ct_locname[0] == 0) {
		error = FUNC4(ctx->ct_locname);
		if (error) {
			FUNC12("can't get local name", error);
			return error;
		}
		FUNC9(ctx->ct_locname, ctx->ct_locname);
	}
	/*
	 * Truncate the local host name to NB_NAMELEN-1 which gives a
	 * suffix of 0 which is "workstation name".
	 */
	FUNC14(nn.nn_name, ctx->ct_locname, NB_NAMELEN);
	nn.nn_type = NBT_WKSTA;
	nn.nn_scope = ctx->ct_nb->nb_scope;
	error = FUNC7(NULL, &nn, &salocal);
	if (error) {
		FUNC6((struct sockaddr*)saserver);
		FUNC12("can't allocate local address", error);
		return error;
	}
	ssn->ioc_local = (struct sockaddr*)salocal;
	ssn->ioc_lolen = salocal->snb_len;
	ssn->ioc_svlen = saserver->snb_len;
	if (ssn->ioc_password[0] == 0 && (ctx->ct_flags & SMBCF_NOPWD) == 0) {
		cp = FUNC1("Password:");
		error = FUNC11(ctx, cp);
		if (error)
			return error;
	}
	ctx->ct_flags |= SMBCF_RESOLVED;
	return 0;
}