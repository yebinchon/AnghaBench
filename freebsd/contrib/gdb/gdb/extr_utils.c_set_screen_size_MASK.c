#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */

/* Variables and functions */
 int INT_MAX ; 
 int chars_per_line ; 
 int lines_per_page ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int*) ; 
 int /*<<< orphan*/  FUNC1 (int,int) ; 

__attribute__((used)) static void
FUNC2 (void)
{
  int rows = lines_per_page;
  int cols = chars_per_line;

  if (rows <= 0)
    rows = INT_MAX;

  if (cols <= 0)
    FUNC0 (NULL, &cols);

  /* Update Readline's idea of the terminal size.  */
  FUNC1 (rows, cols);
}