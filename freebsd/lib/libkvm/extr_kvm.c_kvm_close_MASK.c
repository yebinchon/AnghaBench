#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {scalar_t__ pmfd; scalar_t__ vmfd; scalar_t__ nlfd; scalar_t__ procbase; scalar_t__ argbuf; scalar_t__ argspc; scalar_t__ argv; void* pt_map; void* page_map; scalar_t__ sparse_map; int /*<<< orphan*/  pt_sparse_size; TYPE_1__* arch; int /*<<< orphan*/ * vmst; } ;
typedef  TYPE_2__ kvm_t ;
struct TYPE_5__ {int /*<<< orphan*/  (* ka_freevtop ) (TYPE_2__*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  EINVAL ; 
 scalar_t__ MAP_FAILED ; 
 int FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC1 (void*) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 

int
FUNC4(kvm_t *kd)
{
	int error = 0;

	if (kd == NULL) {
		errno = EINVAL;
		return (-1);
	}
	if (kd->vmst != NULL)
		kd->arch->ka_freevtop(kd);
	if (kd->pmfd >= 0)
		error |= FUNC0(kd->pmfd);
	if (kd->vmfd >= 0)
		error |= FUNC0(kd->vmfd);
	if (kd->nlfd >= 0)
		error |= FUNC0(kd->nlfd);
	if (kd->procbase != 0)
		FUNC1((void *)kd->procbase);
	if (kd->argbuf != 0)
		FUNC1((void *) kd->argbuf);
	if (kd->argspc != 0)
		FUNC1((void *) kd->argspc);
	if (kd->argv != 0)
		FUNC1((void *)kd->argv);
	if (kd->pt_map != NULL)
		FUNC1(kd->pt_map);
	if (kd->page_map != NULL)
		FUNC1(kd->page_map);
	if (kd->sparse_map != MAP_FAILED)
		FUNC2(kd->sparse_map, kd->pt_sparse_size);
	FUNC1((void *)kd);

	return (error);
}