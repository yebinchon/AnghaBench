
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int tmp ;
struct TYPE_10__ {scalar_t__ th_thread; int th_tid; TYPE_2__ const* th_ta; } ;
typedef TYPE_1__ td_thrhandle_t ;
struct TYPE_11__ {scalar_t__ thread_off_event_buf; scalar_t__ thread_off_tid; int ph; int thread_last_event_addr; } ;
typedef TYPE_2__ const td_thragent_t ;
typedef scalar_t__ td_thr_events_e ;
struct TYPE_12__ {scalar_t__ event; scalar_t__ th_p; } ;
typedef TYPE_3__ td_event_msg_t ;
typedef int td_err_e ;
typedef scalar_t__ psaddr_t ;
typedef int int64_t ;


 int P2T (int) ;
 int TDBG_FUNC () ;
 int TD_ERR ;
 int TD_NOMSG ;
 int ps_pread (int ,scalar_t__,TYPE_3__*,int) ;
 int ps_pwrite (int ,scalar_t__,scalar_t__*,int) ;
 int thr_pread_long (TYPE_2__ const*,scalar_t__,int *) ;
 int thr_pread_ptr (TYPE_2__ const*,int ,scalar_t__*) ;
 int thr_pwrite_ptr (TYPE_2__ const*,int ,int ) ;

__attribute__((used)) static td_err_e
pt_thr_event_getmsg(const td_thrhandle_t *th, td_event_msg_t *msg)
{
 static td_thrhandle_t handle;
 const td_thragent_t *ta = th->th_ta;
 psaddr_t pt, pt_temp;
 int64_t lwp;
 int ret;
 td_thr_events_e tmp;

 TDBG_FUNC();
 pt = th->th_thread;
 ret = thr_pread_ptr(ta, ta->thread_last_event_addr, &pt_temp);
 if (ret != 0)
  return (TD_ERR);

 ret = ps_pread(ta->ph, pt + ta->thread_off_event_buf, msg, sizeof(*msg));
 if (ret != 0)
  return (P2T(ret));
 if (msg->event == 0)
  return (TD_NOMSG);




 if (pt == pt_temp)
  thr_pwrite_ptr(ta, ta->thread_last_event_addr, 0);


 tmp = 0;
 ps_pwrite(ta->ph, pt + ta->thread_off_event_buf, &tmp, sizeof(tmp));

 pt = msg->th_p;
 ret = thr_pread_long(ta, pt + ta->thread_off_tid, &lwp);
 if (ret != 0)
  return (TD_ERR);
 handle.th_ta = ta;
 handle.th_tid = lwp;
 handle.th_thread = pt;
 msg->th_p = (uintptr_t)&handle;
 return (0);
}
