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
struct linux_mmap2_args {int /*<<< orphan*/  pgoff; int /*<<< orphan*/  fd; int /*<<< orphan*/  flags; int /*<<< orphan*/  prot; int /*<<< orphan*/  len; int /*<<< orphan*/  addr; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int (*) (struct thread*,struct linux_mmap2_args*),int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (struct thread*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  machdep ; 
 int /*<<< orphan*/  todo ; 

int
FUNC3(struct thread *td, struct linux_mmap2_args *uap)
{

	FUNC0(machdep, linux_mmap2, todo);
	return (FUNC2(td, FUNC1(uap->addr), uap->len, uap->prot,
	    uap->flags, uap->fd, uap->pgoff));
}