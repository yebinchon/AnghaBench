#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  TypeArgument ;
struct TYPE_11__ {int drows; scalar_t__ arg; int /*<<< orphan*/  type; } ;
struct TYPE_10__ {int currow; int /*<<< orphan*/  w; scalar_t__ curcol; TYPE_2__* current; } ;
typedef  TYPE_1__ FORM ;
typedef  TYPE_2__ FIELD ;

/* Variables and functions */
 scalar_t__ C_BLANK ; 
 scalar_t__ FUNC0 (TYPE_1__*,TYPE_2__*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 int E_OK ; 
 int E_REQUEST_DENIED ; 
 int E_SYSTEM_ERROR ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,int) ; 
 scalar_t__ FUNC2 (TYPE_2__*) ; 
 scalar_t__ FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC9(FORM *form)
{
  FIELD *field = form->current;
  int result = E_REQUEST_DENIED;

  FUNC5((FUNC6("FE_Insert_Line(%p)"), (void *)form));
  if (FUNC0(form, field,
		 field->type, (int)C_BLANK, (TypeArgument *)(field->arg)))
    {
      bool Maybe_Done = (form->currow != (field->drows - 1)) &&
      FUNC3(form);

      if (!FUNC4(field) &&
	  (Maybe_Done || FUNC2(field)))
	{
	  if (!Maybe_Done && !FUNC1(field, 1))
	    result = E_SYSTEM_ERROR;
	  else
	    {
	      form->curcol = 0;
	      FUNC8(form->w);
	      result = E_OK;
	    }
	}
    }
  FUNC7(result);
}