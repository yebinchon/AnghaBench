#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uvm_physseg_t ;
struct vm_page {int dummy; } ;
typedef  size_t psize_t ;
struct TYPE_2__ {int page_init_done; } ;

/* Variables and functions */
 TYPE_1__ uvm ; 
 size_t FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 size_t FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,struct vm_page*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,struct vm_page*,size_t) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC8(struct vm_page *pagearray, psize_t pagecount)
{
	uvm_physseg_t bank;
	size_t n;

	for (bank = FUNC1(),
		 FUNC6(bank, pagearray, pagecount);
	     FUNC7(bank);
	     bank = FUNC2(bank)) {

		n = FUNC0(bank) - FUNC3(bank);
		FUNC5(bank, n);
		FUNC4(bank, pagearray);

		/* set up page array pointers */
		pagearray += n;
		pagecount -= n;
	}

	uvm.page_init_done = true;
}