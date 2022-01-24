#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct symtab_and_line {TYPE_1__* symtab; } ;
struct TYPE_4__ {scalar_t__ count; } ;
struct TYPE_3__ {char* filename; } ;
typedef  scalar_t__ CORE_ADDR ;

/* Variables and functions */
 struct symtab_and_line FUNC0 (scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 () ; 
 TYPE_2__* FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 

void
FUNC5 (void)
{
  if ((FUNC2 ())->count > 0)
    {
      CORE_ADDR addr;

      addr = FUNC1 ();
      if (addr != (CORE_ADDR) 0)
	{
	  struct symtab_and_line sal;

	  FUNC4 (addr);
	  sal = FUNC0 (addr, 0);
          if (sal.symtab)
             FUNC3 (sal.symtab->filename);
          else
             FUNC3 ("??");
	}
    }
}