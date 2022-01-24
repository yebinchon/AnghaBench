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
typedef  int /*<<< orphan*/  db_expr_t ;

/* Variables and functions */
#define  EBUSY 129 
#define  ENXIO 128 
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int FUNC1 (int) ; 
 scalar_t__ textdump_pending ; 

__attribute__((used)) static void
FUNC2(db_expr_t dummy, bool dummy2, db_expr_t dummy3, char *dummy4)
{
	int error;

	if (textdump_pending) {
		FUNC0("textdump_pending set.\n"
		    "run \"textdump unset\" first or \"textdump dump\" for a textdump.\n");
		return;
	}
	error = FUNC1(false);
	if (error) {
		FUNC0("Cannot dump: ");
		switch (error) {
		case EBUSY:
			FUNC0("debugger got invoked while dumping.\n");
			break;
		case ENXIO:
			FUNC0("no dump device specified.\n");
			break;
		default:
			FUNC0("unknown error (error=%d).\n", error);
			break;
		}
	}
}