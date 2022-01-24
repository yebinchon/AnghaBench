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
typedef  int /*<<< orphan*/  uint16_t ;
struct ctl_req {void* status; int /*<<< orphan*/  error_str; int /*<<< orphan*/  args_nvl; } ;
struct cfiscsi_target {int /*<<< orphan*/  ct_port; int /*<<< orphan*/  ct_state; } ;

/* Variables and functions */
 int /*<<< orphan*/  CFISCSI_TARGET_STATE_DYING ; 
 void* CTL_LUN_ERROR ; 
 void* CTL_LUN_OK ; 
 int /*<<< orphan*/  cfiscsi_softc ; 
 struct cfiscsi_target* FUNC0 (int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct cfiscsi_target*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 char* FUNC3 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int,char*,...) ; 
 int /*<<< orphan*/  FUNC5 (char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC6(struct ctl_req *req)
{
	struct cfiscsi_target *ct;
	const char *target, *val;
	uint16_t tag;

	target = FUNC3(req->args_nvl, "cfiscsi_target", NULL);
	val = FUNC3(req->args_nvl, "cfiscsi_portal_group_tag",
	    NULL);

	if (target == NULL || val == NULL) {
		req->status = CTL_LUN_ERROR;
		FUNC4(req->error_str, sizeof(req->error_str),
		    "Missing required argument");
		return;
	}

	tag = FUNC5(val, NULL, 0);
	ct = FUNC0(&cfiscsi_softc, target, tag);
	if (ct == NULL) {
		req->status = CTL_LUN_ERROR;
		FUNC4(req->error_str, sizeof(req->error_str),
		    "can't find target \"%s\"", target);
		return;
	}

	ct->ct_state = CFISCSI_TARGET_STATE_DYING;
	FUNC2(&ct->ct_port);
	FUNC1(ct);
	FUNC1(ct);
	req->status = CTL_LUN_OK;
}