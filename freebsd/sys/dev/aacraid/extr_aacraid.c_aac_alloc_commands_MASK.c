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
typedef  int uint64_t ;
typedef  int /*<<< orphan*/  u_int8_t ;
typedef  int u_int64_t ;
typedef  int u_int32_t ;
struct aac_softc {int total_fibs; int aac_max_fibs_alloc; int aac_max_fibs; int aac_max_fib_size; int flags; int /*<<< orphan*/  aac_fib_dmat; int /*<<< orphan*/  aac_fibmap_tqh; int /*<<< orphan*/  aac_buffer_dmat; struct aac_command* aac_commands; int /*<<< orphan*/  aac_io_lock; int /*<<< orphan*/  aac_dev; } ;
struct aac_fibmap {int /*<<< orphan*/  aac_fibmap; scalar_t__ aac_fibs; struct aac_command* aac_commands; } ;
struct aac_fib_xporthdr {int dummy; } ;
struct aac_fib {int dummy; } ;
struct aac_command {int cm_fibphys; int cm_index; int /*<<< orphan*/  cm_datamap; struct aac_fib* cm_fib; struct aac_softc* cm_sc; } ;

/* Variables and functions */
 int AAC_FLAGS_NEW_COMM_TYPE1 ; 
 int /*<<< orphan*/  BUS_DMA_NOWAIT ; 
 int ENOMEM ; 
 char* HBA_FLAGS_DBG_COMM_B ; 
 char* HBA_FLAGS_DBG_FUNCTION_ENTRY_B ; 
 int /*<<< orphan*/  MA_OWNED ; 
 int /*<<< orphan*/  M_AACRAIDBUF ; 
 int M_NOWAIT ; 
 int M_ZERO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,struct aac_fibmap*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  aac_map_command_helper ; 
 int /*<<< orphan*/  FUNC1 (struct aac_command*) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,int,int /*<<< orphan*/ ,int*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,void**,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  fm_link ; 
 int /*<<< orphan*/  FUNC9 (struct aac_fibmap*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct aac_softc*,char*,char*,...) ; 
 struct aac_fibmap* FUNC11 (int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC15(struct aac_softc *sc)
{
	struct aac_command *cm;
	struct aac_fibmap *fm;
	uint64_t fibphys;
	int i, error;
	u_int32_t maxsize;

	FUNC10(sc, HBA_FLAGS_DBG_FUNCTION_ENTRY_B, "");
	FUNC12(&sc->aac_io_lock, MA_OWNED);

	if (sc->total_fibs + sc->aac_max_fibs_alloc > sc->aac_max_fibs)
		return (ENOMEM);

	fm = FUNC11(sizeof(struct aac_fibmap), M_AACRAIDBUF, M_NOWAIT|M_ZERO);
	if (fm == NULL)
		return (ENOMEM);

	FUNC14(&sc->aac_io_lock);
	/* allocate the FIBs in DMAable memory and load them */
	if (FUNC5(sc->aac_fib_dmat, (void **)&fm->aac_fibs,
			     BUS_DMA_NOWAIT, &fm->aac_fibmap)) {
		FUNC8(sc->aac_dev,
			      "Not enough contiguous memory available.\n");
		FUNC9(fm, M_AACRAIDBUF);
		FUNC13(&sc->aac_io_lock);
		return (ENOMEM);
	}

	maxsize = sc->aac_max_fib_size + 31;
	if (sc->flags & AAC_FLAGS_NEW_COMM_TYPE1) 
		maxsize += sizeof(struct aac_fib_xporthdr);
	/* Ignore errors since this doesn't bounce */
	(void)FUNC3(sc->aac_fib_dmat, fm->aac_fibmap, fm->aac_fibs,
			      sc->aac_max_fibs_alloc * maxsize,
			      aac_map_command_helper, &fibphys, 0);
	FUNC13(&sc->aac_io_lock);

	/* initialize constant fields in the command structure */
	FUNC7(fm->aac_fibs, sc->aac_max_fibs_alloc * maxsize);
	for (i = 0; i < sc->aac_max_fibs_alloc; i++) {
		cm = sc->aac_commands + sc->total_fibs;
		fm->aac_commands = cm;
		cm->cm_sc = sc;
		cm->cm_fib = (struct aac_fib *)
			((u_int8_t *)fm->aac_fibs + i * maxsize);
		cm->cm_fibphys = fibphys + i * maxsize;
		if (sc->flags & AAC_FLAGS_NEW_COMM_TYPE1) {
			u_int64_t fibphys_aligned;
			fibphys_aligned = 
				(cm->cm_fibphys + sizeof(struct aac_fib_xporthdr) + 31) & ~31;
			cm->cm_fib = (struct aac_fib *)
				((u_int8_t *)cm->cm_fib + (fibphys_aligned - cm->cm_fibphys));
			cm->cm_fibphys = fibphys_aligned;
		} else {
			u_int64_t fibphys_aligned;
			fibphys_aligned = (cm->cm_fibphys + 31) & ~31;
			cm->cm_fib = (struct aac_fib *)
				((u_int8_t *)cm->cm_fib + (fibphys_aligned - cm->cm_fibphys));
			cm->cm_fibphys = fibphys_aligned;
		}
		cm->cm_index = sc->total_fibs;

		if ((error = FUNC2(sc->aac_buffer_dmat, 0,
					       &cm->cm_datamap)) != 0)
			break;
		if (sc->aac_max_fibs <= 1 || sc->aac_max_fibs - sc->total_fibs > 1)
			FUNC1(cm);
		sc->total_fibs++;
	}

	if (i > 0) {
		FUNC0(&sc->aac_fibmap_tqh, fm, fm_link);
		FUNC10(sc, HBA_FLAGS_DBG_COMM_B, "total_fibs= %d\n", sc->total_fibs);
		return (0);
	}

	FUNC4(sc->aac_fib_dmat, fm->aac_fibmap);
	FUNC6(sc->aac_fib_dmat, fm->aac_fibs, fm->aac_fibmap);
	FUNC9(fm, M_AACRAIDBUF);
	return (ENOMEM);
}