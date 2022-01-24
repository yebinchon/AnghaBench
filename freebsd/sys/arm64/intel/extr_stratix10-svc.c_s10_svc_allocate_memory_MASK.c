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
typedef  scalar_t__ vm_offset_t ;
struct s10_svc_softc {int /*<<< orphan*/  vmem; } ;
struct s10_svc_mem {int size; int /*<<< orphan*/  paddr; scalar_t__ vaddr; scalar_t__ fill; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int M_FIRSTFIT ; 
 int M_NOWAIT ; 
 struct s10_svc_softc* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ *) ; 

int
FUNC4(device_t dev, struct s10_svc_mem *mem, int size)
{
	struct s10_svc_softc *sc;

	sc = FUNC0(dev);

	if (size <= 0)
		return (EINVAL);

	if (FUNC3(sc->vmem, size,
	    M_FIRSTFIT | M_NOWAIT, &mem->paddr)) {
		FUNC1(dev, "Can't allocate memory\n");
		return (ENOMEM);
	}

	mem->size = size;
	mem->fill = 0;
	mem->vaddr = (vm_offset_t)FUNC2(mem->paddr, mem->size);

	return (0);
}