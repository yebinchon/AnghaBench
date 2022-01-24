#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_4__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  void* vm_offset_t ;
struct TYPE_6__ {int /*<<< orphan*/  (* arch_copyin ) (void*,void*,size_t) ;} ;
struct TYPE_5__ {int /*<<< orphan*/  pStack; } ;
typedef  TYPE_1__ FICL_VM ;

/* Variables and functions */
 TYPE_4__ archsw ; 
 void* FUNC0 (int /*<<< orphan*/ ) ; 
 void* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (void*,void*,size_t) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int,int /*<<< orphan*/ ) ; 

void
FUNC4(FICL_VM *pVM)
{
	void*		src;
	vm_offset_t	dest;
	size_t		len;

#if FICL_ROBUST > 1
	vmCheckStack(pVM, 3, 0);
#endif

	len = FUNC0(pVM->pStack);
	dest = FUNC0(pVM->pStack);
	src = FUNC1(pVM->pStack);

#ifndef TESTMAIN
	archsw.arch_copyin(src, dest, len);
#endif

	return;
}