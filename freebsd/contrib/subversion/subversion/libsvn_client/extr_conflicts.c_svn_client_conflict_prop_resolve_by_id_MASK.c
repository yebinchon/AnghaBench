#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  int /*<<< orphan*/  svn_client_ctx_t ;
struct TYPE_5__ {int /*<<< orphan*/  local_abspath; } ;
typedef  TYPE_1__ svn_client_conflict_t ;
typedef  int /*<<< orphan*/  svn_client_conflict_option_t ;
typedef  int /*<<< orphan*/  svn_client_conflict_option_id_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;
typedef  int /*<<< orphan*/  apr_array_header_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SVN_ERR_CLIENT_CONFLICT_OPTION_NOT_APPLICABLE ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ **,TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

svn_error_t *
FUNC7(
  svn_client_conflict_t *conflict,
  const char *propname,
  svn_client_conflict_option_id_t option_id,
  svn_client_ctx_t *ctx,
  apr_pool_t *scratch_pool)
{
  apr_array_header_t *resolution_options;
  svn_client_conflict_option_t *option;

  FUNC0(FUNC3(
            &resolution_options, conflict, ctx,
            scratch_pool, scratch_pool));
  option = FUNC2(resolution_options,
                                                 option_id);
  if (option == NULL)
    return FUNC6(SVN_ERR_CLIENT_CONFLICT_OPTION_NOT_APPLICABLE,
                             NULL,
                             FUNC1("Inapplicable conflict resolution option "
                               "given for conflicted path '%s'"),
                             FUNC5(conflict->local_abspath,
                                                    scratch_pool));
  FUNC0(FUNC4(conflict, propname, option, ctx,
                                           scratch_pool));

  return SVN_NO_ERROR;
}