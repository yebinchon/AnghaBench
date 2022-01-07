
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int td ;
struct thread {scalar_t__ td_tid; scalar_t__ td_oncpu; int p_pid; int td_kstack; scalar_t__ td_pcb; int p_threads; } ;
struct proc {scalar_t__ td_tid; scalar_t__ td_oncpu; int p_pid; int td_kstack; scalar_t__ td_pcb; int p_threads; } ;
struct kthr {uintptr_t kaddr; uintptr_t pcb; scalar_t__ tid; uintptr_t paddr; scalar_t__ cpu; int pid; int kstack; struct kthr* next; } ;
typedef int p ;
typedef uintptr_t CORE_ADDR ;


 scalar_t__ CPU_ISSET (scalar_t__,int *) ;
 scalar_t__ LIST_NEXT (struct thread*,int ) ;
 scalar_t__ NOCPU ;
 scalar_t__ TAILQ_FIRST (int *) ;
 scalar_t__ TAILQ_NEXT (struct thread*,int ) ;
 uintptr_t dumppcb ;
 scalar_t__ dumptid ;
 struct kthr* first ;
 uintptr_t kgdb_trgt_core_pcb (scalar_t__) ;
 int kvm ;
 int kvm_geterr (int ) ;
 int kvm_read (int ,uintptr_t,struct thread*,int) ;
 struct kthr* malloc (int) ;
 int p_list ;
 int stopped_cpus ;
 int td_plist ;
 int warnx (char*,int ) ;

__attribute__((used)) static void
kgdb_thr_add_procs(uintptr_t paddr)
{
 struct proc p;
 struct thread td;
 struct kthr *kt;
 CORE_ADDR addr;

 while (paddr != 0) {
  if (kvm_read(kvm, paddr, &p, sizeof(p)) != sizeof(p)) {
   warnx("kvm_read: %s", kvm_geterr(kvm));
   break;
  }
  addr = (uintptr_t)TAILQ_FIRST(&p.p_threads);
  while (addr != 0) {
   if (kvm_read(kvm, addr, &td, sizeof(td)) !=
       sizeof(td)) {
    warnx("kvm_read: %s", kvm_geterr(kvm));
    break;
   }
   kt = malloc(sizeof(*kt));
   kt->next = first;
   kt->kaddr = addr;
   if (td.td_tid == dumptid)
    kt->pcb = dumppcb;
   else if (td.td_oncpu != NOCPU &&
       CPU_ISSET(td.td_oncpu, &stopped_cpus))
    kt->pcb = kgdb_trgt_core_pcb(td.td_oncpu);
   else
    kt->pcb = (uintptr_t)td.td_pcb;
   kt->kstack = td.td_kstack;
   kt->tid = td.td_tid;
   kt->pid = p.p_pid;
   kt->paddr = paddr;
   kt->cpu = td.td_oncpu;
   first = kt;
   addr = (uintptr_t)TAILQ_NEXT(&td, td_plist);
  }
  paddr = (uintptr_t)LIST_NEXT(&p, p_list);
 }
}
