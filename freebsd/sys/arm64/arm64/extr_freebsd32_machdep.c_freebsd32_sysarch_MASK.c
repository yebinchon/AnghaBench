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
typedef  int uint64_t ;
typedef  int uint32_t ;
struct thread {int dummy; } ;
struct freebsd32_sysarch_args {int op; int /*<<< orphan*/  parms; } ;
typedef  int /*<<< orphan*/  mcontext_vfp ;
typedef  int /*<<< orphan*/  mcontext32_vfp_t ;
typedef  int /*<<< orphan*/  args ;

/* Variables and functions */
#define  ARM_GET_VFPSTATE 130 
#define  ARM_SET_TP 129 
#define  ARM_SYNC_ICACHE 128 
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 int FUNC2 (int /*<<< orphan*/ ,...) ; 
 int FUNC3 (int /*<<< orphan*/ *,void*,int) ; 
 int /*<<< orphan*/  FUNC4 (int,int) ; 
 int /*<<< orphan*/  FUNC5 (struct thread*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  tpidr_el0 ; 
 int /*<<< orphan*/  tpidrro_el0 ; 

int
FUNC6(struct thread *td, struct freebsd32_sysarch_args *uap)
{
	int error;

#define ARM_SYNC_ICACHE		0
#define ARM_DRAIN_WRITEBUF	1
#define ARM_SET_TP		2
#define ARM_GET_TP		3
#define ARM_GET_VFPSTATE	4

	switch(uap->op) {
	case ARM_SET_TP:
		FUNC0(tpidr_el0, uap->parms);
		FUNC0(tpidrro_el0, uap->parms);
		return 0;
	case ARM_SYNC_ICACHE:
		{
			struct {
				uint32_t addr;
				uint32_t size;
			} args;

			if ((error = FUNC2(uap->parms, &args, sizeof(args))) != 0)
				return (error);
			if ((uint64_t)args.addr + (uint64_t)args.size > 0xffffffff)
				return (EINVAL);
			FUNC4(args.addr, args.size);
			return 0;
		}
	case ARM_GET_VFPSTATE:
		{
			mcontext32_vfp_t mcontext_vfp;

			struct {
				uint32_t mc_vfp_size;
				uint32_t mc_vfp;
			} args;
			if ((error = FUNC2(uap->parms, &args, sizeof(args))) != 0)
				return (error);
			if (args.mc_vfp_size != sizeof(mcontext_vfp))
				return (EINVAL);
#ifdef VFP
			get_fpcontext32(td, &mcontext_vfp);
#else
			FUNC1(&mcontext_vfp, sizeof(mcontext_vfp));
#endif
			error = FUNC3(&mcontext_vfp,
				(void *)(uintptr_t)args.mc_vfp,
				sizeof(mcontext_vfp));
			return error;
		}
	}

	return (EINVAL);
}