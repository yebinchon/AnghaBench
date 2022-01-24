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
typedef  int /*<<< orphan*/  LONGEST ;

/* Variables and functions */
 int FUNC0 (struct type*) ; 
 scalar_t__ FUNC1 (struct type*) ; 
 scalar_t__ FUNC2 (char*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct ui_file*,unsigned char*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct ui_file*,unsigned char,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct type*,char*) ; 

void
FUNC6 (struct type *type, char *valaddr,
			 struct ui_file *stream)
{
  if (FUNC0 (type) > sizeof (LONGEST))
    {
      LONGEST val;

      if (FUNC1 (type)
	  && FUNC2 (valaddr, FUNC0 (type),
					    &val))
	{
	  FUNC4 (stream, 'u', 0, val);
	}
      else
	{
	  /* Signed, or we couldn't turn an unsigned value into a
	     LONGEST.  For signed values, one could assume two's
	     complement (a reasonable assumption, I think) and do
	     better than this.  */
	  FUNC3 (stream, (unsigned char *) valaddr,
			   FUNC0 (type));
	}
    }
  else
    {
      FUNC4 (stream, FUNC1 (type) ? 'u' : 'd', 0,
		     FUNC5 (type, valaddr));
    }
}