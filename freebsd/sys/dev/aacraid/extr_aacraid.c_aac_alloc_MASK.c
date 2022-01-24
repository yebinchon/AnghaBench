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
typedef  int /*<<< orphan*/  u_int32_t ;
struct aac_softc {int flags; int aac_max_sectors; int aac_sg_tablesize; int aac_max_fibs_alloc; int aac_max_fib_size; int aac_max_fibs; int total_fibs; int /*<<< orphan*/  aac_io_lock; int /*<<< orphan*/  aac_commands; int /*<<< orphan*/  aac_fibmap_tqh; int /*<<< orphan*/  aac_common; int /*<<< orphan*/  aac_common_dmamap; int /*<<< orphan*/  aac_common_dmat; int /*<<< orphan*/  aac_dev; int /*<<< orphan*/  aac_parent_dmat; int /*<<< orphan*/  aac_fib_dmat; int /*<<< orphan*/  aac_buffer_dmat; } ;
struct aac_fib_xporthdr {int dummy; } ;
struct aac_common {int dummy; } ;
struct aac_command {int dummy; } ;
typedef  int bus_size_t ;

/* Variables and functions */
 int AAC_FLAGS_4GB_WINDOW ; 
 int AAC_FLAGS_NEW_COMM_TYPE1 ; 
 int AAC_FLAGS_SG_64BIT ; 
 int /*<<< orphan*/  BUS_DMA_ALLOCNOW ; 
 int /*<<< orphan*/  BUS_DMA_NOWAIT ; 
 int BUS_SPACE_MAXADDR ; 
 int BUS_SPACE_MAXADDR_32BIT ; 
 int BUS_SPACE_MAXSIZE_32BIT ; 
 int ENOMEM ; 
 char* HBA_FLAGS_DBG_FUNCTION_ENTRY_B ; 
 int /*<<< orphan*/  M_AACRAIDBUF ; 
 int M_WAITOK ; 
 int M_ZERO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (struct aac_softc*) ; 
 int /*<<< orphan*/  aac_common_map ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,struct aac_softc*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,void**,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * busdma_lock_mutex ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC7 (struct aac_softc*,char*,char*) ; 
 int /*<<< orphan*/  FUNC8 (int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC11(struct aac_softc *sc)
{
	bus_size_t maxsize;

	FUNC7(sc, HBA_FLAGS_DBG_FUNCTION_ENTRY_B, "");

	/*
	 * Create DMA tag for mapping buffers into controller-addressable space.
	 */
	if (FUNC2(sc->aac_parent_dmat, 	/* parent */
			       1, 0, 			/* algnmnt, boundary */
			       (sc->flags & AAC_FLAGS_SG_64BIT) ?
			       BUS_SPACE_MAXADDR :
			       BUS_SPACE_MAXADDR_32BIT,	/* lowaddr */
			       BUS_SPACE_MAXADDR, 	/* highaddr */
			       NULL, NULL, 		/* filter, filterarg */
			       sc->aac_max_sectors << 9, /* maxsize */
			       sc->aac_sg_tablesize,	/* nsegments */
			       BUS_SPACE_MAXSIZE_32BIT,	/* maxsegsize */
			       BUS_DMA_ALLOCNOW,	/* flags */
			       busdma_lock_mutex,	/* lockfunc */
			       &sc->aac_io_lock,	/* lockfuncarg */
			       &sc->aac_buffer_dmat)) {
		FUNC6(sc->aac_dev, "can't allocate buffer DMA tag\n");
		return (ENOMEM);
	}

	/*
	 * Create DMA tag for mapping FIBs into controller-addressable space..
	 */
	if (sc->flags & AAC_FLAGS_NEW_COMM_TYPE1) 
		maxsize = sc->aac_max_fibs_alloc * (sc->aac_max_fib_size +
			sizeof(struct aac_fib_xporthdr) + 31);
	else
		maxsize = sc->aac_max_fibs_alloc * (sc->aac_max_fib_size + 31);
	if (FUNC2(sc->aac_parent_dmat,	/* parent */
			       1, 0, 			/* algnmnt, boundary */
			       (sc->flags & AAC_FLAGS_4GB_WINDOW) ?
			       BUS_SPACE_MAXADDR_32BIT :
			       0x7fffffff,		/* lowaddr */
			       BUS_SPACE_MAXADDR, 	/* highaddr */
			       NULL, NULL, 		/* filter, filterarg */
			       maxsize,  		/* maxsize */
			       1,			/* nsegments */
			       maxsize,			/* maxsize */
			       0,			/* flags */
			       NULL, NULL,		/* No locking needed */
			       &sc->aac_fib_dmat)) {
		FUNC6(sc->aac_dev, "can't allocate FIB DMA tag\n");
		return (ENOMEM);
	}

	/*
	 * Create DMA tag for the common structure and allocate it.
	 */
	maxsize = sizeof(struct aac_common);
	maxsize += sc->aac_max_fibs * sizeof(u_int32_t);
	if (FUNC2(sc->aac_parent_dmat, 	/* parent */
			       1, 0,			/* algnmnt, boundary */
			       (sc->flags & AAC_FLAGS_4GB_WINDOW) ?
			       BUS_SPACE_MAXADDR_32BIT :
			       0x7fffffff,		/* lowaddr */
			       BUS_SPACE_MAXADDR, 	/* highaddr */
			       NULL, NULL, 		/* filter, filterarg */
			       maxsize, 		/* maxsize */
			       1,			/* nsegments */
			       maxsize,			/* maxsegsize */
			       0,			/* flags */
			       NULL, NULL,		/* No locking needed */
			       &sc->aac_common_dmat)) {
		FUNC6(sc->aac_dev,
			      "can't allocate common structure DMA tag\n");
		return (ENOMEM);
	}
	if (FUNC4(sc->aac_common_dmat, (void **)&sc->aac_common,
			     BUS_DMA_NOWAIT, &sc->aac_common_dmamap)) {
		FUNC6(sc->aac_dev, "can't allocate common structure\n");
		return (ENOMEM);
	}

	(void)FUNC3(sc->aac_common_dmat, sc->aac_common_dmamap,
			sc->aac_common, maxsize,
			aac_common_map, sc, 0);
	FUNC5(sc->aac_common, maxsize);

	/* Allocate some FIBs and associated command structs */
	FUNC0(&sc->aac_fibmap_tqh);
	sc->aac_commands = FUNC8(sc->aac_max_fibs * sizeof(struct aac_command),
				  M_AACRAIDBUF, M_WAITOK|M_ZERO);
	FUNC9(&sc->aac_io_lock);
	while (sc->total_fibs < sc->aac_max_fibs) {
		if (FUNC1(sc) != 0)
			break;
	}
	FUNC10(&sc->aac_io_lock);
	if (sc->total_fibs == 0)
		return (ENOMEM);

	return (0);
}