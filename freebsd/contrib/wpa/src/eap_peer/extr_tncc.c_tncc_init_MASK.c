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
struct tncc_data {struct tnc_if_imc* imc; } ;
struct tnc_if_imc {int /*<<< orphan*/  name; struct tnc_if_imc* next; } ;

/* Variables and functions */
 int /*<<< orphan*/  MSG_ERROR ; 
 struct tncc_data* FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct tncc_data*) ; 
 scalar_t__ FUNC2 (struct tnc_if_imc*) ; 
 scalar_t__ FUNC3 (struct tncc_data*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,...) ; 

struct tncc_data * FUNC5(void)
{
	struct tncc_data *tncc;
	struct tnc_if_imc *imc;

	tncc = FUNC0(sizeof(*tncc));
	if (tncc == NULL)
		return NULL;

	/* TODO:
	 * move loading and Initialize() to a location that is not
	 *    re-initialized for every EAP-TNC session (?)
	 */

	if (FUNC3(tncc) < 0) {
		FUNC4(MSG_ERROR, "TNC: Failed to read TNC configuration");
		goto failed;
	}

	for (imc = tncc->imc; imc; imc = imc->next) {
		if (FUNC2(imc)) {
			FUNC4(MSG_ERROR, "TNC: Failed to load IMC '%s'",
				   imc->name);
			goto failed;
		}
	}

	return tncc;

failed:
	FUNC1(tncc);
	return NULL;
}