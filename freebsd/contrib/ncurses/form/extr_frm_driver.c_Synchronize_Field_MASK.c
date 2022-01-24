#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
struct TYPE_12__ {scalar_t__ opts; TYPE_1__* form; } ;
struct TYPE_11__ {int /*<<< orphan*/  w; scalar_t__ begincol; scalar_t__ toprow; scalar_t__ curcol; scalar_t__ currow; TYPE_2__* current; } ;
typedef  TYPE_1__ FORM ;
typedef  TYPE_2__ FIELD ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int FUNC1 (TYPE_2__*) ; 
 int E_BAD_ARGUMENT ; 
 int E_OK ; 
 scalar_t__ FUNC2 (TYPE_2__*) ; 
 scalar_t__ FUNC3 (TYPE_2__*) ; 
 unsigned int O_PUBLIC ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  _CHANGED ; 
 int /*<<< orphan*/  _NEWTOP ; 
 int FUNC6 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC8(FIELD *field)
{
  FORM *form;
  int res = E_OK;

  if (!field)
    return (E_BAD_ARGUMENT);

  if (((form = field->form) != (FORM *)0)
      && FUNC2(field))
    {
      if (field == form->current)
	{
	  form->currow = form->curcol = form->toprow = form->begincol = 0;
	  FUNC7(form->w);

	  if (((unsigned)field->opts & O_PUBLIC) && FUNC3(field))
	    FUNC5(field, form->w);
	  else
	    FUNC0(field, form->w);

	  FUNC4(field, _NEWTOP);
	  res = FUNC6(form);
	}
      else
	res = FUNC1(field);
    }
  FUNC4(field, _CHANGED);
  return (res);
}