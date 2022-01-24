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
struct thread_debug {int /*<<< orphan*/  thr_debug_on; scalar_t__ thr_brk; int /*<<< orphan*/  thr_map; } ;
struct minimal_symbol {int dummy; } ;
struct breakpoint {int dummy; } ;
typedef  int /*<<< orphan*/  one ;
struct TYPE_4__ {int /*<<< orphan*/  (* to_xfer_memory ) (scalar_t__,char*,int,int,int /*<<< orphan*/ *,TYPE_1__*) ;} ;
typedef  scalar_t__ CORE_ADDR ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct minimal_symbol*) ; 
 TYPE_1__ base_ops ; 
 struct breakpoint* FUNC1 (scalar_t__) ; 
 TYPE_1__ current_target ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (struct breakpoint*) ; 
 struct minimal_symbol* FUNC4 (char*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct thread_debug*) ; 
 int /*<<< orphan*/  FUNC8 (scalar_t__,char*,int,int,int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  target_has_execution ; 
 scalar_t__ thr_brk_addr ; 
 scalar_t__ thr_debug_addr ; 
 scalar_t__ thr_map_main ; 
 int uw_thread_active ; 
 int /*<<< orphan*/  uw_thread_ops ; 
 int /*<<< orphan*/  FUNC9 (char*) ; 

__attribute__((used)) static void
FUNC10 (void)
{
  struct minimal_symbol *ms;
  struct thread_debug debug;
  CORE_ADDR onp;
  struct breakpoint *b;
  int one = 1;

  /* Don't initialize twice. */
  if (uw_thread_active)
    return;

  /* Check whether libthread.so has been loaded. */
  if (!(ms = FUNC4 ("_thr_debug", NULL, NULL)))
    return;

  /* Cache _thr_debug's address. */
  if (!(thr_debug_addr = FUNC0 (ms)))
    return;

  /* Initialize base_ops.to_xfer_memory(). */
  base_ops = current_target;

  /* Load _thr_debug's current contents. */
  if (!FUNC7 (&debug))
    return;

  /* User code (e.g. my test programs) may dereference _thr_debug,
     making it availble to GDB before shared libs are loaded. */
  if (!debug.thr_map)
    return;

  /* libthread.so has been loaded, and the current_target should now
     reflect core_ops or procfs_ops. */
  FUNC6 (&uw_thread_ops);		/* must precede notice_threads() */
  uw_thread_active = 1;

  if (!target_has_execution)

    /* Locate threads in core file. */
    FUNC5 ();

  else
    {
      /* Set a breakpoint on the stub function provided by libthread.so. */
      thr_brk_addr = (CORE_ADDR)debug.thr_brk;
      if (!(b = FUNC1 (thr_brk_addr)))
	goto err;

      /* Activate the stub function. */
      onp = (CORE_ADDR)&((struct thread_debug *)thr_debug_addr)->thr_debug_on;
      if (!base_ops.to_xfer_memory ((CORE_ADDR)onp, (char *)&one,
				    sizeof (one), 1, NULL, &base_ops))
	{
	  FUNC3 (b);
	  goto err;
	}

      /* Prepare for finding the main thread, which doesn't yet exist. */
      thr_map_main = 0;
    }

  return;

 err:
  FUNC9 ("uw-thread: unable to initialize user-mode thread debugging\n");
  FUNC2 ();
}