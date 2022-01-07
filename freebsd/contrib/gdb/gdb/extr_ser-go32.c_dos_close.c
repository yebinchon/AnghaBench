
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct serial {size_t fd; } ;
struct intrupt {int port; } ;
struct dos_ttystate {int baudrate; scalar_t__ fifo; scalar_t__ oflo; struct intrupt* intrupt; int refcnt; } ;


 int com_fifo ;
 int com_ier ;
 int com_mcr ;
 int disable () ;
 int dos_unhookirq (struct intrupt*) ;
 int enable () ;
 int fprintf_unfiltered (int ,char*,...) ;
 int gdb_stderr ;
 int outb (struct dos_ttystate*,int ,int ) ;
 struct dos_ttystate* ports ;

__attribute__((used)) static void
dos_close (struct serial *scb)
{
  struct dos_ttystate *port;
  struct intrupt *intrupt;

  if (!scb)
    return;

  port = &ports[scb->fd];

  if (port->refcnt-- > 1)
    return;

  if (!(intrupt = port->intrupt))
    return;


  disable ();
  port->intrupt = 0;
  intrupt->port = 0;
  outb (port, com_fifo, 0);
  outb (port, com_ier, 0);
  enable ();


  dos_unhookirq (intrupt);
  outb (port, com_mcr, 0);


  if (port->oflo)
    {
      fprintf_unfiltered (gdb_stderr,
     "Serial input overruns occurred.\n");
      fprintf_unfiltered (gdb_stderr, "This system %s handle %d baud.\n",
     port->fifo ? "cannot" : "needs a 16550 to",
     port->baudrate);
    }
}
