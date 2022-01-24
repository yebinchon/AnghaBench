#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct serial {size_t fd; } ;
struct intrupt {int /*<<< orphan*/  port; } ;
struct dos_ttystate {int /*<<< orphan*/  baudrate; scalar_t__ fifo; scalar_t__ oflo; struct intrupt* intrupt; int /*<<< orphan*/  refcnt; } ;

/* Variables and functions */
 int /*<<< orphan*/  com_fifo ; 
 int /*<<< orphan*/  com_ier ; 
 int /*<<< orphan*/  com_mcr ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (struct intrupt*) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  gdb_stderr ; 
 int /*<<< orphan*/  FUNC4 (struct dos_ttystate*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct dos_ttystate* ports ; 

__attribute__((used)) static void
FUNC5 (struct serial *scb)
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

  /* disable interrupts, fifo, flow control */
  FUNC0 ();
  port->intrupt = 0;
  intrupt->port = 0;
  FUNC4 (port, com_fifo, 0);
  FUNC4 (port, com_ier, 0);
  FUNC2 ();

  /* unhook handler, and disable interrupt gate */
  FUNC1 (intrupt);
  FUNC4 (port, com_mcr, 0);

  /* Check for overflow errors */
  if (port->oflo)
    {
      FUNC3 (gdb_stderr,
			  "Serial input overruns occurred.\n");
      FUNC3 (gdb_stderr, "This system %s handle %d baud.\n",
			  port->fifo ? "cannot" : "needs a 16550 to",
			  port->baudrate);
    }
}