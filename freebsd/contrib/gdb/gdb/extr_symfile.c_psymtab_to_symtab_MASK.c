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
struct symtab {int dummy; } ;
struct partial_symtab {struct symtab* symtab; int /*<<< orphan*/  (* read_symtab ) (struct partial_symtab*) ;int /*<<< orphan*/  readin; } ;
struct cleanup {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  currently_reading_symtab ; 
 int /*<<< orphan*/  decrement_reading_symtab ; 
 int /*<<< orphan*/  FUNC0 (struct cleanup*) ; 
 struct cleanup* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct partial_symtab*) ; 

struct symtab *
FUNC3 (struct partial_symtab *pst)
{
  /* If it's been looked up before, return it. */
  if (pst->symtab)
    return pst->symtab;

  /* If it has not yet been read in, read it.  */
  if (!pst->readin)
    {
      struct cleanup *back_to = FUNC1 (decrement_reading_symtab, NULL);
      currently_reading_symtab++;
      (*pst->read_symtab) (pst);
      FUNC0 (back_to);
    }

  return pst->symtab;
}