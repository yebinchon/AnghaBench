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
typedef  int /*<<< orphan*/  vm_offset_t ;
typedef  int /*<<< orphan*/  uint32_t ;
struct thread {int /*<<< orphan*/  td_proc; } ;

/* Variables and functions */
 int ENOMEM ; 
 int FUNC0 (struct thread*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int
FUNC1(struct thread *td, vm_offset_t addr, uint32_t *v)
{

	if (FUNC0(td, td->td_proc, addr, v, sizeof(*v)) != sizeof(*v))
		return (ENOMEM);
	return (0);
}