#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  chtype ;
struct TYPE_14__ {int drows; int dcols; scalar_t__ opts; } ;
struct TYPE_13__ {int status; int currow; int curcol; int /*<<< orphan*/  w; TYPE_2__* current; } ;
typedef  TYPE_1__ FORM ;
typedef  TYPE_2__ FIELD ;

/* Variables and functions */
 int E_OK ; 
 int E_REQUEST_DENIED ; 
 int E_SYSTEM_ERROR ; 
 int /*<<< orphan*/  FN_Next_Field ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,int) ; 
 scalar_t__ FUNC1 (TYPE_1__*) ; 
 scalar_t__ FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int FUNC4 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 int FUNC5 (TYPE_1__*) ; 
 unsigned int O_ACTIVE ; 
 unsigned int O_AUTOSKIP ; 
 unsigned int O_BLANK ; 
 unsigned int O_EDIT ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,int) ; 
 scalar_t__ FUNC8 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (char*) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC12 (TYPE_1__*) ; 
 int _FCHECK_REQUIRED ; 
 int _OVLMODE ; 
 int _WINDOW_MODIFIED ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  addch_used ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC17(FORM *form, int c)
{
  FIELD *field = form->current;
  int result = E_REQUEST_DENIED;

  FUNC9((FUNC10("Data_Entry(%p,%s)"), (void )form, FUNC13((chtype)c)));
  if (((unsigned)field->opts & O_EDIT)
#if FIX_FORM_INACTIVE_BUG
      && ((unsigned)field->opts & O_ACTIVE)
#endif
    )
    {
      if (((unsigned)field->opts & O_BLANK) &&
	  FUNC1(form) &&
	  !(form->status & _FCHECK_REQUIRED) &&
	  !(form->status & _WINDOW_MODIFIED))
	FUNC15(form->w);

      if (form->status & _OVLMODE)
	{
	  FUNC14(form->w, (chtype)c);
	}
      else
	/* no _OVLMODE */
	{
	  bool There_Is_Room = FUNC5(form);

	  if (!(There_Is_Room ||
		((FUNC8(field) && FUNC2(field)))))
	    FUNC6(E_REQUEST_DENIED);

	  if (!There_Is_Room && !FUNC0(field, 1))
	    FUNC6(E_SYSTEM_ERROR);

	  FUNC16(form->w, (chtype)c);
	}

      if ((result = FUNC12(form)) == E_OK)
	{
	  bool End_Of_Field = (((field->drows - 1) == form->currow) &&
			       ((field->dcols - 1) == form->curcol));

	  FUNC7(form, _WINDOW_MODIFIED);
	  if (End_Of_Field && !FUNC2(field) && ((unsigned)field->opts & O_AUTOSKIP))
	    result = FUNC4(FN_Next_Field, form);
	  else
	    {
	      if (End_Of_Field && FUNC2(field) && !FUNC0(field, 1))
		result = E_SYSTEM_ERROR;
	      else
		{
#if USE_WIDEC_SUPPORT
		  /*
		   * We have just added a byte to the form field.  It may have
		   * been part of a multibyte character.  If it was, the
		   * addch_used field is nonzero and we should not try to move
		   * to a new column.
		   */
		  if (WINDOW_EXT(form->w, addch_used) == 0)
		    IFN_Next_Character(form);
#else
		  FUNC3(form);
#endif
		  result = E_OK;
		}
	    }
	}
    }
  FUNC6(result);
}