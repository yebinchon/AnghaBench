#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_5__ ;
typedef  struct TYPE_15__   TYPE_4__ ;
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  svn_wc_conflict_choice_t ;
typedef  int /*<<< orphan*/  svn_string_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
struct TYPE_14__ {int /*<<< orphan*/  wc_ctx; int /*<<< orphan*/  notify_baton2; int /*<<< orphan*/  notify_func2; } ;
typedef  TYPE_3__ svn_client_ctx_t ;
struct TYPE_15__ {int /*<<< orphan*/ * legacy_prop_conflict_propname; int /*<<< orphan*/  prop_conflicts; int /*<<< orphan*/  resolved_props; } ;
typedef  TYPE_4__ svn_client_conflict_t ;
struct TYPE_12__ {char* propname; int /*<<< orphan*/ * merged_propval; } ;
struct TYPE_13__ {TYPE_1__ prop; } ;
struct TYPE_16__ {TYPE_2__ type_data; } ;
typedef  TYPE_5__ svn_client_conflict_option_t ;
typedef  scalar_t__ svn_client_conflict_option_id_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;
typedef  int /*<<< orphan*/  apr_hash_index_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 void* FUNC5 (int /*<<< orphan*/ *) ; 
 char const* FUNC6 (int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__) ; 
 char* FUNC8 (TYPE_4__*) ; 
 scalar_t__ FUNC9 (TYPE_5__*) ; 
 scalar_t__ svn_client_conflict_option_merged_text ; 
 int /*<<< orphan*/ * FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,char const*,TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC12 (char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC13 (char const**,int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC14 (int /*<<< orphan*/ ,char const*,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/  const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static svn_error_t *
FUNC16(svn_client_conflict_option_t *option,
                      svn_client_conflict_t *conflict,
                      svn_client_ctx_t *ctx,
                      apr_pool_t *scratch_pool)
{
  svn_client_conflict_option_id_t option_id;
  svn_wc_conflict_choice_t conflict_choice;
  const char *local_abspath;
  const char *lock_abspath;
  const char *propname = option->type_data.prop.propname;
  svn_error_t *err;
  const svn_string_t *merged_value;

  option_id = FUNC9(option);
  conflict_choice = FUNC7(option_id);
  local_abspath = FUNC8(conflict);

  if (option_id == svn_client_conflict_option_merged_text)
    merged_value = option->type_data.prop.merged_propval;
  else
    merged_value = NULL;

  FUNC0(FUNC13(&lock_abspath, ctx->wc_ctx,
                                                 local_abspath,
                                                 scratch_pool, scratch_pool));
  err = FUNC14(ctx->wc_ctx, local_abspath,
                                            propname, conflict_choice,
                                            merged_value,
                                            ctx->notify_func2,
                                            ctx->notify_baton2,
                                            scratch_pool);
  err = FUNC10(err, FUNC15(ctx->wc_ctx,
                                                                 lock_abspath,
                                                                 scratch_pool));
  FUNC12(local_abspath, scratch_pool);
  FUNC0(err);

  if (propname[0] == '\0')
    {
      apr_hash_index_t *hi;

      /* All properties have been resolved to the same option. */
      for (hi = FUNC2(scratch_pool, conflict->prop_conflicts);
           hi;
           hi = FUNC3(hi))
        {
          const char *this_propname = FUNC5(hi);

          FUNC11(conflict->resolved_props,
                        FUNC6(FUNC4(conflict->resolved_props),
                                    this_propname),
                        option);
          FUNC11(conflict->prop_conflicts, this_propname, NULL);
        }

      conflict->legacy_prop_conflict_propname = NULL;
    }
  else
    {
      FUNC11(conflict->resolved_props,
                    FUNC6(FUNC4(conflict->resolved_props),
                                propname),
                   option);
      FUNC11(conflict->prop_conflicts, propname, NULL);

      if (FUNC1(conflict->prop_conflicts) > 0)
        conflict->legacy_prop_conflict_propname =
            FUNC5(FUNC2(scratch_pool,
                                             conflict->prop_conflicts));
      else
        conflict->legacy_prop_conflict_propname = NULL;
    }

  return SVN_NO_ERROR;
}