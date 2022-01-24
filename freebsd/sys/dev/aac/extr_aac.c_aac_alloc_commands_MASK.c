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
typedef  scalar_t__ uint64_t ;
typedef  int /*<<< orphan*/  u_int8_t ;
struct aac_softc {scalar_t__ total_fibs; int aac_max_fibs_alloc; scalar_t__ aac_max_fibs; int aac_max_fib_size; int /*<<< orphan*/  aac_fib_dmat; int /*<<< orphan*/  aac_io_lock; int /*<<< orphan*/  aac_fibmap_tqh; int /*<<< orphan*/  aac_buffer_dmat; struct aac_command* aac_commands; int /*<<< orphan*/  aac_dev; } ;
struct aac_fibmap {int /*<<< orphan*/  aac_fibmap; scalar_t__ aac_fibs; struct aac_command* aac_commands; } ;
struct aac_fib {int dummy; } ;
struct aac_command {int /*<<< orphan*/  cm_datamap; struct aac_command* cm_index; scalar_t__ cm_fibphys; struct aac_fib* cm_fib; struct aac_softc* cm_sc; } ;

/* Variables and functions */
 int /*<<< orphan*/  BUS_DMA_NOWAIT ; 
 int ENOMEM ; 
 char* HBA_FLAGS_DBG_COMM_B ; 
 char* HBA_FLAGS_DBG_FUNCTION_ENTRY_B ; 
 int /*<<< orphan*/  M_AACBUF ; 
 int M_NOWAIT ; 
 int M_ZERO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,struct aac_fibmap*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  aac_map_command_helper ; 
 int /*<<< orphan*/  FUNC1 (struct aac_command*) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,int,int /*<<< orphan*/ ,scalar_t__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,void**,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  fm_link ; 
 int /*<<< orphan*/  FUNC9 (struct aac_fibmap*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct aac_softc*,char*,char*,...) ; 
 struct aac_fibmap* FUNC11 (int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC14(struct aac_softc *sc)
{
	struct aac_command *cm;
	struct aac_fibmap *fm;
	uint64_t fibphys;
	int i, error;

	FUNC10(sc, HBA_FLAGS_DBG_FUNCTION_ENTRY_B, "");

	if (sc->total_fibs + sc->aac_max_fibs_alloc > sc->aac_max_fibs)
		return (ENOMEM);

	fm = FUNC11(sizeof(struct aac_fibmap), M_AACBUF, M_NOWAIT|M_ZERO);
	if (fm == NULL)
		return (ENOMEM);

	/* allocate the FIBs in DMAable memory and load them */
	if (FUNC5(sc->aac_fib_dmat, (void **)&fm->aac_fibs,
			     BUS_DMA_NOWAIT, &fm->aac_fibmap)) {
		FUNC8(sc->aac_dev,
			      "Not enough contiguous memory available.\n");
		FUNC9(fm, M_AACBUF);
		return (ENOMEM);
	}

	/* Ignore errors since this doesn't bounce */
	(void)FUNC3(sc->aac_fib_dmat, fm->aac_fibmap, fm->aac_fibs,
			      sc->aac_max_fibs_alloc * sc->aac_max_fib_size,
			      aac_map_command_helper, &fibphys, 0);

	/* initialize constant fields in the command structure */
	FUNC7(fm->aac_fibs, sc->aac_max_fibs_alloc * sc->aac_max_fib_size);
	for (i = 0; i < sc->aac_max_fibs_alloc; i++) {
		cm = sc->aac_commands + sc->total_fibs;
		fm->aac_commands = cm;
		cm->cm_sc = sc;
		cm->cm_fib = (struct aac_fib *)
			((u_int8_t *)fm->aac_fibs + i*sc->aac_max_fib_size);
		cm->cm_fibphys = fibphys + i*sc->aac_max_fib_size;
		cm->cm_index = sc->total_fibs;

		if ((error = FUNC2(sc->aac_buffer_dmat, 0,
					       &cm->cm_datamap)) != 0)
			break;
		FUNC12(&sc->aac_io_lock);
		FUNC1(cm);
		sc->total_fibs++;
		FUNC13(&sc->aac_io_lock);
	}

	if (i > 0) {
		FUNC12(&sc->aac_io_lock);
		FUNC0(&sc->aac_fibmap_tqh, fm, fm_link);
		FUNC10(sc, HBA_FLAGS_DBG_COMM_B, "total_fibs= %d\n", sc->total_fibs);
		FUNC13(&sc->aac_io_lock);
		return (0);
	}

	FUNC4(sc->aac_fib_dmat, fm->aac_fibmap);
	FUNC6(sc->aac_fib_dmat, fm->aac_fibs, fm->aac_fibmap);
	FUNC9(fm, M_AACBUF);
	return (ENOMEM);
}