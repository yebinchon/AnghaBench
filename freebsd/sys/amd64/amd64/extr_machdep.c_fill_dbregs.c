
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {struct pcb* td_pcb; } ;
struct pcb {int pcb_dr7; int pcb_dr6; int pcb_dr3; int pcb_dr2; int pcb_dr1; int pcb_dr0; } ;
struct dbreg {int * dr; } ;


 int rdr0 () ;
 int rdr1 () ;
 int rdr2 () ;
 int rdr3 () ;
 int rdr6 () ;
 int rdr7 () ;

int
fill_dbregs(struct thread *td, struct dbreg *dbregs)
{
 struct pcb *pcb;

 if (td == ((void*)0)) {
  dbregs->dr[0] = rdr0();
  dbregs->dr[1] = rdr1();
  dbregs->dr[2] = rdr2();
  dbregs->dr[3] = rdr3();
  dbregs->dr[6] = rdr6();
  dbregs->dr[7] = rdr7();
 } else {
  pcb = td->td_pcb;
  dbregs->dr[0] = pcb->pcb_dr0;
  dbregs->dr[1] = pcb->pcb_dr1;
  dbregs->dr[2] = pcb->pcb_dr2;
  dbregs->dr[3] = pcb->pcb_dr3;
  dbregs->dr[6] = pcb->pcb_dr6;
  dbregs->dr[7] = pcb->pcb_dr7;
 }
 dbregs->dr[4] = 0;
 dbregs->dr[5] = 0;
 dbregs->dr[8] = 0;
 dbregs->dr[9] = 0;
 dbregs->dr[10] = 0;
 dbregs->dr[11] = 0;
 dbregs->dr[12] = 0;
 dbregs->dr[13] = 0;
 dbregs->dr[14] = 0;
 dbregs->dr[15] = 0;
 return (0);
}
