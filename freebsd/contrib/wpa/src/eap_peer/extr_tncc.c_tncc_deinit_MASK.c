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
struct tncc_data {struct tncc_data* next; struct tncc_data* imc; } ;
struct tnc_if_imc {struct tnc_if_imc* next; struct tnc_if_imc* imc; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct tncc_data*) ; 
 int /*<<< orphan*/  FUNC1 (struct tncc_data*) ; 

void FUNC2(struct tncc_data *tncc)
{
	struct tnc_if_imc *imc, *prev;

	imc = tncc->imc;
	while (imc) {
		FUNC1(imc);

		prev = imc;
		imc = imc->next;
		FUNC0(prev);
	}

	FUNC0(tncc);
}