#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int /*<<< orphan*/  uint32_t ;
struct ndis_softc {int /*<<< orphan*/  ndis_shlist; int /*<<< orphan*/  ndis_parent_tag; } ;
struct TYPE_7__ {int /*<<< orphan*/  np_quad; } ;
struct ndis_shmem {int /*<<< orphan*/  ndis_list; void* ndis_saddr; TYPE_2__ ndis_paddr; int /*<<< orphan*/  ndis_stag; int /*<<< orphan*/  ndis_smap; } ;
struct TYPE_8__ {int /*<<< orphan*/  np_quad; } ;
typedef  TYPE_3__ ndis_physaddr ;
struct TYPE_9__ {TYPE_1__* nmb_physdeviceobj; } ;
typedef  TYPE_4__ ndis_miniport_block ;
typedef  int /*<<< orphan*/ * ndis_handle ;
struct TYPE_6__ {int /*<<< orphan*/  do_devext; } ;

/* Variables and functions */
 int /*<<< orphan*/  BUS_DMA_ALLOCNOW ; 
 int BUS_DMA_NOWAIT ; 
 int BUS_DMA_ZERO ; 
 int /*<<< orphan*/  BUS_SPACE_MAXADDR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  M_DEVBUF ; 
 int M_NOWAIT ; 
 int M_ZERO ; 
 int /*<<< orphan*/  NDIS_BUS_SPACE_SHARED_MAXADDR ; 
 int /*<<< orphan*/  FUNC2 (struct ndis_softc*) ; 
 int /*<<< orphan*/  FUNC3 (struct ndis_softc*) ; 
 int FUNC4 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,void*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,void*,int) ; 
 int FUNC7 (int /*<<< orphan*/ ,void**,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,void*,int /*<<< orphan*/ ) ; 
 struct ndis_softc* FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct ndis_shmem*,int /*<<< orphan*/ ) ; 
 struct ndis_shmem* FUNC11 (int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  ndis_mapshared_cb ; 

__attribute__((used)) static void
FUNC12(ndis_handle adapter, uint32_t len, uint8_t cached,
    void **vaddr, ndis_physaddr *paddr)
{
	ndis_miniport_block	*block;
	struct ndis_softc	*sc;
	struct ndis_shmem	*sh;
	int			error;

	if (adapter == NULL)
		return;

	block = (ndis_miniport_block *)adapter;
	sc = FUNC9(block->nmb_physdeviceobj->do_devext);

	sh = FUNC11(sizeof(struct ndis_shmem), M_DEVBUF, M_NOWAIT|M_ZERO);
	if (sh == NULL)
		return;

	FUNC0(&sh->ndis_list);

	/*
	 * When performing shared memory allocations, create a tag
	 * with a lowaddr limit that restricts physical memory mappings
	 * so that they all fall within the first 1GB of memory.
	 * At least one device/driver combination (Linksys Instant
	 * Wireless PCI Card V2.7, Broadcom 802.11b) seems to have
	 * problems with performing DMA operations with physical
	 * addresses that lie above the 1GB mark. I don't know if this
	 * is a hardware limitation or if the addresses are being
	 * truncated within the driver, but this seems to be the only
	 * way to make these cards work reliably in systems with more
	 * than 1GB of physical memory.
	 */

	error = FUNC4(sc->ndis_parent_tag, 64,
	    0, NDIS_BUS_SPACE_SHARED_MAXADDR, BUS_SPACE_MAXADDR, NULL,
	    NULL, len, 1, len, BUS_DMA_ALLOCNOW, NULL, NULL,
	    &sh->ndis_stag);

	if (error) {
		FUNC10(sh, M_DEVBUF);
		return;
	}

	error = FUNC7(sh->ndis_stag, vaddr,
	    BUS_DMA_NOWAIT | BUS_DMA_ZERO, &sh->ndis_smap);

	if (error) {
		FUNC5(sh->ndis_stag);
		FUNC10(sh, M_DEVBUF);
		return;
	}

	error = FUNC6(sh->ndis_stag, sh->ndis_smap, *vaddr,
	    len, ndis_mapshared_cb, (void *)paddr, BUS_DMA_NOWAIT);

	if (error) {
		FUNC8(sh->ndis_stag, *vaddr, sh->ndis_smap);
		FUNC5(sh->ndis_stag);
		FUNC10(sh, M_DEVBUF);
		return;
	}

	/*
	 * Save the physical address along with the source address.
	 * The AirGo MIMO driver will call NdisMFreeSharedMemory()
	 * with a bogus virtual address sometimes, but with a valid
	 * physical address. To keep this from causing trouble, we
	 * use the physical address to as a sanity check in case
	 * searching based on the virtual address fails.
	 */

	FUNC2(sc);
	sh->ndis_paddr.np_quad = paddr->np_quad;
	sh->ndis_saddr = *vaddr;
	FUNC1((&sc->ndis_shlist), (&sh->ndis_list));
	FUNC3(sc);
}