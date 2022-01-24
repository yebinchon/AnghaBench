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
typedef  scalar_t__ uvm_physseg_t ;
struct vm_page {int dummy; } ;
typedef  int /*<<< orphan*/  paddr_t ;

/* Variables and functions */
 scalar_t__ UVM_PHYSSEG_TYPE_INVALID ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct vm_page* FUNC2 (scalar_t__,int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct vm_page *
FUNC3(paddr_t pa)
{
	paddr_t pf = FUNC0(pa);
	paddr_t off;
	uvm_physseg_t psi;

	psi = FUNC1(pf, &off);
	if (psi != UVM_PHYSSEG_TYPE_INVALID)
		return FUNC2(psi, off);
	return(NULL);
}