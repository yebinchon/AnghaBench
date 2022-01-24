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
typedef  int uint8_t ;
struct nv {int dummy; } ;
struct hast_resource {int /*<<< orphan*/  hr_event; int /*<<< orphan*/  hr_name; int /*<<< orphan*/  hr_exec; int /*<<< orphan*/  hr_role; } ;

/* Variables and functions */
#define  EVENT_CONNECT 133 
#define  EVENT_DISCONNECT 132 
 int EVENT_NONE ; 
#define  EVENT_SPLITBRAIN 131 
#define  EVENT_SYNCDONE 130 
#define  EVENT_SYNCINTR 129 
#define  EVENT_SYNCSTART 128 
 int /*<<< orphan*/  LOG_DEBUG ; 
 int /*<<< orphan*/  LOG_ERR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int errno ; 
 int FUNC1 (int /*<<< orphan*/ ,struct nv**) ; 
 int FUNC2 (struct hast_resource const*,int /*<<< orphan*/ ,struct nv*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct nv*,int /*<<< orphan*/ ,char*) ; 
 struct nv* FUNC5 () ; 
 int FUNC6 (struct nv*) ; 
 int /*<<< orphan*/  FUNC7 (struct nv*) ; 
 int FUNC8 (struct nv*,char*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int,int,char*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC11 (char*,...) ; 
 int /*<<< orphan*/  FUNC12 (char*,char*,...) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 

int
FUNC14(const struct hast_resource *res)
{
	struct nv *nvin, *nvout;
	const char *evstr;
	uint8_t event;
	int error;

	FUNC0(res != NULL);

	nvin = nvout = NULL;

	if (FUNC1(res->hr_event, &nvin) == -1) {
		/*
		 * First error log as debug. This is because worker process
		 * most likely exited.
		 */
		FUNC9(LOG_DEBUG, 1, errno,
		    "Unable to receive event header");
		goto fail;
	}

	event = FUNC8(nvin, "event");
	if (event == EVENT_NONE) {
		FUNC11("Event header is missing 'event' field.");
		goto fail;
	}

	switch (event) {
	case EVENT_CONNECT:
		evstr = "connect";
		break;
	case EVENT_DISCONNECT:
		evstr = "disconnect";
		break;
	case EVENT_SYNCSTART:
		evstr = "syncstart";
		break;
	case EVENT_SYNCDONE:
		evstr = "syncdone";
		break;
	case EVENT_SYNCINTR:
		evstr = "syncintr";
		break;
	case EVENT_SPLITBRAIN:
		evstr = "split-brain";
		break;
	default:
		FUNC11("Event header contain invalid event number (%hhu).",
		    event);
		goto fail;
	}

	FUNC12("[%s] (%s) ", res->hr_name, FUNC13(res->hr_role));
	FUNC3(res->hr_exec, evstr, res->hr_name, NULL);
	FUNC12("%s", "");

	nvout = FUNC5();
	FUNC4(nvout, 0, "error");
	error = FUNC6(nvout);
	if (error != 0) {
		FUNC9(LOG_ERR, 0, error,
		    "Unable to prepare event header");
		goto fail;
	}
	if (FUNC2(res, res->hr_event, nvout, NULL, 0) == -1) {
		FUNC10(LOG_ERR, "Unable to send event header");
		goto fail;
	}
	FUNC7(nvin);
	FUNC7(nvout);
	return (0);
fail:
	if (nvin != NULL)
		FUNC7(nvin);
	if (nvout != NULL)
		FUNC7(nvout);
	return (-1);
}