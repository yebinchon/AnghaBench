
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_8__ ;
typedef struct TYPE_15__ TYPE_7__ ;
typedef struct TYPE_14__ TYPE_6__ ;
typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct unwind_table_entry {int dummy; } ;
struct TYPE_14__ {struct unwind_table_entry* unwind; } ;
struct TYPE_13__ {struct unwind_table_entry* unwind; } ;
struct TYPE_12__ {struct unwind_table_entry* unwind; } ;
struct TYPE_11__ {struct unwind_table_entry* unwind; } ;
struct TYPE_10__ {struct unwind_table_entry* unwind; } ;
struct TYPE_9__ {struct unwind_table_entry* unwind; } ;
struct TYPE_15__ {struct unwind_table_entry* unwind; } ;
struct TYPE_16__ {TYPE_6__ unload_stub; TYPE_5__ load_stub; TYPE_4__ unload2; TYPE_3__ unload; TYPE_2__ load; TYPE_1__ hook_stub; TYPE_7__ hook; } ;
typedef int CORE_ADDR ;


 TYPE_8__ dld_cache ;
 struct unwind_table_entry* find_unwind_entry (int) ;
 int som_solib_desire_dynamic_linker_symbols () ;

int
som_solib_in_dynamic_linker (int pid, CORE_ADDR pc)
{
  struct unwind_table_entry *u_pc;
  if ((pc & (CORE_ADDR) 0xc0000000) == (CORE_ADDR) 0xc0000000)
    return 1;




  som_solib_desire_dynamic_linker_symbols ();


  u_pc = find_unwind_entry (pc);
  if (u_pc == ((void*)0))
    return 0;

  if ((u_pc == dld_cache.hook.unwind) || (u_pc == dld_cache.hook_stub.unwind))
    return 1;


  if ((u_pc == dld_cache.load.unwind)
      || (u_pc == dld_cache.unload.unwind)
      || (u_pc == dld_cache.unload2.unwind)
      || (u_pc == dld_cache.load_stub.unwind)
      || (u_pc == dld_cache.unload_stub.unwind))
    return 1;


  return 0;
}
