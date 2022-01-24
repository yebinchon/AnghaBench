#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  svnlook_ctxt_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
struct svnlook_opt_state {int /*<<< orphan*/  show_inherited_props; int /*<<< orphan*/  verbose; int /*<<< orphan*/ * arg2; scalar_t__ revprop; int /*<<< orphan*/ * arg1; } ;
typedef  int /*<<< orphan*/  apr_pool_t ;
struct TYPE_3__ {scalar_t__ ind; scalar_t__ argc; } ;
typedef  TYPE_1__ apr_getopt_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SVN_ERR_CL_ARG_PARSING_ERROR ; 
 int /*<<< orphan*/  SVN_ERR_CL_INSUFFICIENT_ARGS ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ **,struct svnlook_opt_state*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static svn_error_t *
FUNC6(apr_getopt_t *os, void *baton, apr_pool_t *pool)
{
  struct svnlook_opt_state *opt_state = baton;
  svnlook_ctxt_t *c;

  if (opt_state->arg1 == NULL)
    {
      return FUNC5
        (SVN_ERR_CL_INSUFFICIENT_ARGS, NULL,
         opt_state->revprop ?  FUNC1("Missing propname argument") :
         FUNC1("Missing propname and repository path arguments"));
    }
  else if (!opt_state->revprop && opt_state->arg2 == NULL)
    {
      return FUNC4
        (SVN_ERR_CL_INSUFFICIENT_ARGS, NULL,
         FUNC1("Missing propname or repository path argument"));
    }
  if ((opt_state->revprop && opt_state->arg2 != NULL)
      || os->ind < os->argc)
    return FUNC4(SVN_ERR_CL_ARG_PARSING_ERROR, NULL,
                            FUNC1("Too many arguments given"));

  FUNC0(FUNC3(&c, opt_state, pool));
  FUNC0(FUNC2(c, opt_state->arg1,
                  opt_state->revprop ? NULL : opt_state->arg2,
                  opt_state->verbose, opt_state->show_inherited_props,
                  pool));
  return SVN_NO_ERROR;
}