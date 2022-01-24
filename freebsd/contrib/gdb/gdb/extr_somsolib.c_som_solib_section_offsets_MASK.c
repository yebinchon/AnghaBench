#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {void* data_start; void* text_link_addr; void* text_addr; int /*<<< orphan*/  name; } ;
struct so_list {struct so_list* next; TYPE_1__ som_solib; } ;
struct section_offsets {void** offsets; } ;
struct objfile {int /*<<< orphan*/  obfd; int /*<<< orphan*/  name; } ;
struct TYPE_5__ {void* vma; } ;
typedef  TYPE_2__ asection ;

/* Variables and functions */
 void* FUNC0 (struct section_offsets*,size_t) ; 
 size_t FUNC1 (struct objfile*) ; 
 size_t FUNC2 (struct objfile*) ; 
 size_t FUNC3 (struct objfile*) ; 
 size_t FUNC4 (struct objfile*) ; 
 TYPE_2__* FUNC5 (int /*<<< orphan*/ ,char*) ; 
 struct so_list* so_list_head ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 

int
FUNC8 (struct objfile *objfile,
			   struct section_offsets *offsets)
{
  struct so_list *so_list = so_list_head;

  while (so_list)
    {
      /* Oh what a pain!  We need the offsets before so_list->objfile
         is valid.  The BFDs will never match.  Make a best guess.  */
      if (FUNC6 (objfile->name, so_list->som_solib.name))
	{
	  asection *private_section;

	  /* The text offset is easy.  */
	  offsets->offsets[FUNC4 (objfile)]
	    = (so_list->som_solib.text_addr
	       - so_list->som_solib.text_link_addr);
	  offsets->offsets[FUNC3 (objfile)]
	    = FUNC0 (offsets, FUNC4 (objfile));

	  /* We should look at presumed_dp in the SOM header, but
	     that's not easily available.  This should be OK though.  */
	  private_section = FUNC5 (objfile->obfd,
						     "$PRIVATE$");
	  if (!private_section)
	    {
	      FUNC7 ("Unable to find $PRIVATE$ in shared library!");
	      offsets->offsets[FUNC2 (objfile)] = 0;
	      offsets->offsets[FUNC1 (objfile)] = 0;
	      return 1;
	    }
	  offsets->offsets[FUNC2 (objfile)]
	    = (so_list->som_solib.data_start - private_section->vma);
	  offsets->offsets[FUNC1 (objfile)]
	    = FUNC0 (offsets, FUNC2 (objfile));
	  return 1;
	}
      so_list = so_list->next;
    }
  return 0;
}