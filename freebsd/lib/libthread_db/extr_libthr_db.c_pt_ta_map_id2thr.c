
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef scalar_t__ thread_t ;
struct TYPE_7__ {scalar_t__ th_thread; scalar_t__ th_tid; TYPE_2__ const* th_ta; } ;
typedef TYPE_1__ td_thrhandle_t ;
struct TYPE_8__ {scalar_t__ thread_list_addr; scalar_t__ thread_off_tid; scalar_t__ thread_off_next; } ;
typedef TYPE_2__ td_thragent_t ;
typedef int td_err_e ;
typedef scalar_t__ psaddr_t ;
typedef scalar_t__ int64_t ;


 int TDBG_FUNC () ;
 int TD_ERR ;
 int TD_NOTHR ;
 int TD_OK ;
 int thr_pread_long (TYPE_2__ const*,scalar_t__,scalar_t__*) ;
 int thr_pread_ptr (TYPE_2__ const*,scalar_t__,scalar_t__*) ;

__attribute__((used)) static td_err_e
pt_ta_map_id2thr(const td_thragent_t *ta, thread_t id, td_thrhandle_t *th)
{
 psaddr_t pt;
 int64_t lwp;
 int ret;

 TDBG_FUNC();

 if (id == 0)
  return (TD_NOTHR);
 ret = thr_pread_ptr(ta, ta->thread_list_addr, &pt);
 if (ret != 0)
  return (TD_ERR);

 while (pt != 0) {
  ret = thr_pread_long(ta, pt + ta->thread_off_tid, &lwp);
  if (ret != 0)
   return (TD_ERR);
  if (lwp == id)
   break;

  ret = thr_pread_ptr(ta, pt + ta->thread_off_next, &pt);
  if (ret != 0)
   return (TD_ERR);
 }
 if (pt == 0)
  return (TD_NOTHR);
 th->th_ta = ta;
 th->th_tid = id;
 th->th_thread = pt;
 return (TD_OK);
}
