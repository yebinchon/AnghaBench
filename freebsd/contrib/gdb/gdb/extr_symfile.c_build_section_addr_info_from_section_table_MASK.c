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
struct section_table {TYPE_2__* the_bfd_section; int /*<<< orphan*/  bfd; int /*<<< orphan*/  addr; } ;
struct section_addr_info {TYPE_1__* other; } ;
struct TYPE_5__ {int /*<<< orphan*/  index; } ;
struct TYPE_4__ {int /*<<< orphan*/  sectindex; int /*<<< orphan*/  name; int /*<<< orphan*/  addr; } ;

/* Variables and functions */
 int SEC_ALLOC ; 
 int SEC_LOAD ; 
 struct section_addr_info* FUNC0 (int) ; 
 int FUNC1 (int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

extern struct section_addr_info *
FUNC4 (const struct section_table *start,
                                            const struct section_table *end)
{
  struct section_addr_info *sap;
  const struct section_table *stp;
  int oidx;

  sap = FUNC0 (end - start);

  for (stp = start, oidx = 0; stp != end; stp++)
    {
      if (FUNC1 (stp->bfd, 
				 stp->the_bfd_section) & (SEC_ALLOC | SEC_LOAD)
	  && oidx < end - start)
	{
	  sap->other[oidx].addr = stp->addr;
	  sap->other[oidx].name 
	    = FUNC3 (FUNC2 (stp->bfd, stp->the_bfd_section));
	  sap->other[oidx].sectindex = stp->the_bfd_section->index;
	  oidx++;
	}
    }

  return sap;
}