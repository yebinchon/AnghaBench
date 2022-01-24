#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  WINDOW ;
struct TYPE_8__ {scalar_t__ opts; int /*<<< orphan*/  fcol; int /*<<< orphan*/  frow; int /*<<< orphan*/  cols; int /*<<< orphan*/  rows; int /*<<< orphan*/  form; } ;
typedef  TYPE_1__ FIELD ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int E_OK ; 
 int E_SYSTEM_ERROR ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (TYPE_1__*) ; 
 unsigned int O_PUBLIC ; 
 unsigned int O_VISIBLE ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  _NEWTOP ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC12(FIELD *field, bool bEraseFlag)
{
  WINDOW *win;
  WINDOW *fwin;

  if (!field)
    return E_SYSTEM_ERROR;

  fwin = FUNC2(field->form);
  win = FUNC8(fwin,
	       field->rows, field->cols, field->frow, field->fcol);

  if (!win)
    return E_SYSTEM_ERROR;
  else
    {
      if ((unsigned)field->opts & O_VISIBLE)
	{
	  FUNC5(field, win);
	}
      else
	{
	  (void)FUNC9(win, (int)FUNC6(fwin));
	}
      FUNC10(win);
    }

  if (!bEraseFlag)
    {
      if ((unsigned)field->opts & O_PUBLIC)
	{
	  if (FUNC3(field))
	    FUNC4(field, win);
	  else
	    FUNC0(field, win);
	}
      FUNC1(field, _NEWTOP);
    }
  FUNC11(win);
  FUNC7(win);
  return E_OK;
}