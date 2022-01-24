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
struct tnc_if_imv {struct tnc_if_imv* next; struct tnc_if_imv* imv; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct tnc_if_imv*) ; 
 struct tnc_if_imv* tncs_global_data ; 
 int /*<<< orphan*/  FUNC1 (struct tnc_if_imv*) ; 

void FUNC2(void)
{
	struct tnc_if_imv *imv, *prev;

	if (tncs_global_data == NULL)
		return;

	imv = tncs_global_data->imv;
	while (imv) {
		FUNC1(imv);

		prev = imv;
		imv = imv->next;
		FUNC0(prev);
	}

	FUNC0(tncs_global_data);
	tncs_global_data = NULL;
}