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
struct ps_prochandle {int dummy; } ;
struct cleanup {int dummy; } ;
typedef  int /*<<< orphan*/  ps_err_e ;
typedef  int /*<<< orphan*/  prfpregset_t ;
typedef  int /*<<< orphan*/  lwpid_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PS_OK ; 
 int /*<<< orphan*/  FUNC2 (struct cleanup*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  inferior_ptid ; 
 struct cleanup* FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int) ; 

ps_err_e
FUNC6 (struct ps_prochandle *ph, lwpid_t lwpid, prfpregset_t *fpregset)
{
  struct cleanup *old_chain;

  old_chain = FUNC4 ();
  inferior_ptid = FUNC0 (lwpid, FUNC1 (inferior_ptid));
  FUNC5 (-1);
  FUNC3 (fpregset, -1);
  FUNC2 (old_chain);
  return PS_OK;
}