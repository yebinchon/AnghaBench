#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_3__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct ps_prochandle {int dummy; } ;
struct cleanup {int dummy; } ;
typedef  int /*<<< orphan*/  ps_err_e ;
typedef  int gdb_ps_addr_t ;
struct TYPE_5__ {int (* to_xfer_memory ) (int,char*,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ;} ;
struct TYPE_4__ {int (* to_xfer_memory ) (int,char*,int,int,int /*<<< orphan*/ ,TYPE_1__*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  PS_ERR ; 
 int /*<<< orphan*/  PS_OK ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  core_ops ; 
 int /*<<< orphan*/  FUNC1 (struct cleanup*) ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  exec_bfd ; 
 int /*<<< orphan*/  inferior_ptid ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 TYPE_3__ orig_core_ops ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 TYPE_1__ procfs_ops ; 
 struct cleanup* FUNC5 () ; 
 int FUNC6 (int,char*,int,int,int /*<<< orphan*/ ,TYPE_1__*) ; 
 int FUNC7 (int,char*,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ target_has_execution ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (char*,long) ; 

__attribute__((used)) static ps_err_e
FUNC10 (int dowrite, const struct ps_prochandle *ph, gdb_ps_addr_t addr,
	   char *buf, int size)
{
  struct cleanup *old_chain;

  old_chain = FUNC5 ();

  if (FUNC2 (inferior_ptid) ||	/* A thread */
      !FUNC8 (inferior_ptid))	/* An lwp, but not alive */
    inferior_ptid = FUNC4 ();	/* Find any live lwp.  */
  /* Note: don't need to call switch_to_thread; we're just reading memory.  */

#if defined (__sparcv9)
  /* For Sparc64 cross Sparc32, make sure the address has not been
     accidentally sign-extended (or whatever) to beyond 32 bits.  */
  if (bfd_get_arch_size (exec_bfd) == 32)
    addr &= 0xffffffff;
#endif

  while (size > 0)
    {
      int cc;

      /* FIXME: passing 0 as attrib argument.  */
      if (target_has_execution)
	cc = procfs_ops.to_xfer_memory (addr, buf, size,
					dowrite, 0, &procfs_ops);
      else
	cc = orig_core_ops.to_xfer_memory (addr, buf, size,
					   dowrite, 0, &core_ops);

      if (cc < 0)
	{
	  if (dowrite == 0)
	    FUNC3 ("rw_common (): read", errno);
	  else
	    FUNC3 ("rw_common (): write", errno);

	  FUNC1 (old_chain);

	  return PS_ERR;
	}
      else if (cc == 0)
	{
	  if (dowrite == 0)
	    FUNC9 ("rw_common (): unable to read at addr 0x%lx",
		     (long) addr);
	  else
	    FUNC9 ("rw_common (): unable to write at addr 0x%lx",
		     (long) addr);

	  FUNC1 (old_chain);

	  return PS_ERR;
	}

      size -= cc;
      buf += cc;
    }

  FUNC1 (old_chain);

  return PS_OK;
}