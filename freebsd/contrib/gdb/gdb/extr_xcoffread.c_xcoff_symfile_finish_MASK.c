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
struct objfile {int /*<<< orphan*/ * sym_private; int /*<<< orphan*/  md; } ;

/* Variables and functions */
 scalar_t__ inclDepth ; 
 scalar_t__ inclIndx ; 
 scalar_t__ inclLength ; 
 int /*<<< orphan*/ * inclTable ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC2 (struct objfile *objfile)
{
  if (objfile->sym_private != NULL)
    {
      FUNC1 (objfile->md, objfile->sym_private);
    }

  /* Start with a fresh include table for the next objfile.  */
  if (inclTable)
    {
      FUNC0 (inclTable);
      inclTable = NULL;
    }
  inclIndx = inclLength = inclDepth = 0;
}