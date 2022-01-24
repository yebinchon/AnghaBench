#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_22__   TYPE_7__ ;
typedef  struct TYPE_21__   TYPE_6__ ;
typedef  struct TYPE_20__   TYPE_5__ ;
typedef  struct TYPE_19__   TYPE_4__ ;
typedef  struct TYPE_18__   TYPE_3__ ;
typedef  struct TYPE_17__   TYPE_2__ ;
typedef  struct TYPE_16__   TYPE_1__ ;
typedef  struct TYPE_15__   TYPE_12__ ;

/* Type definitions */
typedef  size_t uint_t ;
struct TYPE_17__ {int p_proc_flag; int /*<<< orphan*/  p_fasttrap_tp_gen; int /*<<< orphan*/  p_dtrace_count; } ;
typedef  TYPE_2__ proc_t ;
typedef  scalar_t__ pid_t ;
struct TYPE_18__ {uintptr_t ftt_pc; scalar_t__ ftt_pid; scalar_t__ ftt_proc; struct TYPE_18__* ftt_next; TYPE_6__* ftt_retids; TYPE_6__* ftt_ids; } ;
typedef  TYPE_3__ fasttrap_tracepoint_t ;
struct TYPE_19__ {scalar_t__ ftp_proc; } ;
typedef  TYPE_4__ fasttrap_provider_t ;
struct TYPE_20__ {size_t ftp_ntps; scalar_t__ ftp_pid; void* ftp_gen; TYPE_1__* ftp_tps; TYPE_4__* ftp_prov; } ;
typedef  TYPE_5__ fasttrap_probe_t ;
struct TYPE_21__ {int fti_ptype; TYPE_5__* fti_probe; struct TYPE_21__* fti_next; } ;
typedef  TYPE_6__ fasttrap_id_t ;
struct TYPE_22__ {int /*<<< orphan*/  ftb_mtx; TYPE_3__* ftb_data; } ;
typedef  TYPE_7__ fasttrap_bucket_t ;
struct TYPE_16__ {TYPE_3__* fit_tp; TYPE_6__ fit_id; } ;
struct TYPE_15__ {TYPE_7__* fth_table; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
#define  DTFTP_ENTRY 132 
#define  DTFTP_IS_ENABLED 131 
#define  DTFTP_OFFSETS 130 
#define  DTFTP_POST_OFFSETS 129 
#define  DTFTP_RETURN 128 
 size_t FUNC1 (TYPE_6__*) ; 
 size_t FUNC2 (scalar_t__,uintptr_t) ; 
 int P_PR_LOCK ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 
 void* fasttrap_mod_gen ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,int /*<<< orphan*/ *,uintptr_t) ; 
 TYPE_12__ fasttrap_tpoints ; 
 scalar_t__ FUNC5 (TYPE_2__*,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC9(proc_t *p, fasttrap_probe_t *probe, uint_t index)
{
	fasttrap_bucket_t *bucket;
	fasttrap_provider_t *provider = probe->ftp_prov;
	fasttrap_tracepoint_t **pp, *tp;
	fasttrap_id_t *id, **idp = NULL;
	pid_t pid;
	uintptr_t pc;

	FUNC0(index < probe->ftp_ntps);

	pid = probe->ftp_pid;
	pc = probe->ftp_tps[index].fit_tp->ftt_pc;
	id = &probe->ftp_tps[index].fit_id;

	FUNC0(probe->ftp_tps[index].fit_tp->ftt_pid == pid);

	/*
	 * Find the tracepoint and make sure that our id is one of the
	 * ones registered with it.
	 */
	bucket = &fasttrap_tpoints.fth_table[FUNC2(pid, pc)];
	FUNC7(&bucket->ftb_mtx);
	for (tp = bucket->ftb_data; tp != NULL; tp = tp->ftt_next) {
		if (tp->ftt_pid == pid && tp->ftt_pc == pc &&
		    tp->ftt_proc == provider->ftp_proc)
			break;
	}

	/*
	 * If we somehow lost this tracepoint, we're in a world of hurt.
	 */
	FUNC0(tp != NULL);

	switch (id->fti_ptype) {
	case DTFTP_ENTRY:
	case DTFTP_OFFSETS:
	case DTFTP_IS_ENABLED:
		FUNC0(tp->ftt_ids != NULL);
		idp = &tp->ftt_ids;
		break;

	case DTFTP_RETURN:
	case DTFTP_POST_OFFSETS:
		FUNC0(tp->ftt_retids != NULL);
		idp = &tp->ftt_retids;
		break;

	default:
		FUNC0(0);
	}

	while ((*idp)->fti_probe != probe) {
		idp = &(*idp)->fti_next;
		FUNC0(*idp != NULL);
	}

	id = *idp;
	*idp = id->fti_next;
	FUNC6();

	FUNC0(id->fti_probe == probe);

	/*
	 * If there are other registered enablings of this tracepoint, we're
	 * all done, but if this was the last probe assocated with this
	 * this tracepoint, we need to remove and free it.
	 */
	if (tp->ftt_ids != NULL || tp->ftt_retids != NULL) {

		/*
		 * If the current probe's tracepoint is in use, swap it
		 * for an unused tracepoint.
		 */
		if (tp == probe->ftp_tps[index].fit_tp) {
			fasttrap_probe_t *tmp_probe;
			fasttrap_tracepoint_t **tmp_tp;
			uint_t tmp_index;

			if (tp->ftt_ids != NULL) {
				tmp_probe = tp->ftt_ids->fti_probe;
				/* LINTED - alignment */
				tmp_index = FUNC1(tp->ftt_ids);
				tmp_tp = &tmp_probe->ftp_tps[tmp_index].fit_tp;
			} else {
				tmp_probe = tp->ftt_retids->fti_probe;
				/* LINTED - alignment */
				tmp_index = FUNC1(tp->ftt_retids);
				tmp_tp = &tmp_probe->ftp_tps[tmp_index].fit_tp;
			}

			FUNC0(*tmp_tp != NULL);
			FUNC0(*tmp_tp != probe->ftp_tps[index].fit_tp);
			FUNC0((*tmp_tp)->ftt_ids == NULL);
			FUNC0((*tmp_tp)->ftt_retids == NULL);

			probe->ftp_tps[index].fit_tp = *tmp_tp;
			*tmp_tp = tp;
		}

		FUNC8(&bucket->ftb_mtx);

		/*
		 * Tag the modified probe with the generation in which it was
		 * changed.
		 */
		probe->ftp_gen = fasttrap_mod_gen;
		return;
	}

	FUNC8(&bucket->ftb_mtx);

	/*
	 * We can't safely remove the tracepoint from the set of active
	 * tracepoints until we've actually removed the fasttrap instruction
	 * from the process's text. We can, however, operate on this
	 * tracepoint secure in the knowledge that no other thread is going to
	 * be looking at it since we hold P_PR_LOCK on the process if it's
	 * live or we hold the provider lock on the process if it's dead and
	 * gone.
	 */

	/*
	 * We only need to remove the actual instruction if we're looking
	 * at an existing process
	 */
	if (p != NULL) {
		/*
		 * If we fail to restore the instruction we need to kill
		 * this process since it's in a completely unrecoverable
		 * state.
		 */
		if (FUNC5(p, tp) != 0)
			FUNC4(p, NULL, pc);

		/*
		 * Decrement the count of the number of tracepoints active
		 * in the victim process.
		 */
#ifdef illumos
		ASSERT(p->p_proc_flag & P_PR_LOCK);
#endif
		p->p_dtrace_count--;

		FUNC3(&p->p_fasttrap_tp_gen, 1);
	}

	/*
	 * Remove the probe from the hash table of active tracepoints.
	 */
	FUNC7(&bucket->ftb_mtx);
	pp = (fasttrap_tracepoint_t **)&bucket->ftb_data;
	FUNC0(*pp != NULL);
	while (*pp != tp) {
		pp = &(*pp)->ftt_next;
		FUNC0(*pp != NULL);
	}

	*pp = tp->ftt_next;
	FUNC6();

	FUNC8(&bucket->ftb_mtx);

	/*
	 * Tag the modified probe with the generation in which it was changed.
	 */
	probe->ftp_gen = fasttrap_mod_gen;
}