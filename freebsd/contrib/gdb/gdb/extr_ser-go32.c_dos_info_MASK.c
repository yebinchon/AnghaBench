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
struct dos_ttystate {long base; char* irq; int /*<<< orphan*/  oflo; int /*<<< orphan*/  perr; int /*<<< orphan*/  ferr; int /*<<< orphan*/  baudrate; scalar_t__ fifo; scalar_t__ intrupt; } ;

/* Variables and functions */
 int NCNT ; 
 long* cntnames ; 
 char** cnts ; 
 int /*<<< orphan*/  intrcnt ; 
 struct dos_ttystate* ports ; 
 int /*<<< orphan*/  FUNC0 (char*,...) ; 

__attribute__((used)) static void
FUNC1 (char *arg, int from_tty)
{
  struct dos_ttystate *port;
#ifdef DOS_STATS
  int i;
#endif

  for (port = ports; port < &ports[4]; port++)
    {
      if (port->baudrate == 0)
	continue;
      FUNC0 ("Port:\tCOM%ld (%sactive)\n", (long)(port - ports) + 1,
		       port->intrupt ? "" : "not ");
      FUNC0 ("Addr:\t0x%03x (irq %d)\n", port->base, port->irq);
      FUNC0 ("16550:\t%s\n", port->fifo ? "yes" : "no");
      FUNC0 ("Speed:\t%d baud\n", port->baudrate);
      FUNC0 ("Errs:\tframing %d parity %d overflow %d\n\n",
		       port->ferr, port->perr, port->oflo);
    }

#ifdef DOS_STATS
  printf_filtered ("\nTotal interrupts: %d\n", intrcnt);
  for (i = 0; i < NCNT; i++)
    if (cnts[i])
      printf_filtered ("%s:\t%d\n", cntnames[i], cnts[i]);
#endif
}