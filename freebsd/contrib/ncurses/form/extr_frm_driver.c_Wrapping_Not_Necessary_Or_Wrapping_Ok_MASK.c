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
struct TYPE_14__ {int drows; int dcols; scalar_t__ opts; } ;
struct TYPE_13__ {int currow; int curcol; int /*<<< orphan*/  w; TYPE_2__* current; } ;
typedef  TYPE_1__ FORM ;
typedef  int /*<<< orphan*/  FIELD_CELL ;
typedef  TYPE_2__ FIELD ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int E_OK ; 
 int E_REQUEST_DENIED ; 
 int E_SYSTEM_ERROR ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,int) ; 
 scalar_t__ FUNC4 (TYPE_2__*) ; 
 int FUNC5 (TYPE_1__*,int,int /*<<< orphan*/ *,int) ; 
 unsigned int O_WRAP ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*) ; 
 scalar_t__ FUNC7 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int,int) ; 

__attribute__((used)) static int
FUNC11(FORM *form)
{
  FIELD *field = form->current;
  int result = E_REQUEST_DENIED;
  bool Last_Row = ((field->drows - 1) == form->currow);

  if (((unsigned)field->opts & O_WRAP) &&	/* wrapping wanted     */
      (!FUNC6(field)) &&	/* must be multi-line  */
      (FUNC7(form)) &&	/* line is full        */
      (!Last_Row || FUNC4(field)))	/* there are more lines */
    {
      FIELD_CELL *bp;
      FIELD_CELL *split;
      int chars_to_be_wrapped;
      int chars_to_remain_on_line;

      if (Last_Row)
	{
	  /* the above logic already ensures, that in this case the field
	     is growable */
	  if (!FUNC3(field, 1))
	    return E_SYSTEM_ERROR;
	}
      bp = FUNC0(form);
      FUNC8(form, field);
      split = FUNC1(bp, field->dcols);
      /* split points to the first character of the sequence to be brought
         on the next line */
      chars_to_remain_on_line = (int)(split - bp);
      chars_to_be_wrapped = field->dcols - chars_to_remain_on_line;
      if (chars_to_remain_on_line > 0)
	{
	  if ((result = FUNC5(form, form->currow + 1, split,
				      chars_to_be_wrapped)) == E_OK)
	    {
	      FUNC10(form->w, form->currow, chars_to_remain_on_line);
	      FUNC9(form->w);
	      if (form->curcol >= chars_to_remain_on_line)
		{
		  form->currow++;
		  form->curcol -= chars_to_remain_on_line;
		}
	      return E_OK;
	    }
	}
      else
	return E_OK;
      if (result != E_OK)
	{
	  FUNC2(form);
	  FUNC8(form, field);
	  result = E_REQUEST_DENIED;
	}
    }
  else
    result = E_OK;		/* wrapping was not necessary */
  return (result);
}