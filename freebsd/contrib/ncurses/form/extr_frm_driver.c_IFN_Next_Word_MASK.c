#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {int /*<<< orphan*/ * buf; } ;
struct TYPE_8__ {TYPE_2__* current; } ;
typedef  TYPE_1__ FORM ;
typedef  int /*<<< orphan*/  FIELD_CELL ;
typedef  TYPE_2__ FIELD ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  E_OK ; 
 int /*<<< orphan*/  E_REQUEST_DENIED ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC9(FORM *form)
{
  FIELD *field = form->current;
  FIELD_CELL *bp = FUNC0(form);
  FIELD_CELL *s;
  FIELD_CELL *t;

  FUNC6((FUNC7("IFN_Next_Word(%p)"), (void *)form));

  /* We really need access to the data, so we have to synchronize */
  FUNC5(form);

  /* Go to the first whitespace after the current position (including
     current position). This is then the starting point to look for the
     next non-blank data */
  s = FUNC3(bp, FUNC2(field) -
				     (int)(bp - field->buf));

  /* Find the start of the next word */
  t = FUNC4(s, FUNC2(field) -
			(int)(s - field->buf));
#if !FRIENDLY_PREV_NEXT_WORD
  if (s == t)
    FUNC8(E_REQUEST_DENIED);
  else
#endif
    {
      FUNC1(form, t);
      FUNC8(E_OK);
    }
}