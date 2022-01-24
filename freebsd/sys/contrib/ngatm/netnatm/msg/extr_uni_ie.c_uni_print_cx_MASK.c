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
typedef  size_t u_int ;
struct unicx {size_t errcnt; TYPE_1__* err; int /*<<< orphan*/  tabsiz; int /*<<< orphan*/  multiline; int /*<<< orphan*/  cause_hard; int /*<<< orphan*/  bearer_hard; int /*<<< orphan*/  git_hard; int /*<<< orphan*/  pnni; int /*<<< orphan*/  q2932; } ;
struct TYPE_2__ {size_t err; size_t act; scalar_t__ man; int /*<<< orphan*/  ie; } ;

/* Variables and functions */
#define  UNI_IERR_ACC 132 
#define  UNI_IERR_BAD 131 
#define  UNI_IERR_LEN 130 
#define  UNI_IERR_MIS 129 
#define  UNI_IERR_UNK 128 
 int /*<<< orphan*/  FUNC0 (char*,size_t,struct unicx*) ; 
 int /*<<< orphan*/  FUNC1 (struct unicx*,char*,...) ; 
 int /*<<< orphan*/  FUNC2 (char,struct unicx*) ; 

void
FUNC3(char *buf, size_t size, struct unicx *cx)
{
	static const char *acttab[] = {
		"clr",	/* 0x00 */
		"ign",	/* 0x01 */
		"rep",	/* 0x02 */
		"x03",	/* 0x03 */
		"x04",	/* 0x04 */
		"mig",	/* 0x05 */
		"mrp",	/* 0x06 */
		"x07",	/* 0x07 */
		"def",	/* 0x08 */
	};

	static const char *errtab[] = {
		[UNI_IERR_UNK] = "unk",	/* unknown IE */
		[UNI_IERR_LEN] = "len",	/* length error */
		[UNI_IERR_BAD] = "bad",	/* content error */
		[UNI_IERR_ACC] = "acc",	/* access element discarded */
		[UNI_IERR_MIS] = "mis",	/* missing IE */
	};

	u_int i;

	FUNC0(buf, size, cx);

	FUNC1(cx, "q2932		%d\n", cx->q2932);
	FUNC1(cx, "pnni		%d\n", cx->pnni);
	FUNC1(cx, "git_hard	%d\n", cx->git_hard);
	FUNC1(cx, "bearer_hard	%d\n", cx->bearer_hard);
	FUNC1(cx, "cause_hard	%d\n", cx->cause_hard);

	FUNC1(cx, "multiline	%d\n", cx->multiline);
	FUNC1(cx, "tabsiz		%d\n", cx->tabsiz);

	FUNC1(cx, "errcnt		%d (", cx->errcnt);
	for(i = 0; i < cx->errcnt; i++) {
		FUNC1(cx, "%02x[%s,%s%s]", cx->err[i].ie,
		    errtab[cx->err[i].err], acttab[cx->err[i].act],
		    cx->err[i].man ? ",M" : "");
		if(i != cx->errcnt - 1)
			FUNC2(' ', cx);
	}
	FUNC1(cx, ")\n");
}