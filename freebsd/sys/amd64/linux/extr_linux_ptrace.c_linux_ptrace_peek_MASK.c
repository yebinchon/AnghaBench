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
struct thread {int* td_retval; } ;
typedef  int /*<<< orphan*/  pid_t ;
typedef  int /*<<< orphan*/  l_int ;

/* Variables and functions */
 int /*<<< orphan*/  PT_READ_I ; 
 int FUNC0 (int*,void*,int) ; 
 int FUNC1 (struct thread*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,void*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC2(struct thread *td, pid_t pid, void *addr, void *data)
{
	int error;

	error = FUNC1(td, PT_READ_I, pid, addr, 0);
	if (error == 0)
		error = FUNC0(td->td_retval, data, sizeof(l_int));
	td->td_retval[0] = error;

	return (error);
}