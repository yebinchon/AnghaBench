#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_6__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int UINTN ;
typedef  int /*<<< orphan*/  UINT32 ;
struct TYPE_10__ {int /*<<< orphan*/  (* SetVirtualAddressMap ) (int,int,int /*<<< orphan*/ ,TYPE_1__*) ;} ;
struct TYPE_9__ {int Attribute; int /*<<< orphan*/  PhysicalStart; int /*<<< orphan*/  VirtualStart; } ;
typedef  int /*<<< orphan*/  EFI_STATUS ;
typedef  TYPE_1__ EFI_MEMORY_DESCRIPTOR ;

/* Variables and functions */
 int EFI_MEMORY_RUNTIME ; 
 int /*<<< orphan*/  EFI_OUT_OF_RESOURCES ; 
 TYPE_1__* FUNC0 (TYPE_1__*,int) ; 
 TYPE_6__* RS ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 TYPE_1__* FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int,int,int /*<<< orphan*/ ,TYPE_1__*) ; 

__attribute__((used)) static EFI_STATUS
FUNC4(EFI_MEMORY_DESCRIPTOR *mm, UINTN sz, UINTN mmsz, UINT32 mmver)
{
	EFI_MEMORY_DESCRIPTOR *desc, *viter, *vmap;
	EFI_STATUS ret;
	int curr, ndesc, nset;

	nset = 0;
	desc = mm;
	ndesc = sz / mmsz;
	vmap = FUNC2(sz);
	if (vmap == NULL)
		/* This isn't really an EFI error case, but pretend it is */
		return (EFI_OUT_OF_RESOURCES);
	viter = vmap;
	for (curr = 0; curr < ndesc;
	    curr++, desc = FUNC0(desc, mmsz)) {
		if ((desc->Attribute & EFI_MEMORY_RUNTIME) != 0) {
			++nset;
			desc->VirtualStart = desc->PhysicalStart;
			*viter = *desc;
			viter = FUNC0(viter, mmsz);
		}
	}
	ret = RS->SetVirtualAddressMap(nset * mmsz, mmsz, mmver, vmap);
	FUNC1(vmap);
	return (ret);
}