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
struct TYPE_8__ {int /*<<< orphan*/ * buf; } ;
struct TYPE_7__ {TYPE_2__* current; } ;
typedef  TYPE_1__ FORM ;
typedef  int /*<<< orphan*/  FIELD_CELL ;
typedef  TYPE_2__ FIELD ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  E_OK ; 
 int /*<<< orphan*/  E_REQUEST_DENIED ; 
 int FALSE ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int TRUE ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC8(FORM *form)
{
  FIELD *field = form->current;
  FIELD_CELL *bp = FUNC0(form);
  FIELD_CELL *s;
  FIELD_CELL *t;
  bool again = FALSE;

  FUNC5((FUNC6("IFN_Previous_Word(%p)"), (void *)form));

  /* We really need access to the data, so we have to synchronize */
  FUNC4(form);

  s = FUNC2(field->buf, (int)(bp - field->buf));
  /* s points now right after the last non-blank in the buffer before bp.
     If bp was in a word, s equals bp. In this case we must find the last
     whitespace in the buffer before bp and repeat the game to really find
     the previous word! */
  if (s == bp)
    again = TRUE;

  /* And next call now goes backward to look for the last whitespace
     before that, pointing right after this, so it points to the begin
     of the previous word.
   */
  t = FUNC3(field->buf, (int)(s - field->buf));
#if !FRIENDLY_PREV_NEXT_WORD
  if (s == t)
    FUNC7(E_REQUEST_DENIED);
#endif
  if (again)
    {
      /* and do it again, replacing bp by t */
      s = FUNC2(field->buf, (int)(t - field->buf));
      t = FUNC3(field->buf, (int)(s - field->buf));
#if !FRIENDLY_PREV_NEXT_WORD
      if (s == t)
	FUNC7(E_REQUEST_DENIED);
#endif
    }
  FUNC1(form, t);
  FUNC7(E_OK);
}