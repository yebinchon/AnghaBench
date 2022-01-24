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
struct nv {int dummy; } ;
struct hast_resource {int /*<<< orphan*/  hr_ctrl; } ;

/* Variables and functions */
 int /*<<< orphan*/  CONTROL_STATUS ; 
 int ENOENT ; 
 int /*<<< orphan*/  LOG_ERR ; 
 int errno ; 
 int FUNC0 (int /*<<< orphan*/ ,struct nv**) ; 
 int FUNC1 (struct hast_resource*,int /*<<< orphan*/ ,struct nv*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct nv*,int,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct nv*,char const*,char*,unsigned int) ; 
 int /*<<< orphan*/  FUNC4 (struct nv*,int /*<<< orphan*/ ,char*,unsigned int) ; 
 int /*<<< orphan*/  FUNC5 (struct nv*,int /*<<< orphan*/ ,char*,unsigned int) ; 
 int /*<<< orphan*/  FUNC6 (struct nv*,int /*<<< orphan*/ ,char*) ; 
 struct nv* FUNC7 () ; 
 int FUNC8 (struct nv*) ; 
 int /*<<< orphan*/  FUNC9 (struct nv*) ; 
 int FUNC10 (struct nv*,char*) ; 
 char* FUNC11 (struct nv*,char*) ; 
 int /*<<< orphan*/  FUNC12 (struct nv*,char*) ; 
 int /*<<< orphan*/  FUNC13 (struct nv*,char*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,char*) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static void
FUNC16(struct hast_resource *res, struct nv *nvout,
    unsigned int no)
{
	struct nv *cnvin, *cnvout;
	const char *str;
	int error;

	cnvin = NULL;

	/*
	 * Prepare and send command to worker process.
	 */
	cnvout = FUNC7();
	FUNC6(cnvout, CONTROL_STATUS, "cmd");
	error = FUNC8(cnvout);
	if (error != 0) {
		FUNC14(LOG_ERR, 0, error,
		    "Unable to prepare control header");
		goto end;
	}
	if (FUNC1(res, res->hr_ctrl, cnvout, NULL, 0) == -1) {
		error = errno;
		FUNC15(LOG_ERR, "Unable to send control header");
		goto end;
	}

	/*
	 * Receive response.
	 */
	if (FUNC0(res->hr_ctrl, &cnvin) == -1) {
		error = errno;
		FUNC15(LOG_ERR, "Unable to receive control header");
		goto end;
	}

	error = FUNC10(cnvin, "error");
	if (error != 0)
		goto end;

	if ((str = FUNC11(cnvin, "status")) == NULL) {
		error = ENOENT;
		FUNC15(LOG_ERR, "Field 'status' is missing.");
		goto end;
	}
	FUNC3(nvout, str, "status%u", no);
	FUNC5(nvout, FUNC13(cnvin, "dirty"), "dirty%u", no);
	FUNC4(nvout, FUNC12(cnvin, "extentsize"),
	    "extentsize%u", no);
	FUNC4(nvout, FUNC12(cnvin, "keepdirty"),
	    "keepdirty%u", no);
	FUNC5(nvout, FUNC13(cnvin, "stat_read"),
	    "stat_read%u", no);
	FUNC5(nvout, FUNC13(cnvin, "stat_write"),
	    "stat_write%u", no);
	FUNC5(nvout, FUNC13(cnvin, "stat_delete"),
	    "stat_delete%u", no);
	FUNC5(nvout, FUNC13(cnvin, "stat_flush"),
	    "stat_flush%u", no);
	FUNC5(nvout, FUNC13(cnvin, "stat_activemap_update"),
	    "stat_activemap_update%u", no);
	FUNC5(nvout, FUNC13(cnvin, "stat_read_error"),
	    "stat_read_error%u", no);
	FUNC5(nvout, FUNC13(cnvin, "stat_write_error"),
	    "stat_write_error%u", no);
	FUNC5(nvout, FUNC13(cnvin, "stat_delete_error"),
	    "stat_delete_error%u", no);
	FUNC5(nvout, FUNC13(cnvin, "stat_flush_error"),
	    "stat_flush_error%u", no);
	FUNC5(nvout, FUNC13(cnvin, "idle_queue_size"),
	    "idle_queue_size%u", no);
	FUNC5(nvout, FUNC13(cnvin, "local_queue_size"),
	    "local_queue_size%u", no);
	FUNC5(nvout, FUNC13(cnvin, "send_queue_size"),
	    "send_queue_size%u", no);
	FUNC5(nvout, FUNC13(cnvin, "recv_queue_size"),
	    "recv_queue_size%u", no);
	FUNC5(nvout, FUNC13(cnvin, "done_queue_size"),
	    "done_queue_size%u", no);
end:
	if (cnvin != NULL)
		FUNC9(cnvin);
	if (cnvout != NULL)
		FUNC9(cnvout);
	if (error != 0)
		FUNC2(nvout, error, "error");
}