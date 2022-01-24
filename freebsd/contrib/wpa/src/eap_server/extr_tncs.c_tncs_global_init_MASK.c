#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct tnc_if_imv {int /*<<< orphan*/  name; struct tnc_if_imv* next; } ;
struct TYPE_4__ {struct tnc_if_imv* imv; } ;

/* Variables and functions */
 int /*<<< orphan*/  MSG_ERROR ; 
 TYPE_1__* FUNC0 (int) ; 
 TYPE_1__* tncs_global_data ; 
 int /*<<< orphan*/  FUNC1 () ; 
 scalar_t__ FUNC2 (struct tnc_if_imv*) ; 
 scalar_t__ FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,...) ; 

int FUNC5(void)
{
	struct tnc_if_imv *imv;

	if (tncs_global_data)
		return 0;

	tncs_global_data = FUNC0(sizeof(*tncs_global_data));
	if (tncs_global_data == NULL)
		return -1;

	if (FUNC3(tncs_global_data) < 0) {
		FUNC4(MSG_ERROR, "TNC: Failed to read TNC configuration");
		goto failed;
	}

	for (imv = tncs_global_data->imv; imv; imv = imv->next) {
		if (FUNC2(imv)) {
			FUNC4(MSG_ERROR, "TNC: Failed to load IMV '%s'",
				   imv->name);
			goto failed;
		}
	}

	return 0;

failed:
	FUNC1();
	return -1;
}