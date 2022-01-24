#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int dcols; } ;
struct TYPE_7__ {int curcol; int /*<<< orphan*/  w; int /*<<< orphan*/  currow; TYPE_2__* current; } ;
typedef  TYPE_1__ FORM ;
typedef  int /*<<< orphan*/  FIELD_CELL ;
typedef  TYPE_2__ FIELD ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  E_OK ; 
 int /*<<< orphan*/  E_REQUEST_DENIED ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (char*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int
FUNC14(FORM *form)
{
  FIELD *field = form->current;
  FIELD_CELL *bp = FUNC0(form);
  FIELD_CELL *ep = bp + field->dcols;
  FIELD_CELL *cp = bp + form->curcol;
  FIELD_CELL *s;

  FUNC8((FUNC9("FE_Delete_Word(%p)"), (void *)form));
  FUNC7(form);
  if (FUNC6(*cp))
    FUNC11(E_REQUEST_DENIED);	/* not in word */

  /* move cursor to begin of word and erase to end of screen-line */
  FUNC1(form,
			 FUNC3(bp, form->curcol));
  FUNC13(form->w, form->currow, form->curcol);
  FUNC12(form->w);

  /* skip over word in buffer */
  s = FUNC4(cp, (int)(ep - cp));
  /* to begin of next word    */
  s = FUNC5(s, (int)(ep - s));
  if ((s != cp) && !FUNC6(*s))
    {
      /* copy remaining line to window */
      FUNC10(form->w, s, (int)(s - FUNC2(s, (int)(ep - s))));
    }
  FUNC11(E_OK);
}