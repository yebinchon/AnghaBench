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
struct freebsd32_mmap_args {int prot; int /*<<< orphan*/  pos; int /*<<< orphan*/  fd; int /*<<< orphan*/  flags; int /*<<< orphan*/  len; scalar_t__ addr; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int PROT_EXEC ; 
 int PROT_READ ; 
 scalar_t__ i386_read_exec ; 
 int FUNC1 (struct thread*,uintptr_t,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  off_t ; 

int
FUNC2(struct thread *td, struct freebsd32_mmap_args *uap)
{
	int prot;

	prot = uap->prot;
#if defined(__amd64__)
	if (i386_read_exec && (prot & PROT_READ))
		prot |= PROT_EXEC;
#endif

	return (FUNC1(td, (uintptr_t)uap->addr, uap->len, prot,
	    uap->flags, uap->fd, FUNC0(off_t, uap->pos)));
}