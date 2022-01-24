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
struct smb_rq {int dummy; } ;
struct smb_ctx {int dummy; } ;
struct mbdata {int dummy; } ;
typedef  int /*<<< orphan*/  smbfh ;

/* Variables and functions */
 int /*<<< orphan*/  SMB_COM_OPEN_PRINT_FILE ; 
 int /*<<< orphan*/  SMB_DT_ASCII ; 
 int /*<<< orphan*/  FUNC0 (struct mbdata*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct mbdata*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct mbdata*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct smb_rq*) ; 
 int /*<<< orphan*/  FUNC4 (struct mbdata*,char*) ; 
 struct mbdata* FUNC5 (struct smb_rq*) ; 
 struct mbdata* FUNC6 (struct smb_rq*) ; 
 int FUNC7 (struct smb_ctx*,int /*<<< orphan*/ ,int,struct smb_rq**) ; 
 int FUNC8 (struct smb_rq*) ; 
 int /*<<< orphan*/  FUNC9 (struct smb_rq*) ; 

int
FUNC10(struct smb_ctx *ctx, int setuplen, int mode,
	char *ident, smbfh *fhp)
{
	struct smb_rq *rqp;
	struct mbdata *mbp;
	int error;

	error = FUNC7(ctx, SMB_COM_OPEN_PRINT_FILE, 2, &rqp);
	if (error)
		return error;
	mbp = FUNC6(rqp);
	FUNC1(mbp, setuplen);
	FUNC1(mbp, mode);
	FUNC9(rqp);
	FUNC2(mbp, SMB_DT_ASCII);
	FUNC4(mbp, ident);
	error = FUNC8(rqp);
	if (!error) {
		mbp = FUNC5(rqp);
		FUNC0(mbp, fhp);
	}
	FUNC3(rqp);
	return error;
}