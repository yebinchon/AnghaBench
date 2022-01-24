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
typedef  int /*<<< orphan*/  pid_t ;
typedef  int l_ulong ;

/* Variables and functions */
 int EINVAL ; 
#define  LINUX_NT_PRSTATUS 128 
 int /*<<< orphan*/  FUNC0 (struct thread*,char*,int) ; 
 int FUNC1 (struct thread*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int
FUNC2(struct thread *td, pid_t pid, l_ulong addr, l_ulong data)
{

	switch (addr) {
	case LINUX_NT_PRSTATUS:
		return (FUNC1(td, pid, data));
	default:
		FUNC0(td, "PTRACE_GETREGSET request %ld not implemented; "
		    "returning EINVAL", addr);
		return (EINVAL);
	}
}