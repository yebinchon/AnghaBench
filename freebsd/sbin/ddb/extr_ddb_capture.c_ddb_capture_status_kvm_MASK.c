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
typedef  int /*<<< orphan*/  kvm_t ;
typedef  int /*<<< orphan*/  db_capture_inprogress ;
typedef  int /*<<< orphan*/  db_capture_bufsize ;
typedef  int /*<<< orphan*/  db_capture_bufoff ;

/* Variables and functions */
 int /*<<< orphan*/  X_DB_CAPTURE_BUFOFF ; 
 int /*<<< orphan*/  X_DB_CAPTURE_BUFSIZE ; 
 int /*<<< orphan*/  X_DB_CAPTURE_INPROGRESS ; 
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int /*<<< orphan*/  FUNC1 (int,char*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,...) ; 

__attribute__((used)) static void
FUNC4(kvm_t *kvm)
{
	u_int db_capture_bufoff, db_capture_bufsize, db_capture_inprogress;

	if (FUNC2(kvm, X_DB_CAPTURE_BUFOFF, &db_capture_bufoff,
	    sizeof(db_capture_bufoff), 0) < 0)
		FUNC1(-1, "kvm: unable to read db_capture_bufoff");
	if (FUNC2(kvm, X_DB_CAPTURE_BUFSIZE, &db_capture_bufsize,
	    sizeof(db_capture_bufsize), 0) < 0)
		FUNC1(-1, "kvm: unable to read db_capture_bufsize");
	if (FUNC2(kvm, X_DB_CAPTURE_INPROGRESS,
	    &db_capture_inprogress, sizeof(db_capture_inprogress), 0) < 0)
		FUNC0(-1, "kvm: unable to read db_capture_inprogress");
	FUNC3("%u/%u bytes used\n", db_capture_bufoff, db_capture_bufsize);
	if (db_capture_inprogress)
		FUNC3("capture is on\n");
	else
		FUNC3("capture is off\n");

}