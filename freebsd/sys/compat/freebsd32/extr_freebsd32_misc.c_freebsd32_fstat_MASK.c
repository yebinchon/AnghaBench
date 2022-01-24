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
typedef  int /*<<< orphan*/  ub32 ;
struct thread {int dummy; } ;
struct stat32 {int dummy; } ;
struct stat {int dummy; } ;
struct freebsd32_fstat_args {int /*<<< orphan*/  ub; int /*<<< orphan*/  fd; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct stat*,struct stat32*) ; 
 int FUNC1 (struct stat32*,int /*<<< orphan*/ ,int) ; 
 int FUNC2 (struct thread*,int /*<<< orphan*/ ,struct stat*) ; 

int
FUNC3(struct thread *td, struct freebsd32_fstat_args *uap)
{
	struct stat ub;
	struct stat32 ub32;
	int error;

	error = FUNC2(td, uap->fd, &ub);
	if (error)
		return (error);
	FUNC0(&ub, &ub32);
	error = FUNC1(&ub32, uap->ub, sizeof(ub32));
	return (error);
}