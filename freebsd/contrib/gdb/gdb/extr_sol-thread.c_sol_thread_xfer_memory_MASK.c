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
struct target_ops {int dummy; } ;
struct mem_attrib {int dummy; } ;
struct cleanup {int dummy; } ;
struct TYPE_4__ {int (* to_xfer_memory ) (int /*<<< orphan*/ ,char*,int,int,struct mem_attrib*,struct target_ops*) ;} ;
struct TYPE_3__ {int (* to_xfer_memory ) (int /*<<< orphan*/ ,char*,int,int,struct mem_attrib*,struct target_ops*) ;} ;
typedef  int /*<<< orphan*/  CORE_ADDR ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct cleanup*) ; 
 int /*<<< orphan*/  inferior_ptid ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 TYPE_2__ orig_core_ops ; 
 int /*<<< orphan*/  FUNC2 () ; 
 TYPE_1__ procfs_ops ; 
 struct cleanup* FUNC3 () ; 
 int FUNC4 (int /*<<< orphan*/ ,char*,int,int,struct mem_attrib*,struct target_ops*) ; 
 int FUNC5 (int /*<<< orphan*/ ,char*,int,int,struct mem_attrib*,struct target_ops*) ; 
 scalar_t__ target_has_execution ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC7 (CORE_ADDR memaddr, char *myaddr, int len, int dowrite,
			struct mem_attrib *attrib,
			struct target_ops *target)
{
  int retval;
  struct cleanup *old_chain;

  old_chain = FUNC3 ();

  if (FUNC1 (inferior_ptid) ||	/* A thread */
      !FUNC6 (inferior_ptid))	/* An lwp, but not alive */
    inferior_ptid = FUNC2 ();	/* Find any live lwp.  */
  /* Note: don't need to call switch_to_thread; we're just reading memory.  */

  if (target_has_execution)
    retval = procfs_ops.to_xfer_memory (memaddr, myaddr, len,
					dowrite, attrib, target);
  else
    retval = orig_core_ops.to_xfer_memory (memaddr, myaddr, len,
					   dowrite, attrib, target);

  FUNC0 (old_chain);

  return retval;
}