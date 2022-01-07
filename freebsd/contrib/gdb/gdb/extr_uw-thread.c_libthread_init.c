
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct thread_debug {int thr_debug_on; scalar_t__ thr_brk; int thr_map; } ;
struct minimal_symbol {int dummy; } ;
struct breakpoint {int dummy; } ;
typedef int one ;
struct TYPE_4__ {int (* to_xfer_memory ) (scalar_t__,char*,int,int,int *,TYPE_1__*) ;} ;
typedef scalar_t__ CORE_ADDR ;


 scalar_t__ SYMBOL_VALUE_ADDRESS (struct minimal_symbol*) ;
 TYPE_1__ base_ops ;
 struct breakpoint* create_thread_event_breakpoint (scalar_t__) ;
 TYPE_1__ current_target ;
 int deactivate_uw_thread () ;
 int delete_breakpoint (struct breakpoint*) ;
 struct minimal_symbol* lookup_minimal_symbol (char*,int *,int *) ;
 int notice_threads () ;
 int push_target (int *) ;
 int read_thr_debug (struct thread_debug*) ;
 int stub1 (scalar_t__,char*,int,int,int *,TYPE_1__*) ;
 int target_has_execution ;
 scalar_t__ thr_brk_addr ;
 scalar_t__ thr_debug_addr ;
 scalar_t__ thr_map_main ;
 int uw_thread_active ;
 int uw_thread_ops ;
 int warning (char*) ;

__attribute__((used)) static void
libthread_init (void)
{
  struct minimal_symbol *ms;
  struct thread_debug debug;
  CORE_ADDR onp;
  struct breakpoint *b;
  int one = 1;


  if (uw_thread_active)
    return;


  if (!(ms = lookup_minimal_symbol ("_thr_debug", ((void*)0), ((void*)0))))
    return;


  if (!(thr_debug_addr = SYMBOL_VALUE_ADDRESS (ms)))
    return;


  base_ops = current_target;


  if (!read_thr_debug (&debug))
    return;



  if (!debug.thr_map)
    return;



  push_target (&uw_thread_ops);
  uw_thread_active = 1;

  if (!target_has_execution)


    notice_threads ();

  else
    {

      thr_brk_addr = (CORE_ADDR)debug.thr_brk;
      if (!(b = create_thread_event_breakpoint (thr_brk_addr)))
 goto err;


      onp = (CORE_ADDR)&((struct thread_debug *)thr_debug_addr)->thr_debug_on;
      if (!base_ops.to_xfer_memory ((CORE_ADDR)onp, (char *)&one,
        sizeof (one), 1, ((void*)0), &base_ops))
 {
   delete_breakpoint (b);
   goto err;
 }


      thr_map_main = 0;
    }

  return;

 err:
  warning ("uw-thread: unable to initialize user-mode thread debugging\n");
  deactivate_uw_thread ();
}
