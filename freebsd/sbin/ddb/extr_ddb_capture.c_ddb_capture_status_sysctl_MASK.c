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
typedef  int u_int ;
typedef  int /*<<< orphan*/  db_capture_inprogress ;
typedef  int /*<<< orphan*/  db_capture_bufoff ;

/* Variables and functions */
 int /*<<< orphan*/  EX_OSERR ; 
 int /*<<< orphan*/  SYSCTL_DDB_CAPTURE_BUFOFF ; 
 int /*<<< orphan*/  SYSCTL_DDB_CAPTURE_BUFSIZE ; 
 int /*<<< orphan*/  SYSCTL_DDB_CAPTURE_INPROGRESS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int*,size_t*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC3(void)
{
	u_int db_capture_bufoff, db_capture_bufsize, db_capture_inprogress;
	size_t len;

	len = sizeof(db_capture_bufoff);
	if (FUNC2(SYSCTL_DDB_CAPTURE_BUFOFF, &db_capture_bufoff, &len,
	    NULL, 0) < 0)
		FUNC0(EX_OSERR, "sysctl: %s", SYSCTL_DDB_CAPTURE_BUFOFF);
	len = sizeof(db_capture_bufoff);
	if (FUNC2(SYSCTL_DDB_CAPTURE_BUFSIZE, &db_capture_bufsize,
	    &len, NULL, 0) < 0)
		FUNC0(EX_OSERR, "sysctl: %s", SYSCTL_DDB_CAPTURE_BUFSIZE);
	len = sizeof(db_capture_inprogress);
	if (FUNC2(SYSCTL_DDB_CAPTURE_INPROGRESS,
	    &db_capture_inprogress, &len, NULL, 0) < 0)
		FUNC0(EX_OSERR, "sysctl: %s", SYSCTL_DDB_CAPTURE_INPROGRESS);
	FUNC1("%u/%u bytes used\n", db_capture_bufoff, db_capture_bufsize);
	if (db_capture_inprogress)
		FUNC1("capture is on\n");
	else
		FUNC1("capture is off\n");
}