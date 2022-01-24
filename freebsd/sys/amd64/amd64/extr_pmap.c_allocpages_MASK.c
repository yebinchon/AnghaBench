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
typedef  int vm_paddr_t ;
typedef  int u_int64_t ;

/* Variables and functions */
 int PAGE_SIZE ; 
 int /*<<< orphan*/  FUNC0 (void*,int) ; 

__attribute__((used)) static u_int64_t
FUNC1(vm_paddr_t *firstaddr, int n)
{
	u_int64_t ret;

	ret = *firstaddr;
	FUNC0((void *)ret, n * PAGE_SIZE);
	*firstaddr += n * PAGE_SIZE;
	return (ret);
}