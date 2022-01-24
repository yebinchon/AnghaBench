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
typedef  int /*<<< orphan*/  chtype ;
typedef  int /*<<< orphan*/  TypeArgument ;
struct TYPE_12__ {scalar_t__ arg; int /*<<< orphan*/  type; } ;
struct TYPE_11__ {int /*<<< orphan*/  w; TYPE_2__* current; } ;
typedef  TYPE_1__ FORM ;
typedef  TYPE_2__ FIELD ;

/* Variables and functions */
 scalar_t__ C_BLANK ; 
 scalar_t__ FUNC0 (TYPE_1__*,TYPE_2__*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 int E_REQUEST_DENIED ; 
 int E_SYSTEM_ERROR ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,int) ; 
 scalar_t__ FUNC2 (TYPE_2__*) ; 
 int FUNC3 (TYPE_1__*) ; 
 scalar_t__ FUNC4 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 int FUNC7 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC8 (int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC10(FORM *form)
{
  FIELD *field = form->current;
  int result = E_REQUEST_DENIED;

  FUNC5((FUNC6("FE_Insert_Character(%p)"), (void *)form));
  if (FUNC0(form, field, field->type, (int)C_BLANK,
		 (TypeArgument *)(field->arg)))
    {
      bool There_Is_Room = FUNC3(form);

      if (There_Is_Room ||
	  ((FUNC4(field) && FUNC2(field))))
	{
	  if (!There_Is_Room && !FUNC1(field, 1))
	    result = E_SYSTEM_ERROR;
	  else
	    {
	      FUNC9(form->w, (chtype)C_BLANK);
	      result = FUNC7(form);
	    }
	}
    }
  FUNC8(result);
}