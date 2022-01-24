#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  WINDOW ;
struct TYPE_3__ {int /*<<< orphan*/ * buf; } ;
typedef  int /*<<< orphan*/  FIELD_CELL ;
typedef  TYPE_1__ FIELD ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int,int) ; 

__attribute__((used)) static void
FUNC7(const FIELD *field, WINDOW *win)
{
  int width, height;
  int y, x;
  int len;
  int row;
  FIELD_CELL *pBuffer;

  FUNC1(win && field);

  FUNC4(win, y, x);
  width = FUNC2(win);
  height = FUNC3(win);

  for (row = 0, pBuffer = field->buf;
       row < height;
       row++, pBuffer += width)
    {
      if ((len = (int)(FUNC0(pBuffer, width) - pBuffer)) > 0)
	{
	  FUNC6(win, row, 0);
	  FUNC5(win, pBuffer, len);
	}
    }
  FUNC6(win, y, x);
}