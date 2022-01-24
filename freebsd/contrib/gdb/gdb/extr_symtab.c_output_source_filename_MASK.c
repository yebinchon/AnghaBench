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
 scalar_t__ FUNC0 (char*,int,int*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  gdb_stdout ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 

__attribute__((used)) static void
FUNC4 (char *name, int *first)
{
  /* Since a single source file can result in several partial symbol
     tables, we need to avoid printing it more than once.  Note: if
     some of the psymtabs are read in and some are not, it gets
     printed both under "Source files for which symbols have been
     read" and "Source files for which symbols will be read in on
     demand".  I consider this a reasonable way to deal with the
     situation.  I'm not sure whether this can also happen for
     symtabs; it doesn't hurt to check.  */

  /* Was NAME already seen?  */
  if (FUNC0 (name, 1, first))
    {
      /* Yes; don't print it again.  */
      return;
    }
  /* No; print it and reset *FIRST.  */
  if (*first)
    {
      *first = 0;
    }
  else
    {
      FUNC2 (", ");
    }

  FUNC3 ("");
  FUNC1 (name, gdb_stdout);
}