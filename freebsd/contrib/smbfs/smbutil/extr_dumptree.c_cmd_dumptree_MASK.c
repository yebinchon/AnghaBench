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
struct smb_vc_info {int dummy; } ;
struct smb_share_info {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  EX_OSERR ; 
 int SMB_INFO_NONE ; 
#define  SMB_INFO_SHARE 129 
#define  SMB_INFO_VC 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (void*) ; 
 scalar_t__ FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (void*) ; 
 int /*<<< orphan*/  FUNC4 (void*) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 void* FUNC6 () ; 

int
FUNC7(int argc, char *argv[])
{
	void *p, *op;
	int *itype;

	FUNC5("SMB connections:\n");
#ifdef APPLE
	if (loadsmbvfs())
		errx(EX_OSERR, "SMB filesystem is not available");
#endif
	p = FUNC6();
	if (p == NULL) {
		FUNC5("None\n");
		return 0;
	}
	op = p;
	for (;;) {
		itype = p;
		if (*itype == SMB_INFO_NONE)
			break;
		switch (*itype) {
		    case SMB_INFO_VC:
			FUNC4(p);
			p = (struct smb_vc_info*)p + 1;
			break;
		    case SMB_INFO_SHARE:
			FUNC3(p);
			p = (struct smb_share_info*)p + 1;
			break;
		    default:
			FUNC5("Out of sync\n");
			FUNC1(op);
			return 1;
		    
		}
	}
	FUNC1(op);
	FUNC5("\n");
	return 0;
}