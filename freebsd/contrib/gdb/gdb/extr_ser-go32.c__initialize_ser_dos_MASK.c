#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int inuse; } ;
struct TYPE_3__ {int /*<<< orphan*/  irq; int /*<<< orphan*/  base; } ;

/* Variables and functions */
 int /*<<< orphan*/  ICU_MASK ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  class_obscure ; 
 int /*<<< orphan*/  dos_info ; 
 int /*<<< orphan*/  dos_ops ; 
 int /*<<< orphan*/  icu_oldmask ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 TYPE_2__* intrupts ; 
 TYPE_1__* ports ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  setlist ; 
 int /*<<< orphan*/  showlist ; 
 int /*<<< orphan*/  var_zinteger ; 

void
FUNC5 (void)
{
  FUNC4 (&dos_ops);

  /* Save original interrupt mask register. */
  icu_oldmask = FUNC3 (ICU_MASK);

  /* Mark fixed motherboard irqs as inuse. */
  intrupts[0].inuse =		/* timer tick */
    intrupts[1].inuse =		/* keyboard */
    intrupts[2].inuse = 1;	/* slave icu */

  FUNC2 (
		      FUNC1 ("com1base", class_obscure, var_zinteger,
				   (char *) &ports[0].base,
				   "Set COM1 base i/o port address.",
				   &setlist),
		      &showlist);

  FUNC2 (
		      FUNC1 ("com1irq", class_obscure, var_zinteger,
				   (char *) &ports[0].irq,
				   "Set COM1 interrupt request.",
				   &setlist),
		      &showlist);

  FUNC2 (
		      FUNC1 ("com2base", class_obscure, var_zinteger,
				   (char *) &ports[1].base,
				   "Set COM2 base i/o port address.",
				   &setlist),
		      &showlist);

  FUNC2 (
		      FUNC1 ("com2irq", class_obscure, var_zinteger,
				   (char *) &ports[1].irq,
				   "Set COM2 interrupt request.",
				   &setlist),
		      &showlist);

  FUNC2 (
		      FUNC1 ("com3base", class_obscure, var_zinteger,
				   (char *) &ports[2].base,
				   "Set COM3 base i/o port address.",
				   &setlist),
		      &showlist);

  FUNC2 (
		      FUNC1 ("com3irq", class_obscure, var_zinteger,
				   (char *) &ports[2].irq,
				   "Set COM3 interrupt request.",
				   &setlist),
		      &showlist);

  FUNC2 (
		      FUNC1 ("com4base", class_obscure, var_zinteger,
				   (char *) &ports[3].base,
				   "Set COM4 base i/o port address.",
				   &setlist),
		      &showlist);

  FUNC2 (
		      FUNC1 ("com4irq", class_obscure, var_zinteger,
				   (char *) &ports[3].irq,
				   "Set COM4 interrupt request.",
				   &setlist),
		      &showlist);

  FUNC0 ("serial", dos_info,
	    "Print DOS serial port status.");
}