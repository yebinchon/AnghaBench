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
typedef  int u_int32 ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int INFO_FLAG_AUTHENABLE ; 
 int INFO_FLAG_BURST ; 
 int INFO_FLAG_CONFIG ; 
 int INFO_FLAG_IBURST ; 
 int INFO_FLAG_PREFER ; 
 int INFO_FLAG_REFCLOCK ; 
 int INFO_FLAG_SEL_CANDIDATE ; 
 int INFO_FLAG_SHORTLIST ; 
 int INFO_FLAG_SYSPEER ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,...) ; 

__attribute__((used)) static void
FUNC1(
	FILE *	fp,
	u_int32	flags
	)
{
	static const char none[] = "";
	static const char comma[] = ",";
	const char *dlim;

	if (0 == flags) {
		FUNC0(fp, " none\n");
		return;
	}
	dlim = none;
	if (flags & INFO_FLAG_SYSPEER) {
		FUNC0(fp, " system_peer");
		dlim = comma;
	}
	if (flags & INFO_FLAG_CONFIG) {
		FUNC0(fp, "%s config", dlim);
		dlim = comma;
	}
	if (flags & INFO_FLAG_REFCLOCK) {
		FUNC0(fp, "%s refclock", dlim);
		dlim = comma;
	}
	if (flags & INFO_FLAG_AUTHENABLE) {
		FUNC0(fp, "%s auth", dlim);
		dlim = comma;
	}
	if (flags & INFO_FLAG_PREFER) {
		FUNC0(fp, "%s prefer", dlim);
		dlim = comma;
	}
	if (flags & INFO_FLAG_IBURST) {
		FUNC0(fp, "%s iburst", dlim);
		dlim = comma;
	}
	if (flags & INFO_FLAG_BURST) {
		FUNC0(fp, "%s burst", dlim);
		dlim = comma;
	}
	if (flags & INFO_FLAG_SEL_CANDIDATE) {
		FUNC0(fp, "%s candidate", dlim);
		dlim = comma;
	}
	if (flags & INFO_FLAG_SHORTLIST) {
		FUNC0(fp, "%s shortlist", dlim);
		dlim = comma;
	}
	FUNC0(fp, "\n");
}