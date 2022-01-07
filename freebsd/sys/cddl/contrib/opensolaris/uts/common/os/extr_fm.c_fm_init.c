
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct erpt_kstat {int dummy; } ;
struct TYPE_4__ {int * ks_data; } ;
typedef TYPE_1__ kstat_t ;
typedef int kstat_named_t ;
typedef int errorq_func_t ;


 int CE_NOTE ;
 scalar_t__ ERPT_DATA_SZ ;
 int ERPT_MAX_ERRS ;
 int ERRORQ_VITAL ;
 int EVCH_CREAT ;
 int EVCH_HOLD_PEND ;
 int EVCH_SET_CHAN_LEN ;
 int FM_ERROR_CHAN ;
 int FM_ERR_PIL ;
 int KM_SLEEP ;
 int KSTAT_FLAG_VIRTUAL ;
 int KSTAT_TYPE_NAMED ;
 int MAX (int ,int) ;
 int cmn_err (int ,char*) ;
 int ereport_chan ;
 int ereport_chanlen ;
 int ereport_dumpbuf ;
 scalar_t__ ereport_dumplen ;
 int * ereport_errorq ;
 int ereport_qlen ;
 scalar_t__ ereport_size ;
 int erpt_kstat_data ;
 int * errorq_nvcreate (char*,int ,int *,int,scalar_t__,int ,int ) ;
 scalar_t__ fm_drain ;
 int kmem_alloc (scalar_t__,int ) ;
 TYPE_1__* kstat_create (char*,int ,char*,char*,int ,int,int ) ;
 int kstat_install (TYPE_1__*) ;
 int max_ncpus ;
 int panic (char*) ;
 int sysevent_evc_bind (int ,int *,int) ;
 int sysevent_evc_control (int ,int ,int *) ;

void
fm_init(void)
{
 kstat_t *ksp;
 if (ereport_qlen == 0)
  ereport_qlen = ERPT_MAX_ERRS * MAX(max_ncpus, 4);

 if (ereport_size == 0)
  ereport_size = ERPT_DATA_SZ;
 ereport_dumpbuf = kmem_alloc(ereport_size, KM_SLEEP);
 ereport_dumplen = ereport_size;


 ksp = kstat_create("unix", 0, "fm", "misc", KSTAT_TYPE_NAMED,
     sizeof (struct erpt_kstat) / sizeof (kstat_named_t),
     KSTAT_FLAG_VIRTUAL);

 if (ksp != ((void*)0)) {
  ksp->ks_data = &erpt_kstat_data;
  kstat_install(ksp);
 } else {
  cmn_err(CE_NOTE, "failed to create fm/misc kstat\n");

 }
}
