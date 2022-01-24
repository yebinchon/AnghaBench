#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  union ccb {int dummy; } ccb ;
struct TYPE_4__ {int /*<<< orphan*/  func_code; } ;
struct ccb_immediate_notify {TYPE_2__ ccb_h; } ;
struct TYPE_3__ {struct atio_descr* targ_descr; int /*<<< orphan*/  func_code; } ;
struct ccb_accept_tio {TYPE_1__ ccb_h; } ;
struct atio_descr {int dummy; } ;

/* Variables and functions */
 int MAX_INITIATORS ; 
 int /*<<< orphan*/  XPT_ACCEPT_TARGET_IO ; 
 int /*<<< orphan*/  XPT_IMMEDIATE_NOTIFY ; 
 int /*<<< orphan*/  FUNC0 (struct ccb_accept_tio*) ; 
 scalar_t__ FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (union ccb*,int) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 

__attribute__((used)) static int
FUNC4()
{
	int i;

	for (i = 0; i < MAX_INITIATORS; i++) {
		struct ccb_accept_tio *atio;
		struct atio_descr *a_descr;
		struct ccb_immediate_notify *inot;

		atio = (struct ccb_accept_tio *)FUNC1(sizeof(*atio));
		if (atio == NULL) {
			FUNC3("malloc ATIO");
			return (-1);
		}
		a_descr = (struct atio_descr *)FUNC1(sizeof(*a_descr));
		if (a_descr == NULL) {
			FUNC0(atio);
			FUNC3("malloc atio_descr");
			return (-1);
		}
		atio->ccb_h.func_code = XPT_ACCEPT_TARGET_IO;
		atio->ccb_h.targ_descr = a_descr;
		FUNC2((union ccb *)atio, /*priority*/1);

		inot = (struct ccb_immediate_notify *)FUNC1(sizeof(*inot));
		if (inot == NULL) {
			FUNC3("malloc INOT");
			return (-1);
		}
		inot->ccb_h.func_code = XPT_IMMEDIATE_NOTIFY;
		FUNC2((union ccb *)inot, /*priority*/1);
	}

	return (0);
}