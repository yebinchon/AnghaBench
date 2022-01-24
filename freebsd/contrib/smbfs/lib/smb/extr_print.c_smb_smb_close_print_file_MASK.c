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
 int /*<<< orphan*/  SMB_COM_CLOSE_PRINT_FILE ; 
 int /*<<< orphan*/  FUNC0 (struct mbdata*,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct smb_rq*) ; 
 struct mbdata* FUNC2 (struct smb_rq*) ; 
 int FUNC3 (struct smb_ctx*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct smb_rq**) ; 
 int FUNC4 (struct smb_rq*) ; 
 int /*<<< orphan*/  FUNC5 (struct smb_rq*) ; 

int
FUNC6(struct smb_ctx *ctx, smbfh fh)
{
	struct smb_rq *rqp;
	struct mbdata *mbp;
	int error;

	error = FUNC3(ctx, SMB_COM_CLOSE_PRINT_FILE, 0, &rqp);
	if (error)
		return error;
	mbp = FUNC2(rqp);
	FUNC0(mbp, (char*)&fh, 2);
	FUNC5(rqp);
	error = FUNC4(rqp);
	FUNC1(rqp);
	return error;
}