#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {int cols; int /*<<< orphan*/  dcols; } ;
struct TYPE_9__ {scalar_t__ curcol; int currow; int status; int /*<<< orphan*/  w; TYPE_2__* current; } ;
typedef  TYPE_1__ FORM ;
typedef  int /*<<< orphan*/  FIELD_CELL ;
typedef  TYPE_2__ FIELD ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  E_OK ; 
 int /*<<< orphan*/  E_REQUEST_DENIED ; 
 scalar_t__ FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 int _OVLMODE ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int,scalar_t__) ; 

__attribute__((used)) static int
FUNC12(FORM *form)
{
  FIELD *field = form->current;

  FUNC6((FUNC7("FE_Delete_Previous(%p)"), (void *)form));
  if (FUNC4(form))
    FUNC9(E_REQUEST_DENIED);

  if ((--(form->curcol)) < 0)
    {
      FIELD_CELL *this_line, *prev_line, *prev_end, *this_end;
      int this_row = form->currow;

      form->curcol++;
      if (form->status & _OVLMODE)
	FUNC9(E_REQUEST_DENIED);

      prev_line = FUNC0(field, (form->currow - 1));
      this_line = FUNC0(field, (form->currow));
      FUNC5(form);
      prev_end = FUNC2(prev_line, field->dcols);
      this_end = FUNC2(this_line, field->dcols);
      if ((int)(this_end - this_line) >
	  (field->cols - (int)(prev_end - prev_line)))
	FUNC9(E_REQUEST_DENIED);
      FUNC11(form->w, form->currow, form->curcol);
      FUNC10(form->w);
      FUNC1(form, prev_end);
      /*
       * If we did not really move to the previous line, help the user a
       * little.  It is however a little inconsistent.  Normally, when
       * backspacing around the point where text wraps to a new line in a
       * multi-line form, we absorb one keystroke for the wrapping point.  That
       * is consistent with SVr4 forms.  However, SVr4 does not allow typing
       * into the last column of the field, and requires the user to enter a
       * newline to move to the next line.  Therefore it can consistently eat
       * that keystroke.  Since ncurses allows the last column, it wraps
       * automatically (given the proper options).  But we cannot eat the
       * keystroke to back over the wrapping point, since that would put the
       * cursor past the end of the form field.  In this case, just delete the
       * character at the end of the field.
       */
      if (form->currow == this_row && this_row > 0)
	{
	  form->currow -= 1;
	  form->curcol = field->dcols - 1;
	  FUNC3(form);
	}
      else
	{
	  FUNC11(form->w, form->currow, form->curcol);
	  FUNC8(form->w, this_line, (int)(this_end - this_line));
	}
    }
  else
    {
      FUNC3(form);
    }
  FUNC9(E_OK);
}