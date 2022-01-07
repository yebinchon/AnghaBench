
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int tls_index ;
struct TYPE_4__ {size_t th_thread; TYPE_2__* th_ta; } ;
typedef TYPE_1__ td_thrhandle_t ;
struct TYPE_5__ {size_t thread_off_linkmap; size_t thread_off_tlsindex; size_t thread_off_tcb; size_t thread_off_dtv; int ph; } ;
typedef TYPE_2__ td_thragent_t ;
typedef int td_err_e ;
typedef int tcb_addr ;
typedef size_t psaddr_t ;
typedef int dtv_addr ;


 int P2T (int) ;
 int TD_OK ;
 int ps_pread (int ,size_t,...) ;

__attribute__((used)) static td_err_e
pt_thr_tls_get_addr(const td_thrhandle_t *th, psaddr_t _linkmap, size_t offset,
    psaddr_t *address)
{
 const td_thragent_t *ta = th->th_ta;
 psaddr_t dtv_addr, obj_entry, tcb_addr;
 int tls_index, ret;


 obj_entry = _linkmap - ta->thread_off_linkmap;


 ret = ps_pread(ta->ph,
  obj_entry + ta->thread_off_tlsindex,
  &tls_index, sizeof(tls_index));
 if (ret != 0)
  return (P2T(ret));


 ret = ps_pread(ta->ph, th->th_thread + ta->thread_off_tcb,
  &tcb_addr, sizeof(tcb_addr));
 if (ret != 0)
  return (P2T(ret));


 ret = ps_pread(ta->ph, tcb_addr + ta->thread_off_dtv,
  &dtv_addr, sizeof(dtv_addr));
 if (ret != 0)
  return (P2T(ret));

 ret = ps_pread(ta->ph, dtv_addr + sizeof(void *) * (tls_index+1),
     address, sizeof(*address));
 if (ret != 0)
  return (P2T(ret));

 *address += offset;
 return (TD_OK);
}
