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
typedef  size_t vm_offset_t ;
typedef  int /*<<< orphan*/  buf ;
struct TYPE_2__ {int /*<<< orphan*/  (* arch_copyin ) (char*,size_t,size_t) ;} ;

/* Variables and functions */
 TYPE_1__ archsw ; 
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 size_t FUNC1 (int,size_t) ; 
 int /*<<< orphan*/  FUNC2 (char*,size_t,size_t) ; 

void
FUNC3(vm_offset_t dest, size_t len)
{
	char buf[256];
	size_t chunk, resid;

	FUNC0(buf, sizeof(buf));
	resid = len;
	while (resid > 0) {
		chunk = FUNC1(sizeof(buf), resid);
		archsw.arch_copyin(buf, dest, chunk);
		resid -= chunk;
		dest += chunk;
	}
}