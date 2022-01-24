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
struct rs_iomap_mr {scalar_t__ index; int /*<<< orphan*/ * mr; int /*<<< orphan*/  entry; int /*<<< orphan*/  refcnt; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct rs_iomap_mr*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4(struct rs_iomap_mr *iomr)
{
	if (FUNC0(&iomr->refcnt, 1) != 1)
		return;

	FUNC1(&iomr->entry);
	FUNC3(iomr->mr);
	if (iomr->index >= 0)
		iomr->mr = NULL;
	else
		FUNC2(iomr);
}