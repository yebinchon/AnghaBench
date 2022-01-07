
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_22__ TYPE_7__ ;
typedef struct TYPE_21__ TYPE_6__ ;
typedef struct TYPE_20__ TYPE_5__ ;
typedef struct TYPE_19__ TYPE_4__ ;
typedef struct TYPE_18__ TYPE_3__ ;
typedef struct TYPE_17__ TYPE_2__ ;
typedef struct TYPE_16__ TYPE_1__ ;
typedef struct TYPE_15__ TYPE_12__ ;


typedef size_t uint_t ;
struct TYPE_17__ {int p_proc_flag; int p_fasttrap_tp_gen; int p_dtrace_count; } ;
typedef TYPE_2__ proc_t ;
typedef scalar_t__ pid_t ;
struct TYPE_18__ {uintptr_t ftt_pc; scalar_t__ ftt_pid; scalar_t__ ftt_proc; struct TYPE_18__* ftt_next; TYPE_6__* ftt_retids; TYPE_6__* ftt_ids; } ;
typedef TYPE_3__ fasttrap_tracepoint_t ;
struct TYPE_19__ {scalar_t__ ftp_proc; } ;
typedef TYPE_4__ fasttrap_provider_t ;
struct TYPE_20__ {size_t ftp_ntps; scalar_t__ ftp_pid; void* ftp_gen; TYPE_1__* ftp_tps; TYPE_4__* ftp_prov; } ;
typedef TYPE_5__ fasttrap_probe_t ;
struct TYPE_21__ {int fti_ptype; TYPE_5__* fti_probe; struct TYPE_21__* fti_next; } ;
typedef TYPE_6__ fasttrap_id_t ;
struct TYPE_22__ {int ftb_mtx; TYPE_3__* ftb_data; } ;
typedef TYPE_7__ fasttrap_bucket_t ;
struct TYPE_16__ {TYPE_3__* fit_tp; TYPE_6__ fit_id; } ;
struct TYPE_15__ {TYPE_7__* fth_table; } ;


 int ASSERT (int) ;





 size_t FASTTRAP_ID_INDEX (TYPE_6__*) ;
 size_t FASTTRAP_TPOINTS_INDEX (scalar_t__,uintptr_t) ;
 int P_PR_LOCK ;
 int atomic_add_rel_64 (int *,int) ;
 void* fasttrap_mod_gen ;
 int fasttrap_sigtrap (TYPE_2__*,int *,uintptr_t) ;
 TYPE_12__ fasttrap_tpoints ;
 scalar_t__ fasttrap_tracepoint_remove (TYPE_2__*,TYPE_3__*) ;
 int membar_producer () ;
 int mutex_enter (int *) ;
 int mutex_exit (int *) ;

__attribute__((used)) static void
fasttrap_tracepoint_disable(proc_t *p, fasttrap_probe_t *probe, uint_t index)
{
 fasttrap_bucket_t *bucket;
 fasttrap_provider_t *provider = probe->ftp_prov;
 fasttrap_tracepoint_t **pp, *tp;
 fasttrap_id_t *id, **idp = ((void*)0);
 pid_t pid;
 uintptr_t pc;

 ASSERT(index < probe->ftp_ntps);

 pid = probe->ftp_pid;
 pc = probe->ftp_tps[index].fit_tp->ftt_pc;
 id = &probe->ftp_tps[index].fit_id;

 ASSERT(probe->ftp_tps[index].fit_tp->ftt_pid == pid);





 bucket = &fasttrap_tpoints.fth_table[FASTTRAP_TPOINTS_INDEX(pid, pc)];
 mutex_enter(&bucket->ftb_mtx);
 for (tp = bucket->ftb_data; tp != ((void*)0); tp = tp->ftt_next) {
  if (tp->ftt_pid == pid && tp->ftt_pc == pc &&
      tp->ftt_proc == provider->ftp_proc)
   break;
 }




 ASSERT(tp != ((void*)0));

 switch (id->fti_ptype) {
 case 132:
 case 130:
 case 131:
  ASSERT(tp->ftt_ids != ((void*)0));
  idp = &tp->ftt_ids;
  break;

 case 128:
 case 129:
  ASSERT(tp->ftt_retids != ((void*)0));
  idp = &tp->ftt_retids;
  break;

 default:
  ASSERT(0);
 }

 while ((*idp)->fti_probe != probe) {
  idp = &(*idp)->fti_next;
  ASSERT(*idp != ((void*)0));
 }

 id = *idp;
 *idp = id->fti_next;
 membar_producer();

 ASSERT(id->fti_probe == probe);






 if (tp->ftt_ids != ((void*)0) || tp->ftt_retids != ((void*)0)) {





  if (tp == probe->ftp_tps[index].fit_tp) {
   fasttrap_probe_t *tmp_probe;
   fasttrap_tracepoint_t **tmp_tp;
   uint_t tmp_index;

   if (tp->ftt_ids != ((void*)0)) {
    tmp_probe = tp->ftt_ids->fti_probe;

    tmp_index = FASTTRAP_ID_INDEX(tp->ftt_ids);
    tmp_tp = &tmp_probe->ftp_tps[tmp_index].fit_tp;
   } else {
    tmp_probe = tp->ftt_retids->fti_probe;

    tmp_index = FASTTRAP_ID_INDEX(tp->ftt_retids);
    tmp_tp = &tmp_probe->ftp_tps[tmp_index].fit_tp;
   }

   ASSERT(*tmp_tp != ((void*)0));
   ASSERT(*tmp_tp != probe->ftp_tps[index].fit_tp);
   ASSERT((*tmp_tp)->ftt_ids == ((void*)0));
   ASSERT((*tmp_tp)->ftt_retids == ((void*)0));

   probe->ftp_tps[index].fit_tp = *tmp_tp;
   *tmp_tp = tp;
  }

  mutex_exit(&bucket->ftb_mtx);





  probe->ftp_gen = fasttrap_mod_gen;
  return;
 }

 mutex_exit(&bucket->ftb_mtx);
 if (p != ((void*)0)) {





  if (fasttrap_tracepoint_remove(p, tp) != 0)
   fasttrap_sigtrap(p, ((void*)0), pc);
  p->p_dtrace_count--;

  atomic_add_rel_64(&p->p_fasttrap_tp_gen, 1);
 }




 mutex_enter(&bucket->ftb_mtx);
 pp = (fasttrap_tracepoint_t **)&bucket->ftb_data;
 ASSERT(*pp != ((void*)0));
 while (*pp != tp) {
  pp = &(*pp)->ftt_next;
  ASSERT(*pp != ((void*)0));
 }

 *pp = tp->ftt_next;
 membar_producer();

 mutex_exit(&bucket->ftb_mtx);




 probe->ftp_gen = fasttrap_mod_gen;
}
