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
struct shmat_args {int /*<<< orphan*/  shmflg; int /*<<< orphan*/  shmaddr; int /*<<< orphan*/  shmid; } ;
struct linux_shmat_args {int /*<<< orphan*/  shmflg; int /*<<< orphan*/  shmaddr; int /*<<< orphan*/  shmid; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (struct thread*,struct shmat_args*) ; 

int
FUNC2(struct thread *td, struct linux_shmat_args *args)
{
	struct shmat_args /* {
		int shmid;
		void *shmaddr;
		int shmflg;
	} */ bsd_args;

	bsd_args.shmid = args->shmid;
	bsd_args.shmaddr = FUNC0(args->shmaddr);
	bsd_args.shmflg = args->shmflg;
	return (FUNC1(td, &bsd_args));
}