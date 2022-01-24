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
typedef  int /*<<< orphan*/  uint8_t ;
typedef  scalar_t__ uint64_t ;
typedef  int /*<<< orphan*/  uint32_t ;
struct nv {int dummy; } ;
struct hast_resource {int hr_extentsize; int /*<<< orphan*/  hr_ctrl; int /*<<< orphan*/  hr_role; int /*<<< orphan*/  (* output_status_aux ) (struct nv*) ;scalar_t__ hr_stat_activemap_flush_error; scalar_t__ hr_stat_flush_error; scalar_t__ hr_stat_delete_error; scalar_t__ hr_stat_activemap_write_error; scalar_t__ hr_stat_write_error; scalar_t__ hr_stat_read_error; scalar_t__ hr_stat_activemap_update; scalar_t__ hr_stat_flush; scalar_t__ hr_stat_delete; scalar_t__ hr_stat_write; scalar_t__ hr_stat_read; int /*<<< orphan*/  hr_amp; int /*<<< orphan*/  hr_keepdirty; int /*<<< orphan*/ * hr_remoteout; int /*<<< orphan*/ * hr_remotein; } ;

/* Variables and functions */
#define  CONTROL_RELOAD 129 
#define  CONTROL_STATUS 128 
 int /*<<< orphan*/  EINVAL ; 
 int /*<<< orphan*/  HAST_ROLE_PRIMARY ; 
 int /*<<< orphan*/  LOG_ERR ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  SIGTERM ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int FUNC3 (int /*<<< orphan*/ ,struct nv**) ; 
 int FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct nv*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct nv*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC7 (struct nv*,char*,char*) ; 
 int /*<<< orphan*/  FUNC8 (struct nv*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC9 (struct nv*,scalar_t__,char*) ; 
 struct nv* FUNC10 () ; 
 scalar_t__ FUNC11 (struct nv*) ; 
 int /*<<< orphan*/  FUNC12 (struct nv*) ; 
 int /*<<< orphan*/  FUNC13 (struct nv*,char*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC15 (char*) ; 
 int /*<<< orphan*/  FUNC16 (struct hast_resource*,struct nv*) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *) ; 
 scalar_t__ sigexit_received ; 
 int /*<<< orphan*/  FUNC18 (struct nv*) ; 

void *
FUNC19(void *arg)
{
	struct hast_resource *res = arg;
	struct nv *nvin, *nvout;
	uint8_t cmd;

	for (;;) {
		if (FUNC3(res->hr_ctrl, &nvin) == -1) {
			if (sigexit_received)
				FUNC17(NULL);
			FUNC14(LOG_ERR,
			    "Unable to receive control message");
			FUNC5(FUNC2(), SIGTERM);
			FUNC17(NULL);
		}
		cmd = FUNC13(nvin, "cmd");
		if (cmd == 0) {
			FUNC15("Control message is missing 'cmd' field.");
			FUNC12(nvin);
			continue;
		}
		nvout = FUNC10();
		switch (cmd) {
		case CONTROL_STATUS:
			if (res->hr_remotein != NULL &&
			    res->hr_remoteout != NULL) {
				FUNC7(nvout, "complete", "status");
			} else {
				FUNC7(nvout, "degraded", "status");
			}
			FUNC8(nvout, (uint32_t)res->hr_extentsize,
			    "extentsize");
			if (res->hr_role == HAST_ROLE_PRIMARY) {
				FUNC8(nvout,
				    (uint32_t)res->hr_keepdirty, "keepdirty");
				FUNC9(nvout,
				    (uint64_t)(FUNC1(res->hr_amp) *
				    res->hr_extentsize), "dirty");
			} else {
				FUNC8(nvout, (uint32_t)0, "keepdirty");
				FUNC9(nvout, (uint64_t)0, "dirty");
			}
			FUNC9(nvout, res->hr_stat_read, "stat_read");
			FUNC9(nvout, res->hr_stat_write, "stat_write");
			FUNC9(nvout, res->hr_stat_delete,
			    "stat_delete");
			FUNC9(nvout, res->hr_stat_flush, "stat_flush");
			FUNC9(nvout, res->hr_stat_activemap_update,
			    "stat_activemap_update");
			FUNC9(nvout, res->hr_stat_read_error,
			    "stat_read_error");
			FUNC9(nvout, res->hr_stat_write_error +
			    res->hr_stat_activemap_write_error,
			    "stat_write_error");
			FUNC9(nvout, res->hr_stat_delete_error,
			    "stat_delete_error");
			FUNC9(nvout, res->hr_stat_flush_error +
			    res->hr_stat_activemap_flush_error,
			    "stat_flush_error");
			res->output_status_aux(nvout);
			FUNC6(nvout, 0, "error");
			break;
		case CONTROL_RELOAD:
			/*
			 * When parent receives SIGHUP and discovers that
			 * something related to us has changes, it sends reload
			 * message to us.
			 */
			FUNC0(res->hr_role == HAST_ROLE_PRIMARY);
			FUNC16(res, nvin);
			FUNC6(nvout, 0, "error");
			break;
		default:
			FUNC6(nvout, EINVAL, "error");
			break;
		}
		FUNC12(nvin);
		if (FUNC11(nvout) != 0) {
			FUNC15("Unable to create answer on control message.");
			FUNC12(nvout);
			continue;
		}
		if (FUNC4(NULL, res->hr_ctrl, nvout, NULL, 0) == -1) {
			FUNC14(LOG_ERR,
			    "Unable to send reply to control message");
		}
		FUNC12(nvout);
	}
	/* NOTREACHED */
	return (NULL);
}