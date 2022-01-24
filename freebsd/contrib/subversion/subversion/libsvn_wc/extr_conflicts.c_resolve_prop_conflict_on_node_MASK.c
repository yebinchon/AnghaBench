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
typedef  scalar_t__ svn_wc_operation_t ;
typedef  int svn_wc_conflict_choice_t ;
typedef  int /*<<< orphan*/  svn_wc__db_t ;
typedef  int /*<<< orphan*/  svn_stringbuf_t ;
typedef  char svn_string_t ;
typedef  int /*<<< orphan*/  svn_skel_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  int /*<<< orphan*/  svn_cancel_func_t ;
typedef  int svn_boolean_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;
typedef  int /*<<< orphan*/  apr_hash_t ;
typedef  int /*<<< orphan*/  apr_hash_index_t ;

/* Variables and functions */
 int FALSE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SVN_ERR_INCORRECT_PARAMS ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int TRUE ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ *) ; 
 char* FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ **,int*,int /*<<< orphan*/ *,char const*,char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 char* FUNC9 (int /*<<< orphan*/ *,char const*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,char const*,char const*) ; 
 char* FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ **,char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (scalar_t__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (char const**,int /*<<< orphan*/ **,int /*<<< orphan*/ **,int /*<<< orphan*/ **,int /*<<< orphan*/ **,int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,char const*,int,char const*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *,char const*,int,int,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ **,int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ **,int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ **,int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ ,void*,int /*<<< orphan*/ *) ; 
#define  svn_wc_conflict_choose_base 133 
#define  svn_wc_conflict_choose_merged 132 
#define  svn_wc_conflict_choose_mine_conflict 131 
#define  svn_wc_conflict_choose_mine_full 130 
#define  svn_wc_conflict_choose_theirs_conflict 129 
#define  svn_wc_conflict_choose_theirs_full 128 
 scalar_t__ svn_wc_operation_merge ; 

__attribute__((used)) static svn_error_t *
FUNC22(svn_boolean_t *did_resolve,
                              svn_wc__db_t *db,
                              const char *local_abspath,
                              svn_skel_t *conflicts,
                              const char *conflicted_propname,
                              svn_wc_conflict_choice_t conflict_choice,
                              const char *merged_file,
                              const svn_string_t *merged_value,
                              svn_cancel_func_t cancel_func,
                              void *cancel_baton,
                              apr_pool_t *scratch_pool)
{
  const char *prop_reject_file;
  apr_hash_t *mine_props;
  apr_hash_t *their_old_props;
  apr_hash_t *their_props;
  apr_hash_t *conflicted_props;
  apr_hash_t *old_props;
  apr_hash_t *resolve_from = NULL;
  svn_skel_t *work_items = NULL;
  svn_wc_operation_t operation;
  svn_boolean_t prop_conflicted;
  apr_hash_t *actual_props;
  svn_boolean_t resolved_all, resolved_all_prop;

  *did_resolve = FALSE;

  FUNC0(FUNC13(&operation, NULL, NULL, &prop_conflicted,
                                     NULL, db, local_abspath, conflicts,
                                     scratch_pool, scratch_pool));
  if (!prop_conflicted)
    return SVN_NO_ERROR;

  FUNC0(FUNC14(&prop_reject_file,
                                              &mine_props, &their_old_props,
                                              &their_props, &conflicted_props,
                                              db, local_abspath, conflicts,
                                              scratch_pool, scratch_pool));

  if (!conflicted_props)
    {
      /* We have a pre 1.8 property conflict. Just mark it resolved */

      FUNC0(FUNC7(&work_items, did_resolve,
                                             db, local_abspath, prop_reject_file,
                                             scratch_pool, scratch_pool));
      FUNC0(FUNC16(db, local_abspath, FALSE, TRUE, FALSE,
                                      work_items, scratch_pool));
      FUNC0(FUNC21(db, local_abspath, cancel_func, cancel_baton,
                             scratch_pool));
      return SVN_NO_ERROR;
    }

  if (conflicted_propname[0] != '\0'
      && !FUNC9(conflicted_props, conflicted_propname))
    {
      return SVN_NO_ERROR; /* This property is not conflicted! */
    }

  if (operation == svn_wc_operation_merge)
      FUNC0(FUNC18(&old_props, db, local_abspath,
                                             scratch_pool, scratch_pool));
    else
      old_props = their_old_props;

  FUNC0(FUNC19(&actual_props, db, local_abspath,
                                scratch_pool, scratch_pool));

  /* We currently handle *_conflict as *_full as this argument is currently
     always applied for all conflicts on a node at the same time. Giving
     an error would break some tests that assumed that this would just
     resolve property conflicts to working.

     An alternative way to handle these conflicts would be to just copy all
     property state from mine/theirs on the _full option instead of just the
     conflicted properties. In some ways this feels like a sensible option as
     that would take both properties and text from mine/theirs, but when not
     both properties and text are conflicted we would fail in doing so.
   */
  switch (conflict_choice)
    {
    case svn_wc_conflict_choose_base:
      resolve_from = their_old_props ? their_old_props : old_props;
      break;
    case svn_wc_conflict_choose_mine_full:
    case svn_wc_conflict_choose_mine_conflict:
      resolve_from = mine_props;
      break;
    case svn_wc_conflict_choose_theirs_full:
    case svn_wc_conflict_choose_theirs_conflict:
      resolve_from = their_props;
      break;
    case svn_wc_conflict_choose_merged:
      if ((merged_file || merged_value) && conflicted_propname[0] != '\0')
        {
          resolve_from = FUNC2(scratch_pool, actual_props);

          if (!merged_value)
            {
              svn_stringbuf_t *merged_propval;

              FUNC0(FUNC12(&merged_propval, merged_file,
                                               scratch_pool));

              merged_value = FUNC11(merged_propval);
            }
          FUNC10(resolve_from, conflicted_propname, merged_value);
        }
      else
        resolve_from = NULL;
      break;
    default:
      return FUNC8(SVN_ERR_INCORRECT_PARAMS, NULL,
                              FUNC1("Invalid 'conflict_result' argument"));
    }


  if (resolve_from)
    {
      apr_hash_index_t *hi;
      apr_hash_t *apply_on_props;

      if (conflicted_propname[0] == '\0')
        {
          /* Apply to all conflicted properties */
          apply_on_props = conflicted_props;
        }
      else
        {
          /* Apply to a single property */
          apply_on_props = FUNC4(scratch_pool);
          FUNC10(apply_on_props, conflicted_propname, "");
        }

      /* Apply the selected changes */
      for (hi = FUNC3(scratch_pool, apply_on_props);
           hi;
           hi = FUNC5(hi))
        {
          const char *propname = FUNC6(hi);
          svn_string_t *new_value = NULL;

          new_value = FUNC9(resolve_from, propname);

          FUNC10(actual_props, propname, new_value);
        }
    }
  /*else the user accepted the properties as-is */

  /* This function handles conflicted_propname "" as resolving
     all property conflicts... Just what we need here */
  FUNC0(FUNC15(&resolved_all, conflicts,
                                        db, local_abspath,
                                        FALSE, conflicted_propname,
                                        FALSE,
                                        scratch_pool, scratch_pool));

  if (!resolved_all)
    {
      /* Are there still property conflicts left? (or only...) */
      FUNC0(FUNC13(NULL, NULL, NULL, &prop_conflicted,
                                         NULL, db, local_abspath, conflicts,
                                         scratch_pool, scratch_pool));

      resolved_all_prop = (! prop_conflicted);
    }
  else
    {
      resolved_all_prop = TRUE;
      conflicts = NULL;
    }

  if (resolved_all_prop)
    {
      /* Legacy behavior: Only report property conflicts as resolved when the
         property reject file exists

         If not the UI shows the conflict as already resolved
         (and in this case we just remove the in-db conflict) */
      FUNC0(FUNC7(&work_items, did_resolve,
                                             db, local_abspath,
                                             prop_reject_file,
                                             scratch_pool, scratch_pool));
    }
  else
    {
      /* Create a new prej file, based on the remaining conflicts */
      FUNC0(FUNC20(&work_items,
                                            db, local_abspath,
                                            scratch_pool, scratch_pool));
      *did_resolve = TRUE; /* We resolved a property conflict */
    }

  /* This installs the updated conflict skel */
  FUNC0(FUNC17(db, local_abspath, actual_props,
                                  FALSE, conflicts, work_items,
                                  scratch_pool));

  if (resolved_all)
    {
      /* Remove the whole conflict. Should probably be integrated
         into the op_set_props() call */
      FUNC0(FUNC16(db, local_abspath,
                                          FALSE, TRUE, FALSE,
                                          NULL, scratch_pool));
    }

  FUNC0(FUNC21(db, local_abspath, cancel_func, cancel_baton,
                         scratch_pool));

  return SVN_NO_ERROR;
}