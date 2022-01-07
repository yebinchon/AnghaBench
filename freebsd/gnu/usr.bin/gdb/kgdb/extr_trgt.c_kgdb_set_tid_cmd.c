
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kthr {scalar_t__ tid; } ;
typedef scalar_t__ CORE_ADDR ;


 scalar_t__ PINKERNEL (scalar_t__) ;
 int error (char*) ;
 int error_no_arg (char*) ;
 int kgdb_switch_to_thread (scalar_t__) ;
 struct kthr* kgdb_thr_lookup_taddr (scalar_t__) ;
 int * kvm ;
 scalar_t__ parse_and_eval_address (char*) ;

__attribute__((used)) static void
kgdb_set_tid_cmd (char *arg, int from_tty)
{
 CORE_ADDR addr;
 struct kthr *thr;

 if (!arg)
  error_no_arg ("TID or thread address for the new context");

 addr = (CORE_ADDR) parse_and_eval_address (arg);

 if (kvm != ((void*)0) && PINKERNEL (addr)) {
  thr = kgdb_thr_lookup_taddr(addr);
  if (thr == ((void*)0))
   error("invalid thread address");
  addr = thr->tid;
 }
 kgdb_switch_to_thread(addr);
}
