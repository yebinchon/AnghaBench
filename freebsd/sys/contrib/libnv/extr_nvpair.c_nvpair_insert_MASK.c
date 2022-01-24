#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct nvl_head {int dummy; } ;
struct TYPE_6__ {int /*<<< orphan*/ * nvp_list; } ;
typedef  TYPE_1__ nvpair_t ;
typedef  int /*<<< orphan*/  nvlist_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int NV_FLAG_NO_UNIQUE ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct nvl_head*,TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  nvp_next ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 

void
FUNC6(struct nvl_head *head, nvpair_t *nvp, nvlist_t *nvl)
{

	FUNC0(nvp);
	FUNC1(nvp->nvp_list == NULL);
	FUNC1((FUNC4(nvl) & NV_FLAG_NO_UNIQUE) != 0 ||
	    !FUNC3(nvl, FUNC5(nvp)));

	FUNC2(head, nvp, nvp_next);
	nvp->nvp_list = nvl;
}