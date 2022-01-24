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
struct s10_svc_softc {int /*<<< orphan*/  vmem; } ;
struct s10_svc_mem {int /*<<< orphan*/  size; int /*<<< orphan*/  paddr; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 struct s10_svc_softc* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void
FUNC2(device_t dev, struct s10_svc_mem *mem)
{
	struct s10_svc_softc *sc;

	sc = FUNC0(dev);

	FUNC1(sc->vmem, mem->paddr, mem->size);
}