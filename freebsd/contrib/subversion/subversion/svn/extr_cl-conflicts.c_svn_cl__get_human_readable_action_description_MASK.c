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
typedef  int /*<<< orphan*/  svn_wc_operation_t ;
typedef  int /*<<< orphan*/  svn_wc_conflict_action_t ;
typedef  int /*<<< orphan*/  svn_node_kind_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char const*) ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 char* FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char const*,char const*) ; 
 char* FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 char* FUNC4 (int /*<<< orphan*/ ) ; 

svn_error_t *
FUNC5(
        const char **desc,
        svn_wc_conflict_action_t action,
        svn_wc_operation_t operation,
        svn_node_kind_t kind,
        apr_pool_t *pool)
{
  const char *action_s, *operation_s;

  action_s = FUNC3(kind, action);
  operation_s = FUNC4(operation);

  FUNC0(operation_s);

  *desc = FUNC2(pool, FUNC1("%s %s"),
                       action_s, operation_s);

  return SVN_NO_ERROR;
}