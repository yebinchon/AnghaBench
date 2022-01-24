#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  prop_value_incoming_new; int /*<<< orphan*/  prop_value_incoming_old; int /*<<< orphan*/  prop_value_working; int /*<<< orphan*/  prop_value_base; } ;
typedef  TYPE_1__ svn_wc_conflict_description2_t ;
typedef  int /*<<< orphan*/  svn_string_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
struct TYPE_7__ {int /*<<< orphan*/  prop_conflicts; int /*<<< orphan*/  pool; } ;
typedef  TYPE_2__ svn_client_conflict_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SVN_ERR_WC_CONFLICT_RESOLVER_FAILURE ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,char const*) ; 
 TYPE_1__* FUNC4 (int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

svn_error_t *
FUNC6(const svn_string_t **base_propval,
                                      const svn_string_t **working_propval,
                                      const svn_string_t **incoming_old_propval,
                                      const svn_string_t **incoming_new_propval,
                                      svn_client_conflict_t *conflict,
                                      const char *propname,
                                      apr_pool_t *result_pool)
{
  const svn_wc_conflict_description2_t *desc;

  FUNC0(FUNC2(conflict, conflict->pool));

  desc = FUNC4(conflict->prop_conflicts, propname);
  if (desc == NULL)
    return FUNC3(SVN_ERR_WC_CONFLICT_RESOLVER_FAILURE, NULL,
                             FUNC1("Property '%s' is not in conflict."), propname);

  if (base_propval)
    *base_propval =
      FUNC5(desc->prop_value_base, result_pool);

  if (working_propval)
    *working_propval =
      FUNC5(desc->prop_value_working, result_pool);

  if (incoming_old_propval)
    *incoming_old_propval =
      FUNC5(desc->prop_value_incoming_old, result_pool);

  if (incoming_new_propval)
    *incoming_new_propval =
      FUNC5(desc->prop_value_incoming_new, result_pool);

  return SVN_NO_ERROR;
}