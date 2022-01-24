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
struct tnc_if_imc {scalar_t__ imc_send_len; int /*<<< orphan*/ * imc_send; struct tnc_if_imc* next; } ;

/* Variables and functions */
 int /*<<< orphan*/  TNC_CONNECTION_STATE_CREATE ; 
 int /*<<< orphan*/  TNC_CONNECTION_STATE_HANDSHAKE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct tnc_if_imc*) ; 
 int /*<<< orphan*/  FUNC2 (struct tnc_if_imc*,int /*<<< orphan*/ ) ; 

void FUNC3(struct tncc_data *tncc)
{
	struct tnc_if_imc *imc;

	for (imc = tncc->imc; imc; imc = imc->next) {
		FUNC2(
			imc, TNC_CONNECTION_STATE_CREATE);
		FUNC2(
			imc, TNC_CONNECTION_STATE_HANDSHAKE);

		FUNC0(imc->imc_send);
		imc->imc_send = NULL;
		imc->imc_send_len = 0;

		FUNC1(imc);
	}
}