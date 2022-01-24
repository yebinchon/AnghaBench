#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int num_msgs; scalar_t__ msix_pba_rid; int /*<<< orphan*/ * msix_pba_res; scalar_t__ msix_table_rid; int /*<<< orphan*/ * msix_table_res; int /*<<< orphan*/  arg; int /*<<< orphan*/  cookie; int /*<<< orphan*/  res; } ;
struct pptdev {TYPE_1__ msix; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  M_PPTMSIX ; 
 int /*<<< orphan*/  SYS_RES_MEMORY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct pptdev*,int) ; 

__attribute__((used)) static void 
FUNC4(struct pptdev *ppt)
{
	int i;

	if (ppt->msix.num_msgs == 0) 
		return;

	for (i = 0; i < ppt->msix.num_msgs; i++) 
		FUNC3(ppt, i);

	FUNC1(ppt->msix.res, M_PPTMSIX);
	FUNC1(ppt->msix.cookie, M_PPTMSIX);
	FUNC1(ppt->msix.arg, M_PPTMSIX);

	FUNC2(ppt->dev);

	if (ppt->msix.msix_table_res) {
		FUNC0(ppt->dev, SYS_RES_MEMORY, 
				     ppt->msix.msix_table_rid,
				     ppt->msix.msix_table_res);
		ppt->msix.msix_table_res = NULL;
		ppt->msix.msix_table_rid = 0;
	}
	if (ppt->msix.msix_pba_res) {
		FUNC0(ppt->dev, SYS_RES_MEMORY, 
				     ppt->msix.msix_pba_rid,
				     ppt->msix.msix_pba_res);
		ppt->msix.msix_pba_res = NULL;
		ppt->msix.msix_pba_rid = 0;
	}

	ppt->msix.num_msgs = 0;
}