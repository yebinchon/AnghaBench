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
struct ui_file {int dummy; } ;
typedef  enum val_prettyprint { ____Placeholder_val_prettyprint } val_prettyprint ;
typedef  int /*<<< orphan*/  LONGEST ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*,struct ui_file*) ; 
 unsigned int print_max ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,struct ui_file*,int,int,int,int) ; 

__attribute__((used)) static void
FUNC7 (LONGEST svalue, struct ui_file *stream, int format,
		   int deref_ref, int recurse, enum val_prettyprint pretty)
{
  unsigned int more = print_max;
  if (recurse > 6)
    {
      FUNC5 ("...", stream);
      return;
    }
  FUNC6 (FUNC0 (svalue), stream, format,
		    deref_ref, recurse + 1, pretty);
  svalue = FUNC1 (svalue);
  for (; FUNC3 (svalue); svalue = FUNC1 (svalue))
    {
      if (FUNC2 (svalue))
	break;
      FUNC5 (" ", stream);
      if (--more == 0)
	{
	  FUNC5 ("...", stream);
	  return;
	}
      FUNC6 (FUNC0 (svalue), stream, format,
			deref_ref, recurse + 1, pretty);
    }
  if (FUNC4 (svalue))
    {
      FUNC5 (" . ", stream);
      FUNC6 (svalue, stream, format,
			deref_ref, recurse + 1, pretty);
    }
}