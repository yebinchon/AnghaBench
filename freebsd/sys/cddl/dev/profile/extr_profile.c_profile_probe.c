
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ uintfptr_t ;
struct trapframe {int dummy; } ;
struct thread {struct trapframe* td_intr_frame; } ;
struct TYPE_3__ {int prof_id; } ;
typedef TYPE_1__ profile_probe_t ;
typedef int hrtime_t ;


 scalar_t__ TD_IS_IDLETHREAD (struct thread*) ;
 scalar_t__ TRAPF_PC (struct trapframe*) ;
 scalar_t__ TRAPF_USERMODE (struct trapframe*) ;
 int cpu_idle ;
 struct thread* curthread ;
 int dtrace_probe (int ,scalar_t__,scalar_t__,int ,int ,int ) ;

__attribute__((used)) static void
profile_probe(profile_probe_t *prof, hrtime_t late)
{
 struct thread *td;
 struct trapframe *frame;
 uintfptr_t pc, upc;

 td = curthread;
 pc = upc = 0;







 frame = td->td_intr_frame;
 if (frame != ((void*)0)) {
  if (TRAPF_USERMODE(frame))
   upc = TRAPF_PC(frame);
  else
   pc = TRAPF_PC(frame);
 } else if (TD_IS_IDLETHREAD(td))
  pc = (uintfptr_t)&cpu_idle;

 dtrace_probe(prof->prof_id, pc, upc, late, 0, 0);
}
