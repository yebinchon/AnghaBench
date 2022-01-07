
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct minimal_symbol {int dummy; } ;
struct cleanup {int dummy; } ;
typedef int CORE_ADDR ;


 unsigned int DLD_FLAGS_HOOKVALID ;
 int SYMBOL_VALUE_ADDRESS (struct minimal_symbol*) ;
 int do_cleanups (struct cleanup*) ;
 unsigned int extract_unsigned_integer (char*,int) ;
 int inferior_ptid ;
 struct minimal_symbol* lookup_minimal_symbol (char*,int *,int *) ;
 int pid_to_ptid (int) ;
 struct cleanup* save_inferior_ptid () ;
 int store_unsigned_integer (char*,int,unsigned int) ;
 int target_read_memory (int ,char*,int) ;
 int target_write_memory (int ,char*,int) ;

void
som_solib_remove_inferior_hook (int pid)
{
  CORE_ADDR addr;
  struct minimal_symbol *msymbol;
  int status;
  char dld_flags_buffer[4];
  unsigned int dld_flags_value;
  struct cleanup *old_cleanups = save_inferior_ptid ();


  inferior_ptid = pid_to_ptid (pid);
  msymbol = lookup_minimal_symbol ("__dld_flags", ((void*)0), ((void*)0));

  addr = SYMBOL_VALUE_ADDRESS (msymbol);
  status = target_read_memory (addr, dld_flags_buffer, 4);

  dld_flags_value = extract_unsigned_integer (dld_flags_buffer, 4);

  dld_flags_value &= ~DLD_FLAGS_HOOKVALID;
  store_unsigned_integer (dld_flags_buffer, 4, dld_flags_value);
  status = target_write_memory (addr, dld_flags_buffer, 4);

  do_cleanups (old_cleanups);
}
