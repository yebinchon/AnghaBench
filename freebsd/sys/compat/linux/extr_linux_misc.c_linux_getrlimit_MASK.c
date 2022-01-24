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
typedef  int u_int ;
struct thread {int dummy; } ;
struct rlimit {scalar_t__ rlim_max; scalar_t__ rlim_cur; } ;
struct linux_getrlimit_args {size_t resource; int /*<<< orphan*/  rlim; } ;
struct l_rlimit {void* rlim_max; void* rlim_cur; } ;
typedef  int /*<<< orphan*/  rlim ;
typedef  void* l_ulong ;

/* Variables and functions */
 int EINVAL ; 
 size_t LINUX_RLIM_NLIMITS ; 
 int FUNC0 (struct l_rlimit*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (struct thread*,int,struct rlimit*) ; 
 int* linux_to_bsd_resource ; 

int
FUNC2(struct thread *td, struct linux_getrlimit_args *args)
{
	struct l_rlimit rlim;
	struct rlimit bsd_rlim;
	u_int which;

	if (args->resource >= LINUX_RLIM_NLIMITS)
		return (EINVAL);

	which = linux_to_bsd_resource[args->resource];
	if (which == -1)
		return (EINVAL);

	FUNC1(td, which, &bsd_rlim);

	rlim.rlim_cur = (l_ulong)bsd_rlim.rlim_cur;
	rlim.rlim_max = (l_ulong)bsd_rlim.rlim_max;
	return (FUNC0(&rlim, args->rlim, sizeof(rlim)));
}