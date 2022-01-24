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
struct TYPE_12__ {int drows; scalar_t__ dcols; } ;
struct TYPE_11__ {int currow; int status; int /*<<< orphan*/  w; scalar_t__ curcol; scalar_t__ opts; TYPE_2__* current; } ;
typedef  TYPE_1__ FORM ;
typedef  int /*<<< orphan*/  FIELD_CELL ;
typedef  TYPE_2__ FIELD ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  E_OK ; 
 int /*<<< orphan*/  E_REQUEST_DENIED ; 
 int /*<<< orphan*/  E_SYSTEM_ERROR ; 
 int /*<<< orphan*/  FN_Next_Field ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,int) ; 
 scalar_t__ FUNC3 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 scalar_t__ FUNC5 (TYPE_1__*) ; 
 unsigned int O_NL_OVERLOAD ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (char*) ; 
 int _OVLMODE ; 
 int /*<<< orphan*/  _WINDOW_MODIFIED ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,int,scalar_t__) ; 

__attribute__((used)) static int
FUNC15(FORM *form)
{
  FIELD *field = form->current;
  FIELD_CELL *bp, *t;
  bool Last_Row = ((field->drows - 1) == form->currow);

  FUNC8((FUNC9("FE_New_Line(%p)"), (void *)form));
  if (form->status & _OVLMODE)
    {
      if (Last_Row &&
	  (!(FUNC3(field) && !FUNC7(field))))
	{
	  if (!((unsigned)form->opts & O_NL_OVERLOAD))
	    FUNC11(E_REQUEST_DENIED);
	  FUNC14(form->w, form->currow, form->curcol);
	  FUNC12(form->w);
	  /* we have to set this here, although it is also
	     handled in the generic routine. The reason is,
	     that FN_Next_Field may fail, but the form is
	     definitively changed */
	  FUNC6(form, _WINDOW_MODIFIED);
	  FUNC11(FUNC4(FN_Next_Field, form));
	}
      else
	{
	  if (Last_Row && !FUNC2(field, 1))
	    {
	      /* N.B.: due to the logic in the 'if', LastRow==TRUE
	         means here that the field is growable and not
	         a single-line field */
	      FUNC11(E_SYSTEM_ERROR);
	    }
	  FUNC14(form->w, form->currow, form->curcol);
	  FUNC12(form->w);
	  form->currow++;
	  form->curcol = 0;
	  FUNC6(form, _WINDOW_MODIFIED);
	  FUNC11(E_OK);
	}
    }
  else
    {
      /* Insert Mode */
      if (Last_Row &&
	  !(FUNC3(field) && !FUNC7(field)))
	{
	  if (!((unsigned)form->opts & O_NL_OVERLOAD))
	    FUNC11(E_REQUEST_DENIED);
	  FUNC11(FUNC4(FN_Next_Field, form));
	}
      else
	{
	  bool May_Do_It = !Last_Row && FUNC5(form);

	  if (!(May_Do_It || FUNC3(field)))
	    FUNC11(E_REQUEST_DENIED);
	  if (!May_Do_It && !FUNC2(field, 1))
	    FUNC11(E_SYSTEM_ERROR);

	  bp = FUNC0(form);
	  t = FUNC1(bp, field->dcols - form->curcol);
	  FUNC14(form->w, form->currow, form->curcol);
	  FUNC12(form->w);
	  form->currow++;
	  form->curcol = 0;
	  FUNC14(form->w, form->currow, form->curcol);
	  FUNC13(form->w);
	  FUNC10(form->w, bp, (int)(t - bp));
	  FUNC6(form, _WINDOW_MODIFIED);
	  FUNC11(E_OK);
	}
    }
}