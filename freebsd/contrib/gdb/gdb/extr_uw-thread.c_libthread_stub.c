
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct thread_map {int thr_state; int thr_lwpp; int thr_tid; } ;
struct thread_info {TYPE_1__* private; } ;
typedef scalar_t__ ptid_t ;
typedef int mapp ;
typedef enum thread_change { ____Placeholder_thread_change } thread_change ;
typedef int change ;
struct TYPE_12__ {int lwp_id; } ;
typedef TYPE_3__ __lwp_desc_t ;
struct TYPE_14__ {int (* to_xfer_memory ) (scalar_t__,char*,int,int ,int *,TYPE_5__*) ;} ;
struct TYPE_13__ {TYPE_2__* private; } ;
struct TYPE_11__ {int stable; int lwpid; scalar_t__ mapp; } ;
struct TYPE_10__ {int lwpid; } ;
typedef scalar_t__ CORE_ADDR ;


 int DBG (char*) ;
 int DBG2 (char*) ;
 scalar_t__ DECR_PC_AFTER_BREAK ;
 scalar_t__ MKTID (int ,int ) ;
 int PIDGET (scalar_t__) ;
 scalar_t__ SP_ARG0 ;
 int SP_REGNUM ;
 int add_thread_uw (int ,int,scalar_t__,scalar_t__) ;
 TYPE_5__ base_ops ;
 int dbgchange (int) ;
 int dbgpid (scalar_t__) ;
 char* dbgstate (int ) ;
 int delete_thread (scalar_t__) ;
 scalar_t__ find_main () ;
 struct thread_info* find_thread_lwp (int) ;
 TYPE_4__* find_thread_pid (scalar_t__) ;
 scalar_t__ inferior_ptid ;
 scalar_t__ null_ptid ;
 scalar_t__ pid ;
 int printf_unfiltered (char*,int ) ;
 int ptid_equal (scalar_t__,scalar_t__) ;
 int read_lwp (scalar_t__,TYPE_3__*) ;
 int read_map (scalar_t__,struct thread_map*) ;
 scalar_t__ read_pc_pid (scalar_t__) ;
 scalar_t__ read_register_pid (int ,scalar_t__) ;
 int stub1 (scalar_t__,char*,int,int ,int *,TYPE_5__*) ;
 int stub2 (scalar_t__,char*,int,int ,int *,TYPE_5__*) ;
 TYPE_4__* switchto_thread ;
 int target_pid_to_str (scalar_t__) ;
 scalar_t__ thr_brk_addr ;

__attribute__((used)) static void
libthread_stub (ptid_t ptid)
{
  CORE_ADDR sp, mapp, mapp_main;
  enum thread_change change;
  struct thread_map map;
  __lwp_desc_t lwp;
  int lwpid;
  ptid_t tid = null_ptid;
  struct thread_info *info;


  if (read_pc_pid (ptid) - DECR_PC_AFTER_BREAK != thr_brk_addr)
    return;


  sp = read_register_pid (SP_REGNUM, ptid);
  if (!base_ops.to_xfer_memory (sp + SP_ARG0, (char *)&mapp,
    sizeof (mapp), 0, ((void*)0), &base_ops))
    goto err;
  if (!base_ops.to_xfer_memory (sp + SP_ARG0 + sizeof (mapp), (char *)&change,
    sizeof (change), 0, ((void*)0), &base_ops))
    goto err;



  mapp_main = find_main ();


  switch (change) {
  case 134:
    if (!mapp)
      mapp = mapp_main;


  case 131:
  case 130:
    if (!mapp)
      break;
    if (!read_map (mapp, &map))
      goto err;
    tid = MKTID (PIDGET (ptid), map.thr_tid);

    switch (change) {
    case 131:
      if (!map.thr_lwpp)
 lwpid = 0;
      else if (!read_lwp ((CORE_ADDR)map.thr_lwpp, &lwp))
 goto err;
      else
 lwpid = lwp.lwp_id;
      add_thread_uw (map.thr_tid, lwpid, mapp, tid);
      break;

    case 130:
      printf_unfiltered ("[Exited %s]\n", target_pid_to_str (tid));
      delete_thread (tid);
      if (ptid_equal (tid, inferior_ptid))
 inferior_ptid = ptid;
      break;

    case 134:
      if (switchto_thread)
 goto err;
      if (!(switchto_thread = find_thread_pid (tid)))
 goto err;
      switchto_thread->private->stable = 0;
      break;

    default:
      break;
    }
    break;

  case 133:
  case 136:
    if (!switchto_thread)
      goto err;

    if (change == 133)
      {







 if (!read_map (switchto_thread->private->mapp, &map))
   goto err;
 if (map.thr_lwpp)
   {
     if (!read_lwp ((CORE_ADDR)map.thr_lwpp, &lwp))
       goto err;
     if ((info = find_thread_lwp (lwp.lwp_id)))
       info->private->lwpid = 0;
     switchto_thread->private->lwpid = lwp.lwp_id;
   }
      }

    switchto_thread->private->stable = 1;
    switchto_thread = ((void*)0);
    break;

  case 135:
  case 129:
  case 128:
  case 132:
  err:
    DBG(("unexpected condition in libthread_stub()"));
    break;
  }

  DBG2(("libthread_stub(%s): %s %s %s", dbgpid (pid), dbgpid (tid),
 dbgchange (change), tid ? dbgstate (map.thr_state) : ""));
}
