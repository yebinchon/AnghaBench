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
typedef  scalar_t__ u_long ;
struct pcpu {int dummy; } ;
typedef  int ssize_t ;
typedef  int /*<<< orphan*/  kvm_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ *,uintptr_t,void*,size_t) ; 

ssize_t
FUNC2(kvm_t *kd, u_long base, void *buf, size_t size, int cpu)
{

	if (!FUNC0(kd))
		return (-1);
	return (FUNC1(kd, (uintptr_t)(base + sizeof(struct pcpu) * cpu),
	    buf, size));
}