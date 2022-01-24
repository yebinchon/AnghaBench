#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct coff_symbol {int /*<<< orphan*/  c_value; int /*<<< orphan*/  c_name; } ;
struct TYPE_2__ {int /*<<< orphan*/  begin; int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 scalar_t__ inclDepth ; 
 size_t inclIndx ; 
 TYPE_1__* inclTable ; 
 int /*<<< orphan*/  symfile_complaints ; 

__attribute__((used)) static void
FUNC2 (struct coff_symbol *cs)
{
  if (inclDepth)
    {
      /* In xcoff, we assume include files cannot be nested (not in .c files
         of course, but in corresponding .s files.).  */

      /* This can happen with old versions of GCC.
         GCC 2.3.3-930426 does not exhibit this on a test case which
         a user said produced the message for him.  */
      FUNC1 (&symfile_complaints, "Nested C_BINCL symbols");
    }
  ++inclDepth;

  FUNC0 ();

  inclTable[inclIndx].name = cs->c_name;
  inclTable[inclIndx].begin = cs->c_value;
}