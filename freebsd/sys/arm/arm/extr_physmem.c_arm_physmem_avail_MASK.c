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
typedef  int /*<<< orphan*/  vm_paddr_t ;

/* Variables and functions */
 int /*<<< orphan*/  EXFLAG_NOALLOC ; 
 size_t FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,size_t,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

size_t
FUNC1(vm_paddr_t *avail, size_t maxavail)
{

	return (FUNC0(avail, EXFLAG_NOALLOC, maxavail, NULL, NULL));
}