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
struct target_ops {int dummy; } ;
struct mem_attrib {int dummy; } ;
struct cleanup {int dummy; } ;
struct TYPE_2__ {int (* to_xfer_memory ) (int /*<<< orphan*/ ,char*,int,int,struct mem_attrib*,struct target_ops*) ;} ;
typedef  int /*<<< orphan*/  CORE_ADDR ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct cleanup*) ; 
 int /*<<< orphan*/  inferior_ptid ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 struct cleanup* FUNC5 () ; 
 int FUNC6 (int /*<<< orphan*/ ,char*,int,int,struct mem_attrib*,struct target_ops*) ; 
 TYPE_1__* target_beneath ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC8 (CORE_ADDR memaddr, char *myaddr, int len, int write,
		       struct mem_attrib *attrib, struct target_ops *target)
{
  struct cleanup *old_chain = FUNC5 ();
  int xfer;

  if (FUNC2 (inferior_ptid))
    {
      /* FIXME: This seems to be necessary to make sure breakpoints
         are removed.  */
      if (!FUNC7 (inferior_ptid))
	inferior_ptid = FUNC4 (FUNC0 (inferior_ptid));
      else
	inferior_ptid = FUNC3 (inferior_ptid);
    }

  xfer =
    target_beneath->to_xfer_memory (memaddr, myaddr, len, write, attrib,
				    target);

  FUNC1 (old_chain);
  return xfer;
}