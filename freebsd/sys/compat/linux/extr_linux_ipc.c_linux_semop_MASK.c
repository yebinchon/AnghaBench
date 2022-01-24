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
struct thread {int dummy; } ;
struct semop_args {scalar_t__ semid; int nsops; int /*<<< orphan*/  sops; } ;
struct linux_semop_args {int nsops; scalar_t__ semid; int /*<<< orphan*/  tsops; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (struct thread*,struct semop_args*) ; 

int
FUNC2(struct thread *td, struct linux_semop_args *args)
{
	struct semop_args /* {
	int	semid;
	struct	sembuf *sops;
	int		nsops;
	} */ bsd_args;

	if (args->nsops < 1 || args->semid < 0)
		return (EINVAL);
	bsd_args.semid = args->semid;
	bsd_args.sops = FUNC0(args->tsops);
	bsd_args.nsops = args->nsops;
	return (FUNC1(td, &bsd_args));
}