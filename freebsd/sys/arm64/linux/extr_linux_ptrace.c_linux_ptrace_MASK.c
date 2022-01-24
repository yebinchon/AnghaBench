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
struct linux_ptrace_args {int dummy; } ;

/* Variables and functions */
 int EDOOFUS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int (*) (struct thread*,struct linux_ptrace_args*),int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ptrace ; 
 int /*<<< orphan*/  todo ; 

int
FUNC1(struct thread *td, struct linux_ptrace_args *uap)
{

	/* LINUXTODO: implement arm64 linux_ptrace */
	FUNC0(ptrace, linux_ptrace, todo);
	return (EDOOFUS);
}