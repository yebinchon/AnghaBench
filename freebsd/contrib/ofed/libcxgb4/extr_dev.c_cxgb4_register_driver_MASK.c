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

/* Variables and functions */
 int /*<<< orphan*/  _SC_PAGESIZE ; 
 int c4iw_page_mask ; 
 int /*<<< orphan*/  c4iw_page_shift ; 
 int c4iw_page_size ; 
 int /*<<< orphan*/  cxgb4_driver_init ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static __attribute__((constructor)) void FUNC3(void)
{
	c4iw_page_size = FUNC1(_SC_PAGESIZE);
	c4iw_page_shift = FUNC0(c4iw_page_size);
	c4iw_page_mask = ~(c4iw_page_size - 1);
	FUNC2("cxgb4", cxgb4_driver_init);
}