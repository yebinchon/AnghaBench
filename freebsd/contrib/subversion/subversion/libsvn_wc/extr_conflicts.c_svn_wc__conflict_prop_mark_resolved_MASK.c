#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {char const* prop_name; } ;
typedef  TYPE_1__ svn_wc_notify_t ;
typedef  int /*<<< orphan*/  (* svn_wc_notify_func2_t ) (void*,TYPE_1__*,int /*<<< orphan*/ *) ;
struct TYPE_8__ {int /*<<< orphan*/  db; } ;
typedef  TYPE_3__ svn_wc_context_t ;
typedef  int /*<<< orphan*/  svn_wc_conflict_choice_t ;
typedef  int /*<<< orphan*/  svn_string_t ;
typedef  int /*<<< orphan*/  svn_skel_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  scalar_t__ svn_boolean_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__*,int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ **,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC3 (char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  svn_wc_notify_resolved ; 
 int /*<<< orphan*/  svn_wc_notify_resolved_prop ; 

svn_error_t *
FUNC4(svn_wc_context_t *wc_ctx,
                                    const char *local_abspath,
                                    const char *propname,
                                    svn_wc_conflict_choice_t choice,
                                    const svn_string_t *merged_value,
                                    svn_wc_notify_func2_t notify_func,
                                    void *notify_baton,
                                    apr_pool_t *scratch_pool)
{
  svn_boolean_t did_resolve;
  svn_skel_t *conflicts;

  FUNC0(FUNC2(&conflicts, NULL, NULL,
                                   wc_ctx->db, local_abspath,
                                   scratch_pool, scratch_pool));

  if (!conflicts)
    return SVN_NO_ERROR;

  FUNC0(FUNC1(&did_resolve, wc_ctx->db,
                                        local_abspath, conflicts,
                                        propname, choice, NULL, merged_value,
                                        NULL, NULL, scratch_pool));

  if (did_resolve && notify_func)
    {
      svn_wc_notify_t *notify;

      /* Send a general notification if no specific property was requested. */
      if (propname == NULL || propname[0] == '\0')
        {
          notify = FUNC3(local_abspath,
                                        svn_wc_notify_resolved,
                                        scratch_pool);
        }
      else
        {
          notify = FUNC3(local_abspath,
                                        svn_wc_notify_resolved_prop,
                                        scratch_pool);
          notify->prop_name = propname;
        }

      notify_func(notify_baton, notify, scratch_pool);
    }
  return SVN_NO_ERROR;
}