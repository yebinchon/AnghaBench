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
struct cloudabi_sys_fd_dup_args {int /*<<< orphan*/  from; } ;

/* Variables and functions */
 int /*<<< orphan*/  FDDUP_NORMAL ; 
 int FUNC0 (struct thread*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int
FUNC1(struct thread *td, struct cloudabi_sys_fd_dup_args *uap)
{

	return (FUNC0(td, FDDUP_NORMAL, 0, uap->from, 0));
}