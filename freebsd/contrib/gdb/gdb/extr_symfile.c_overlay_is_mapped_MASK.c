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
struct obj_section {int ovly_mapped; int /*<<< orphan*/  the_bfd_section; } ;

/* Variables and functions */
 int /*<<< orphan*/  overlay_cache_invalid ; 
 int overlay_debugging ; 
 int /*<<< orphan*/  FUNC0 () ; 
#define  ovly_auto 130 
#define  ovly_off 129 
#define  ovly_on 128 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct obj_section*) ; 
 int /*<<< orphan*/  FUNC3 (struct obj_section*) ; 

__attribute__((used)) static int
FUNC4 (struct obj_section *osect)
{
  if (osect == 0 || !FUNC1 (osect->the_bfd_section))
    return 0;

  switch (overlay_debugging)
    {
    default:
    case ovly_off:
      return 0;			/* overlay debugging off */
    case ovly_auto:		/* overlay debugging automatic */
      /* Unles there is a target_overlay_update function, 
         there's really nothing useful to do here (can't really go auto)  */
      if (&target_overlay_update)
	{
	  if (overlay_cache_invalid)
	    {
	      FUNC0 ();
	      overlay_cache_invalid = 0;
	    }
	  if (osect->ovly_mapped == -1)
	    FUNC3) (osect);
	}
      /* fall thru to manual case */
    case ovly_on:		/* overlay debugging manual */
      return osect->ovly_mapped == 1;
    }
}