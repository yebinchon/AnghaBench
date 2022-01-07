
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kthr {int tid; } ;
typedef scalar_t__ CORE_ADDR ;


 int PINKERNEL (scalar_t__) ;
 int error (char*) ;
 int error_no_arg (char*) ;
 int kgdb_switch_to_thread (int ) ;
 struct kthr* kgdb_thr_lookup_paddr (scalar_t__) ;
 struct kthr* kgdb_thr_lookup_pid (int) ;
 int * kvm ;
 scalar_t__ parse_and_eval_address (char*) ;

__attribute__((used)) static void
kgdb_set_proc_cmd (char *arg, int from_tty)
{
 CORE_ADDR addr;
 struct kthr *thr;

 if (!arg)
  error_no_arg ("proc address for the new context");

 if (kvm == ((void*)0))
  error ("only supported for core file target");

 addr = (CORE_ADDR) parse_and_eval_address (arg);

 if (!PINKERNEL (addr)) {
  thr = kgdb_thr_lookup_pid((int)addr);
  if (thr == ((void*)0))
   error ("invalid pid");
 } else {
  thr = kgdb_thr_lookup_paddr(addr);
  if (thr == ((void*)0))
   error("invalid proc address");
 }
 kgdb_switch_to_thread(thr->tid);
}
