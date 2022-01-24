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
typedef  int /*<<< orphan*/  svnlook_ctxt_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
struct svnlook_opt_state {int /*<<< orphan*/  arg1; } ;
typedef  int /*<<< orphan*/  apr_pool_t ;
typedef  int /*<<< orphan*/  apr_getopt_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/  FUNC1 (struct svnlook_opt_state*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ **,struct svnlook_opt_state*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static svn_error_t *
FUNC4(apr_getopt_t *os, void *baton, apr_pool_t *pool)
{
  struct svnlook_opt_state *opt_state = baton;
  svnlook_ctxt_t *c;

  FUNC0(FUNC1(opt_state, 1));

  FUNC0(FUNC3(&c, opt_state, pool));
  FUNC0(FUNC2(c, opt_state->arg1, pool));
  return SVN_NO_ERROR;
}