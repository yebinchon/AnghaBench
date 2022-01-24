#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  WINDOW ;
struct TYPE_4__ {int /*<<< orphan*/  buf; } ;
typedef  int /*<<< orphan*/  FIELD_CELL ;
typedef  TYPE_1__ FIELD ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC6(FIELD *field, WINDOW *win)
{
  FIELD_CELL *bp;
  int len;

  bp = FUNC2(field->buf, FUNC1(field));
  len = (int)(FUNC0(field->buf, FUNC1(field)) - bp);

  if (len > 0)
    {
      FUNC3(win);
      FUNC5(win, 0, 0);
      FUNC4(win, bp, len);
    }
}