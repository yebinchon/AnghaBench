#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_5__ ;
typedef  struct TYPE_13__   TYPE_4__ ;
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct thread_map {int /*<<< orphan*/  thr_state; int /*<<< orphan*/  thr_lwpp; int /*<<< orphan*/  thr_tid; } ;
struct thread_info {TYPE_1__* private; } ;
typedef  scalar_t__ ptid_t ;
typedef  int /*<<< orphan*/  mapp ;
typedef  enum thread_change { ____Placeholder_thread_change } thread_change ;
typedef  int /*<<< orphan*/  change ;
struct TYPE_12__ {int lwp_id; } ;
typedef  TYPE_3__ __lwp_desc_t ;
struct TYPE_14__ {int /*<<< orphan*/  (* to_xfer_memory ) (scalar_t__,char*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *,TYPE_5__*) ;} ;
struct TYPE_13__ {TYPE_2__* private; } ;
struct TYPE_11__ {int stable; int lwpid; scalar_t__ mapp; } ;
struct TYPE_10__ {int /*<<< orphan*/  lwpid; } ;
typedef  scalar_t__ CORE_ADDR ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 scalar_t__ DECR_PC_AFTER_BREAK ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 scalar_t__ SP_ARG0 ; 
 int /*<<< orphan*/  SP_REGNUM ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int,scalar_t__,scalar_t__) ; 
 TYPE_5__ base_ops ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__) ; 
 char* FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (scalar_t__) ; 
 scalar_t__ FUNC9 () ; 
 struct thread_info* FUNC10 (int) ; 
 TYPE_4__* FUNC11 (scalar_t__) ; 
 scalar_t__ inferior_ptid ; 
 scalar_t__ null_ptid ; 
 scalar_t__ pid ; 
 int /*<<< orphan*/  FUNC12 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC14 (scalar_t__,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC15 (scalar_t__,struct thread_map*) ; 
 scalar_t__ FUNC16 (scalar_t__) ; 
 scalar_t__ FUNC17 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC18 (scalar_t__,char*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *,TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC19 (scalar_t__,char*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *,TYPE_5__*) ; 
 TYPE_4__* switchto_thread ; 
 int /*<<< orphan*/  FUNC20 (scalar_t__) ; 
#define  tc_cancel_complete 136 
#define  tc_invalid 135 
#define  tc_switch_begin 134 
#define  tc_switch_complete 133 
#define  tc_thread_continue 132 
#define  tc_thread_create 131 
#define  tc_thread_exit 130 
#define  tc_thread_suspend 129 
#define  tc_thread_suspend_pending 128 
 scalar_t__ thr_brk_addr ; 

__attribute__((used)) static void
FUNC21 (ptid_t ptid)
{
  CORE_ADDR sp, mapp, mapp_main;
  enum thread_change change;
  struct thread_map map;
  __lwp_desc_t lwp;
  int lwpid;
  ptid_t tid = null_ptid;
  struct thread_info *info;

  /* Check for stub breakpoint. */
  if (FUNC16 (ptid) - DECR_PC_AFTER_BREAK != thr_brk_addr)
    return;

  /* Retrieve stub args. */
  sp = FUNC17 (SP_REGNUM, ptid);
  if (!base_ops.to_xfer_memory (sp + SP_ARG0, (char *)&mapp,
				sizeof (mapp), 0, NULL, &base_ops))
    goto err;
  if (!base_ops.to_xfer_memory (sp + SP_ARG0 + sizeof (mapp), (char *)&change,
				sizeof (change), 0, NULL, &base_ops))
    goto err;

  /* create_inferior() may not have finished yet, so notice the main
     thread to ensure that it's displayed first by add_thread(). */
  mapp_main = FUNC9 ();

  /* Notice thread creation, deletion, or stability change. */
  switch (change) {
  case tc_switch_begin:
    if (!mapp)				/* usually means main thread */
      mapp = mapp_main;
    /* fall through */

  case tc_thread_create:
  case tc_thread_exit:
    if (!mapp)
      break;
    if (!FUNC15 (mapp, &map))
      goto err;
    tid = FUNC2 (FUNC3 (ptid), map.thr_tid);

    switch (change) {
    case tc_thread_create:		/* new thread */
      if (!map.thr_lwpp)
	lwpid = 0;
      else if (!FUNC14 ((CORE_ADDR)map.thr_lwpp, &lwp))
	goto err;
      else
	lwpid = lwp.lwp_id;
      FUNC4 (map.thr_tid, lwpid, mapp, tid);
      break;

    case tc_thread_exit:		/* thread has exited */
      FUNC12 ("[Exited %s]\n", FUNC20 (tid));
      FUNC8 (tid);
      if (FUNC13 (tid, inferior_ptid))
	inferior_ptid = ptid;
      break;

    case tc_switch_begin:		/* lwp is switching threads */
      if (switchto_thread)
	goto err;
      if (!(switchto_thread = FUNC11 (tid)))
	goto err;
      switchto_thread->private->stable = 0;
      break;

    default:
      break;
    }
    break;

  case tc_switch_complete:		/* lwp has switched threads */
  case tc_cancel_complete:		/* lwp didn't switch threads */
    if (!switchto_thread)
      goto err;

    if (change == tc_switch_complete)
      {
	/* If switchto_thread is the main thread, then (a) the corresponding
	   tc_switch_begin probably received a null map argument and therefore
	   (b) it may have been a spurious switch following a tc_thread_exit.

	   Therefore, explicitly query the thread's lwp before caching it in
	   its thread list entry. */

	if (!FUNC15 (switchto_thread->private->mapp, &map))
	  goto err;
	if (map.thr_lwpp)
	  {
	    if (!FUNC14 ((CORE_ADDR)map.thr_lwpp, &lwp))
	      goto err;
	    if ((info = FUNC10 (lwp.lwp_id)))
	      info->private->lwpid = 0;
	    switchto_thread->private->lwpid = lwp.lwp_id;
	  }
      }

    switchto_thread->private->stable = 1;
    switchto_thread = NULL;
    break;

  case tc_invalid:
  case tc_thread_suspend:
  case tc_thread_suspend_pending:
  case tc_thread_continue:
  err:
    FUNC0(("unexpected condition in libthread_stub()"));
    break;
  }

  FUNC1(("libthread_stub(%s): %s %s %s", FUNC6 (pid), FUNC6 (tid),
	FUNC5 (change), tid ? FUNC7 (map.thr_state) : ""));
}