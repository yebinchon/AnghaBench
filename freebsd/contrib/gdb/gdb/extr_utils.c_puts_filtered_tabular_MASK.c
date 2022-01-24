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
 int UINT_MAX ; 
 char* FUNC0 (int) ; 
 int chars_per_line ; 
 int chars_printed ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  gdb_stdout ; 
 int FUNC3 (char*) ; 

void
FUNC4 (char *string, int width, int right)
{
  int spaces = 0;
  int stringlen;
  char *spacebuf;

  FUNC2 (chars_per_line > 0);
  if (chars_per_line == UINT_MAX)
    {
      FUNC1 (string, gdb_stdout);
      FUNC1 ("\n", gdb_stdout);
      return;
    }

  if (((chars_printed - 1) / width + 2) * width >= chars_per_line)
    FUNC1 ("\n", gdb_stdout);

  if (width >= chars_per_line)
    width = chars_per_line - 1;

  stringlen = FUNC3 (string);

  if (chars_printed > 0)
    spaces = width - (chars_printed - 1) % width - 1;
  if (right)
    spaces += width - stringlen;

  spacebuf = FUNC0 (spaces + 1);
  spacebuf[spaces] = '\0';
  while (spaces--)
    spacebuf[spaces] = ' ';

  FUNC1 (spacebuf, gdb_stdout);
  FUNC1 (string, gdb_stdout);
}