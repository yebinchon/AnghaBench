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
struct objfile {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  symfile_complaints ; 
 struct objfile* symfile_objfile ; 

void
FUNC3 (struct objfile *objfile, int mainline, int verbo)
{

  /* If this is the main symbol file we have to clean up all users of the
     old main symbol file. Otherwise it is sufficient to fixup all the
     breakpoints that may have been redefined by this symbol file.  */
  if (mainline)
    {
      /* OK, make it the "real" symbol file.  */
      symfile_objfile = objfile;

      FUNC2 ();
    }
  else
    {
      FUNC0 ();
    }

  /* We're done reading the symbol file; finish off complaints.  */
  FUNC1 (&symfile_complaints, 0, verbo);
}