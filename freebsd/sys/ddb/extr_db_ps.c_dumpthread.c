
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct thread {int td_state; int td_flags; char* td_lockname; char* td_wmesg; int td_oncpu; char* td_name; TYPE_1__* td_proc; void* td_wchan; void* td_blocked; int td_tid; } ;
struct proc {int p_flag; } ;
typedef int state ;
struct TYPE_2__ {int p_comm; } ;


 scalar_t__ PRINT_ARGS ;
 int P_SYSTEM ;
 int TDF_SINTR ;





 int TD_AWAITING_INTR (struct thread volatile*) ;
 scalar_t__ TD_IS_RUNNING (struct thread volatile*) ;
 int TD_IS_SLEEPING (struct thread volatile*) ;
 int TD_IS_SUSPENDED (struct thread volatile*) ;
 int TD_IS_SWAPPED (struct thread volatile*) ;
 scalar_t__ TD_ON_LOCK (struct thread volatile*) ;
 scalar_t__ TD_ON_SLEEPQ (struct thread volatile*) ;
 int db_printf (char*,...) ;
 int dump_args (struct proc volatile*) ;
 scalar_t__ ps_mode ;
 int snprintf (char*,int,char*,...) ;
 int strlcat (char*,char*,int) ;

__attribute__((used)) static void
dumpthread(volatile struct proc *p, volatile struct thread *td, int all)
{
 char state[9], wprefix;
 const char *wmesg;
 void *wchan;

 if (all) {
  db_printf("%6d                  ", td->td_tid);
  switch (td->td_state) {
  case 129:
   snprintf(state, sizeof(state), "Run");
   break;
  case 128:
   snprintf(state, sizeof(state), "RunQ");
   break;
  case 132:
   snprintf(state, sizeof(state), "CanRun");
   break;
  case 131:
   snprintf(state, sizeof(state), "Inactv");
   break;
  case 130:
   state[0] = '\0';
   if (TD_ON_LOCK(td))
    strlcat(state, "L", sizeof(state));
   if (TD_IS_SLEEPING(td)) {
    if (td->td_flags & TDF_SINTR)
     strlcat(state, "S", sizeof(state));
    else
     strlcat(state, "D", sizeof(state));
   }
   if (TD_IS_SWAPPED(td))
    strlcat(state, "W", sizeof(state));
   if (TD_AWAITING_INTR(td))
    strlcat(state, "I", sizeof(state));
   if (TD_IS_SUSPENDED(td))
    strlcat(state, "s", sizeof(state));
   if (state[0] != '\0')
    break;
  default:
   snprintf(state, sizeof(state), "???");
  }
  db_printf(" %-6.6s ", state);
 }
 wprefix = ' ';
 if (TD_ON_LOCK(td)) {
  wprefix = '*';
  wmesg = td->td_lockname;
  wchan = td->td_blocked;
 } else if (TD_ON_SLEEPQ(td)) {
  wmesg = td->td_wmesg;
  wchan = td->td_wchan;
 } else if (TD_IS_RUNNING(td)) {
  snprintf(state, sizeof(state), "CPU %d", td->td_oncpu);
  wmesg = state;
  wchan = ((void*)0);
 } else {
  wmesg = "";
  wchan = ((void*)0);
 }
 db_printf("%c%-7.7s ", wprefix, wmesg);
 if (wchan == ((void*)0))

  db_printf("%18s  ", "");



 else
  db_printf("%p  ", wchan);
 if (p->p_flag & P_SYSTEM)
  db_printf("[");
 if (td->td_name[0] != '\0')
  db_printf("%s", td->td_name);
 else
  db_printf("%s", td->td_proc->p_comm);
 if (p->p_flag & P_SYSTEM)
  db_printf("]");
 if (ps_mode == PRINT_ARGS && all == 0) {
  db_printf(" ");
  dump_args(p);
 }
 db_printf("\n");
}
