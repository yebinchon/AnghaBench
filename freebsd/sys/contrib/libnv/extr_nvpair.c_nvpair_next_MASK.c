#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int /*<<< orphan*/ * nvp_list; } ;
typedef  TYPE_1__ nvpair_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__ const*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC2 (TYPE_1__ const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  nvp_next ; 

nvpair_t *
FUNC3(const nvpair_t *nvp)
{

	FUNC0(nvp);
	FUNC1(nvp->nvp_list != NULL);

	return (FUNC2(nvp, nvp_next));
}