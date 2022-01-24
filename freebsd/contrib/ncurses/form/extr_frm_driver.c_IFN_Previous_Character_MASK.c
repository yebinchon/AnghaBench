#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {scalar_t__ currow; int curcol; TYPE_1__* current; int /*<<< orphan*/  w; } ;
struct TYPE_4__ {int dcols; } ;
typedef  TYPE_2__ FORM ;

/* Variables and functions */
 int /*<<< orphan*/  E_OK ; 
 int /*<<< orphan*/  E_REQUEST_DENIED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int FUNC2 (int /*<<< orphan*/ ,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC4(FORM *form)
{
  int amount = FUNC2(form->w, form->currow, form->curcol - 1);
  int oldcol = form->curcol;

  FUNC0((FUNC1("IFN_Previous_Character(%p)"), (void *)form));
  if ((form->curcol -= amount) < 0)
    {
      if ((--(form->currow)) < 0)
	{
	  form->currow++;
	  form->curcol = oldcol;
	  FUNC3(E_REQUEST_DENIED);
	}
      form->curcol = form->current->dcols - 1;
    }
  FUNC3(E_OK);
}