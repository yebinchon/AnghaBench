#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_7__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int UINTN ;
typedef  int /*<<< orphan*/  UINT32 ;
struct TYPE_9__ {int /*<<< orphan*/  (* GetMemoryMap ) (int*,TYPE_1__*,int*,int*,int /*<<< orphan*/ *) ;} ;
struct TYPE_8__ {scalar_t__ PhysicalStart; int NumberOfPages; scalar_t__ Type; } ;
typedef  int /*<<< orphan*/  EFI_STATUS ;
typedef  scalar_t__ EFI_PHYSICAL_ADDRESS ;
typedef  TYPE_1__ EFI_MEMORY_DESCRIPTOR ;

/* Variables and functions */
 TYPE_7__* BS ; 
 int /*<<< orphan*/  EFI_BUFFER_TOO_SMALL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ EFI_PAGE_SHIFT ; 
 int EFI_PAGE_SIZE ; 
 scalar_t__ EfiConventionalMemory ; 
 scalar_t__ EfiLoaderData ; 
 scalar_t__ KERNEL_PHYSICAL_BASE ; 
 TYPE_1__* FUNC2 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 TYPE_1__* FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (char*,...) ; 
 int /*<<< orphan*/  FUNC6 (int*,TYPE_1__*,int*,int*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC7(unsigned long *nr_pages)
{
	UINTN sz;
	EFI_MEMORY_DESCRIPTOR *map = NULL, *p;
	EFI_PHYSICAL_ADDRESS start, end;
	UINTN key, dsz;
	UINT32 dver;
	EFI_STATUS status;
	int i, ndesc;
	unsigned long available_pages = 0;

	sz = 0;

	for (;;) {
		status = BS->GetMemoryMap(&sz, map, &key, &dsz, &dver);
		if (!FUNC0(status))
			break;

		if (status != EFI_BUFFER_TOO_SMALL) {
			FUNC5("Can't read memory map: %lu\n",
			    FUNC1(status));
			goto out;
		}

		FUNC3(map);

		/* Allocate 10 descriptors more than the size reported,
		 * to allow for any fragmentation caused by calling
		 * malloc */
		map = FUNC4(sz + (10 * dsz));
		if (map == NULL) {
			FUNC5("Unable to allocate memory\n");
			goto out;
		}
	}

	ndesc = sz / dsz;
	for (i = 0, p = map; i < ndesc;
	     i++, p = FUNC2(p, dsz)) {
		start = p->PhysicalStart;
		end = start + p->NumberOfPages * EFI_PAGE_SIZE;

		if (KERNEL_PHYSICAL_BASE < start ||
		    KERNEL_PHYSICAL_BASE >= end)
			continue;

		available_pages = p->NumberOfPages -
			((KERNEL_PHYSICAL_BASE - start) >> EFI_PAGE_SHIFT);
		break;
	}

	if (available_pages == 0) {
		FUNC5("Can't find valid memory map for staging area!\n");
		goto out;
	}

	i++;
	p = FUNC2(p, dsz);

	for ( ; i < ndesc;
	     i++, p = FUNC2(p, dsz)) {
		if (p->Type != EfiConventionalMemory &&
		    p->Type != EfiLoaderData)
			break;

		if (p->PhysicalStart != end)
			break;

		end = p->PhysicalStart + p->NumberOfPages * EFI_PAGE_SIZE;

		available_pages += p->NumberOfPages;
	}

	if (*nr_pages > available_pages) {
		FUNC5("Staging area's size is reduced: %ld -> %ld!\n",
		    *nr_pages, available_pages);
		*nr_pages = available_pages;
	}
out:
	FUNC3(map);
}