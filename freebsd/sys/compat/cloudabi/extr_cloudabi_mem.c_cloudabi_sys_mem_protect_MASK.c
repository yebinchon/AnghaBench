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
struct cloudabi_sys_mem_protect_args {int /*<<< orphan*/  mapping_len; scalar_t__ mapping; int /*<<< orphan*/  prot; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,int*) ; 
 int FUNC1 (struct thread*,uintptr_t,int /*<<< orphan*/ ,int) ; 

int
FUNC2(struct thread *td,
    struct cloudabi_sys_mem_protect_args *uap)
{
	int error, prot;

	/* Translate protection. */
	error = FUNC0(uap->prot, &prot);
	if (error != 0)
		return (error);

	return (FUNC1(td, (uintptr_t)uap->mapping, uap->mapping_len,
	    prot));
}