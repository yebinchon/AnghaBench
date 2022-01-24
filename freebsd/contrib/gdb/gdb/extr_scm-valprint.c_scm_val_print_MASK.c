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
struct type {int dummy; } ;
typedef  enum val_prettyprint { ____Placeholder_val_prettyprint } val_prettyprint ;
typedef  int /*<<< orphan*/  LONGEST ;
typedef  int /*<<< orphan*/  CORE_ADDR ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct type*) ; 
 int FUNC1 (struct type*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct ui_file*,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct ui_file*) ; 
 scalar_t__ FUNC4 (struct type*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,struct ui_file*,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,struct ui_file*,int,int,int,int) ; 

int
FUNC7 (struct type *type, char *valaddr, int embedded_offset,
	       CORE_ADDR address, struct ui_file *stream, int format,
	       int deref_ref, int recurse, enum val_prettyprint pretty)
{
  if (FUNC4 (type))
    {
      LONGEST svalue = FUNC2 (valaddr, FUNC0 (type));
      if (FUNC5 (svalue, stream, format,
			      deref_ref, recurse, pretty) >= 0)
	{
	}
      else
	{
	  FUNC6 (svalue, stream, format,
			    deref_ref, recurse, pretty);
	}

      FUNC3 (stream);
      return (0);
    }
  else
    {
      return FUNC1 (type, valaddr, 0, address, stream, format,
			  deref_ref, recurse, pretty);
    }
}