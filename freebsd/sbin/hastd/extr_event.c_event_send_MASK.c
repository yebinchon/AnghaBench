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
struct nv {int dummy; } ;
struct hast_resource {int /*<<< orphan*/  hr_event; } ;

/* Variables and functions */
 int EVENT_MAX ; 
 int EVENT_MIN ; 
 int /*<<< orphan*/  LOG_ERR ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (int /*<<< orphan*/ ,struct nv**) ; 
 int FUNC2 (struct hast_resource const*,int /*<<< orphan*/ ,struct nv*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct nv*,int /*<<< orphan*/ ,char*) ; 
 struct nv* FUNC4 () ; 
 int FUNC5 (struct nv*) ; 
 int /*<<< orphan*/  FUNC6 (struct nv*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,char*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*) ; 

void
FUNC9(const struct hast_resource *res, int event)
{
	struct nv *nvin, *nvout;
	int error;

	FUNC0(res != NULL);
	FUNC0(event >= EVENT_MIN && event <= EVENT_MAX);

	nvin = nvout = NULL;

	/*
	 * Prepare and send event to parent process.
	 */
	nvout = FUNC4();
	FUNC3(nvout, (uint8_t)event, "event");
	error = FUNC5(nvout);
	if (error != 0) {
		FUNC7(LOG_ERR, 0, error,
		    "Unable to prepare event header");
		goto done;
	}
	if (FUNC2(res, res->hr_event, nvout, NULL, 0) == -1) {
		FUNC8(LOG_ERR, "Unable to send event header");
		goto done;
	}
	if (FUNC1(res->hr_event, &nvin) == -1) {
		FUNC8(LOG_ERR, "Unable to receive event header");
		goto done;
	}
	/*
	 * Do nothing with the answer. We only wait for it to be sure not
	 * to exit too quickly after sending an event and exiting immediately.
	 */
done:
	if (nvin != NULL)
		FUNC6(nvin);
	if (nvout != NULL)
		FUNC6(nvout);
}