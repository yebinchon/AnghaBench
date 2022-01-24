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
struct smb_rap {int r_entries; } ;
struct smb_ctx {int dummy; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,char*,char*,struct smb_rap**) ; 
 int /*<<< orphan*/  FUNC1 (struct smb_rap*) ; 
 int FUNC2 (struct smb_rap*,int) ; 
 int FUNC3 (struct smb_rap*,long*) ; 
 int FUNC4 (struct smb_rap*,struct smb_ctx*) ; 
 int /*<<< orphan*/  FUNC5 (struct smb_rap*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct smb_rap*,void*) ; 

int
FUNC7(struct smb_ctx *ctx, int sLevel, void *pbBuffer,
	int cbBuffer, int *pcEntriesRead, int *pcTotalAvail)
{
	struct smb_rap *rap;
	long lval;
	int error;

	error = FUNC0(0, "WrLeh", "B13BWz", &rap);
	if (error)
		return error;
	FUNC5(rap, sLevel);		/* W - sLevel */
	FUNC6(rap, pbBuffer);	/* r - pbBuffer */
	FUNC5(rap, cbBuffer);	/* L - cbBuffer */
	error = FUNC4(rap, ctx);
	if (error == 0) {
		*pcEntriesRead = rap->r_entries;
		error = FUNC3(rap, &lval);
		*pcTotalAvail = lval;
	}
	error = FUNC2(rap, error);
	FUNC1(rap);
	return error;
}