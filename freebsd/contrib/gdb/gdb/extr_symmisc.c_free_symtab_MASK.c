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
struct symtab {int free_code; TYPE_1__* objfile; struct symtab* debugformat; struct symtab* fullname; struct symtab* line_charpos; int /*<<< orphan*/  (* free_func ) (struct symtab*) ;} ;
struct blockvector {int free_code; TYPE_1__* objfile; struct blockvector* debugformat; struct blockvector* fullname; struct blockvector* line_charpos; int /*<<< orphan*/  (* free_func ) (struct symtab*) ;} ;
struct TYPE_2__ {int /*<<< orphan*/  md; } ;

/* Variables and functions */
 struct symtab* FUNC0 (struct symtab*) ; 
 int /*<<< orphan*/  FUNC1 (struct symtab*,int) ; 
 int FUNC2 (struct symtab*) ; 
 struct symtab* FUNC3 (struct symtab*) ; 
#define  free_contents 130 
#define  free_linetable 129 
#define  free_nothing 128 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct symtab*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,struct symtab*) ; 

void
FUNC7 (struct symtab *s)
{
  int i, n;
  struct blockvector *bv;

  switch (s->free_code)
    {
    case free_nothing:
      /* All the contents are part of a big block of memory (an obstack),
         and some other symtab is in charge of freeing that block.
         Therefore, do nothing.  */
      break;

    case free_contents:
      /* Here all the contents were malloc'ed structure by structure
         and must be freed that way.  */
      /* First free the blocks (and their symbols.  */
      bv = FUNC0 (s);
      n = FUNC2 (bv);
      for (i = 0; i < n; i++)
	FUNC4 (s->objfile, FUNC1 (bv, i));
      /* Free the blockvector itself.  */
      FUNC6 (s->objfile->md, bv);
      /* Also free the linetable.  */

    case free_linetable:
      /* Everything will be freed either by our `free_func'
         or by some other symtab, except for our linetable.
         Free that now.  */
      if (FUNC3 (s))
	FUNC6 (s->objfile->md, FUNC3 (s));
      break;
    }

  /* If there is a single block of memory to free, free it.  */
  if (s->free_func != NULL)
    s->free_func (s);

  /* Free source-related stuff */
  if (s->line_charpos != NULL)
    FUNC6 (s->objfile->md, s->line_charpos);
  if (s->fullname != NULL)
    FUNC6 (s->objfile->md, s->fullname);
  if (s->debugformat != NULL)
    FUNC6 (s->objfile->md, s->debugformat);
  FUNC6 (s->objfile->md, s);
}