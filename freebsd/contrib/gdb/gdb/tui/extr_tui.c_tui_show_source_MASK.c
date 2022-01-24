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
struct symtab_and_line {int /*<<< orphan*/  symtab; } ;

/* Variables and functions */
 int /*<<< orphan*/  SRC_WIN ; 
 struct symtab_and_line FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char const*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 

void
FUNC4 (const char *file, int line)
{
  struct symtab_and_line cursal = FUNC0 ();
  /* make sure that the source window is displayed */
  FUNC1 (SRC_WIN);

  FUNC3 (cursal.symtab, line);
  FUNC2 (file);
}