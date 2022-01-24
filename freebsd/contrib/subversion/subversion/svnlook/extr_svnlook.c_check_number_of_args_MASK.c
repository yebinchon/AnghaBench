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
typedef  int /*<<< orphan*/  svn_error_t ;
struct svnlook_opt_state {int /*<<< orphan*/ * arg1; int /*<<< orphan*/ * arg2; } ;

/* Variables and functions */
 int /*<<< orphan*/  SVN_ERR_CL_ARG_PARSING_ERROR ; 
 int /*<<< orphan*/  SVN_ERR_CL_INSUFFICIENT_ARGS ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static svn_error_t *
FUNC2(struct svnlook_opt_state *opt_state,
                     int num_args)
{
  if ((num_args == 0 && opt_state->arg1 != NULL)
      || (num_args == 1 && opt_state->arg2 != NULL))
    return FUNC1(SVN_ERR_CL_ARG_PARSING_ERROR, NULL,
                            FUNC0("Too many arguments given"));
  if ((num_args == 1 && opt_state->arg1 == NULL))
    return FUNC1(SVN_ERR_CL_INSUFFICIENT_ARGS, NULL,
                            FUNC0("Missing repository path argument"));
  return SVN_NO_ERROR;
}