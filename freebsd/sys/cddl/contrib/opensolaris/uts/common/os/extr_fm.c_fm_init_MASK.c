#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct erpt_kstat {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/ * ks_data; } ;
typedef  TYPE_1__ kstat_t ;
typedef  int /*<<< orphan*/  kstat_named_t ;
typedef  int /*<<< orphan*/  errorq_func_t ;

/* Variables and functions */
 int /*<<< orphan*/  CE_NOTE ; 
 scalar_t__ ERPT_DATA_SZ ; 
 int ERPT_MAX_ERRS ; 
 int /*<<< orphan*/  ERRORQ_VITAL ; 
 int EVCH_CREAT ; 
 int EVCH_HOLD_PEND ; 
 int /*<<< orphan*/  EVCH_SET_CHAN_LEN ; 
 int /*<<< orphan*/  FM_ERROR_CHAN ; 
 int /*<<< orphan*/  FM_ERR_PIL ; 
 int /*<<< orphan*/  KM_SLEEP ; 
 int /*<<< orphan*/  KSTAT_FLAG_VIRTUAL ; 
 int /*<<< orphan*/  KSTAT_TYPE_NAMED ; 
 int FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  ereport_chan ; 
 int /*<<< orphan*/  ereport_chanlen ; 
 int /*<<< orphan*/  ereport_dumpbuf ; 
 scalar_t__ ereport_dumplen ; 
 int /*<<< orphan*/ * ereport_errorq ; 
 int ereport_qlen ; 
 scalar_t__ ereport_size ; 
 int /*<<< orphan*/  erpt_kstat_data ; 
 int /*<<< orphan*/ * FUNC2 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ fm_drain ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC4 (char*,int /*<<< orphan*/ ,char*,char*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  max_ncpus ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

void
FUNC9(void)
{
	kstat_t *ksp;

#ifdef illumos
	(void) sysevent_evc_bind(FM_ERROR_CHAN,
	    &ereport_chan, EVCH_CREAT | EVCH_HOLD_PEND);

	(void) sysevent_evc_control(ereport_chan,
	    EVCH_SET_CHAN_LEN, &ereport_chanlen);
#endif

	if (ereport_qlen == 0)
		ereport_qlen = ERPT_MAX_ERRS * FUNC0(max_ncpus, 4);

	if (ereport_size == 0)
		ereport_size = ERPT_DATA_SZ;

#ifdef illumos
	ereport_errorq = errorq_nvcreate("fm_ereport_queue",
	    (errorq_func_t)fm_drain, NULL, ereport_qlen, ereport_size,
	    FM_ERR_PIL, ERRORQ_VITAL);
	if (ereport_errorq == NULL)
		panic("failed to create required ereport error queue");
#endif

	ereport_dumpbuf = FUNC3(ereport_size, KM_SLEEP);
	ereport_dumplen = ereport_size;

	/* Initialize ereport allocation and generation kstats */
	ksp = FUNC4("unix", 0, "fm", "misc", KSTAT_TYPE_NAMED,
	    sizeof (struct erpt_kstat) / sizeof (kstat_named_t),
	    KSTAT_FLAG_VIRTUAL);

	if (ksp != NULL) {
		ksp->ks_data = &erpt_kstat_data;
		FUNC5(ksp);
	} else {
		FUNC1(CE_NOTE, "failed to create fm/misc kstat\n");

	}
}