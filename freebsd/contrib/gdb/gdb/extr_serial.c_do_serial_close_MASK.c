#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct serial {scalar_t__ refcnt; struct serial* next; struct serial* name; TYPE_1__* ops; int /*<<< orphan*/ * async_handler; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* close ) (struct serial*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * last_serial_opened ; 
 struct serial* scb_base ; 
 int /*<<< orphan*/  FUNC1 (struct serial*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ serial_current_type ; 
 int /*<<< orphan*/ * serial_logfp ; 
 int /*<<< orphan*/  FUNC2 (struct serial*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct serial*) ; 

__attribute__((used)) static void
FUNC5 (struct serial *scb, int really_close)
{
  struct serial *tmp_scb;

  last_serial_opened = NULL;

  if (serial_logfp)
    {
      FUNC0 ("\nEnd of log\n", serial_logfp);
      serial_current_type = 0;

      /* XXX - What if serial_logfp == gdb_stdout or gdb_stderr? */
      FUNC3 (serial_logfp);
      serial_logfp = NULL;
    }

/* This is bogus.  It's not our fault if you pass us a bad scb...!  Rob, you
   should fix your code instead.  */

  if (!scb)
    return;

  scb->refcnt--;
  if (scb->refcnt > 0)
    return;

  /* ensure that the FD has been taken out of async mode */
  if (scb->async_handler != NULL)
    FUNC1 (scb, NULL, NULL);

  if (really_close)
    scb->ops->close (scb);

  if (scb->name)
    FUNC4 (scb->name);

  if (scb_base == scb)
    scb_base = scb_base->next;
  else
    for (tmp_scb = scb_base; tmp_scb; tmp_scb = tmp_scb->next)
      {
	if (tmp_scb->next != scb)
	  continue;

	tmp_scb->next = tmp_scb->next->next;
	break;
      }

  FUNC4 (scb);
}