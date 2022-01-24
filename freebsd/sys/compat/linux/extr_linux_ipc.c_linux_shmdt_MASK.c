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
struct shmdt_args {int /*<<< orphan*/  shmaddr; } ;
struct linux_shmdt_args {int /*<<< orphan*/  shmaddr; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (struct thread*,struct shmdt_args*) ; 

int
FUNC2(struct thread *td, struct linux_shmdt_args *args)
{
	struct shmdt_args /* {
		void *shmaddr;
	} */ bsd_args;

	bsd_args.shmaddr = FUNC0(args->shmaddr);
	return (FUNC1(td, &bsd_args));
}