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
struct tnc_if_imv {int /*<<< orphan*/ * path; int /*<<< orphan*/  name; int /*<<< orphan*/ * dlhandle; } ;

/* Variables and functions */
 int /*<<< orphan*/  MSG_DEBUG ; 
 int /*<<< orphan*/  MSG_ERROR ; 
 int /*<<< orphan*/  RTLD_LAZY ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct tnc_if_imv*) ; 
 scalar_t__ FUNC3 (struct tnc_if_imv*) ; 
 scalar_t__ FUNC4 (struct tnc_if_imv*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,...) ; 

__attribute__((used)) static int FUNC6(struct tnc_if_imv *imv)
{
	if (imv->path == NULL) {
		FUNC5(MSG_DEBUG, "TNC: No IMV configured");
		return -1;
	}

	FUNC5(MSG_DEBUG, "TNC: Opening IMV: %s (%s)",
		   imv->name, imv->path);
	imv->dlhandle = FUNC1(imv->path, RTLD_LAZY);
	if (imv->dlhandle == NULL) {
		FUNC5(MSG_ERROR, "TNC: Failed to open IMV '%s' (%s): %s",
			   imv->name, imv->path, FUNC0());
		return -1;
	}

	if (FUNC4(imv) < 0) {
		FUNC5(MSG_ERROR, "TNC: Failed to resolve IMV functions");
		return -1;
	}

	if (FUNC2(imv) < 0 ||
	    FUNC3(imv) < 0) {
		FUNC5(MSG_ERROR, "TNC: Failed to initialize IMV");
		return -1;
	}

	return 0;
}