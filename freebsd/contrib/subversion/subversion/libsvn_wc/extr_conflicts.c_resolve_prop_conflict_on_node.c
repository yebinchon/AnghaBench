
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ svn_wc_operation_t ;
typedef int svn_wc_conflict_choice_t ;
typedef int svn_wc__db_t ;
typedef int svn_stringbuf_t ;
typedef char svn_string_t ;
typedef int svn_skel_t ;
typedef int svn_error_t ;
typedef int svn_cancel_func_t ;
typedef int svn_boolean_t ;
typedef int apr_pool_t ;
typedef int apr_hash_t ;
typedef int apr_hash_index_t ;


 int FALSE ;
 int SVN_ERR (int ) ;
 int SVN_ERR_INCORRECT_PARAMS ;
 int * SVN_NO_ERROR ;
 int TRUE ;
 int _ (char*) ;
 int * apr_hash_copy (int *,int *) ;
 int * apr_hash_first (int *,int *) ;
 int * apr_hash_make (int *) ;
 int * apr_hash_next (int *) ;
 char* apr_hash_this_key (int *) ;
 int remove_artifact_file_if_exists (int **,int*,int *,char const*,char const*,int *,int *) ;
 int * svn_error_create (int ,int *,int ) ;
 char* svn_hash_gets (int *,char const*) ;
 int svn_hash_sets (int *,char const*,char const*) ;
 char* svn_stringbuf__morph_into_string (int *) ;
 int svn_stringbuf_from_file2 (int **,char const*,int *) ;
 int svn_wc__conflict_read_info (scalar_t__*,int *,int *,int*,int *,int *,char const*,int *,int *,int *) ;
 int svn_wc__conflict_read_prop_conflict (char const**,int **,int **,int **,int **,int *,char const*,int *,int *,int *) ;
 int svn_wc__conflict_skel_resolve (int*,int *,int *,char const*,int,char const*,int,int *,int *) ;
 int svn_wc__db_op_mark_resolved (int *,char const*,int,int,int,int *,int *) ;
 int svn_wc__db_op_set_props (int *,char const*,int *,int,int *,int *,int *) ;
 int svn_wc__db_read_pristine_props (int **,int *,char const*,int *,int *) ;
 int svn_wc__db_read_props (int **,int *,char const*,int *,int *) ;
 int svn_wc__wq_build_prej_install (int **,int *,char const*,int *,int *) ;
 int svn_wc__wq_run (int *,char const*,int ,void*,int *) ;






 scalar_t__ svn_wc_operation_merge ;

__attribute__((used)) static svn_error_t *
resolve_prop_conflict_on_node(svn_boolean_t *did_resolve,
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
  apr_hash_t *resolve_from = ((void*)0);
  svn_skel_t *work_items = ((void*)0);
  svn_wc_operation_t operation;
  svn_boolean_t prop_conflicted;
  apr_hash_t *actual_props;
  svn_boolean_t resolved_all, resolved_all_prop;

  *did_resolve = FALSE;

  SVN_ERR(svn_wc__conflict_read_info(&operation, ((void*)0), ((void*)0), &prop_conflicted,
                                     ((void*)0), db, local_abspath, conflicts,
                                     scratch_pool, scratch_pool));
  if (!prop_conflicted)
    return SVN_NO_ERROR;

  SVN_ERR(svn_wc__conflict_read_prop_conflict(&prop_reject_file,
                                              &mine_props, &their_old_props,
                                              &their_props, &conflicted_props,
                                              db, local_abspath, conflicts,
                                              scratch_pool, scratch_pool));

  if (!conflicted_props)
    {


      SVN_ERR(remove_artifact_file_if_exists(&work_items, did_resolve,
                                             db, local_abspath, prop_reject_file,
                                             scratch_pool, scratch_pool));
      SVN_ERR(svn_wc__db_op_mark_resolved(db, local_abspath, FALSE, TRUE, FALSE,
                                      work_items, scratch_pool));
      SVN_ERR(svn_wc__wq_run(db, local_abspath, cancel_func, cancel_baton,
                             scratch_pool));
      return SVN_NO_ERROR;
    }

  if (conflicted_propname[0] != '\0'
      && !svn_hash_gets(conflicted_props, conflicted_propname))
    {
      return SVN_NO_ERROR;
    }

  if (operation == svn_wc_operation_merge)
      SVN_ERR(svn_wc__db_read_pristine_props(&old_props, db, local_abspath,
                                             scratch_pool, scratch_pool));
    else
      old_props = their_old_props;

  SVN_ERR(svn_wc__db_read_props(&actual_props, db, local_abspath,
                                scratch_pool, scratch_pool));
  switch (conflict_choice)
    {
    case 133:
      resolve_from = their_old_props ? their_old_props : old_props;
      break;
    case 130:
    case 131:
      resolve_from = mine_props;
      break;
    case 128:
    case 129:
      resolve_from = their_props;
      break;
    case 132:
      if ((merged_file || merged_value) && conflicted_propname[0] != '\0')
        {
          resolve_from = apr_hash_copy(scratch_pool, actual_props);

          if (!merged_value)
            {
              svn_stringbuf_t *merged_propval;

              SVN_ERR(svn_stringbuf_from_file2(&merged_propval, merged_file,
                                               scratch_pool));

              merged_value = svn_stringbuf__morph_into_string(merged_propval);
            }
          svn_hash_sets(resolve_from, conflicted_propname, merged_value);
        }
      else
        resolve_from = ((void*)0);
      break;
    default:
      return svn_error_create(SVN_ERR_INCORRECT_PARAMS, ((void*)0),
                              _("Invalid 'conflict_result' argument"));
    }


  if (resolve_from)
    {
      apr_hash_index_t *hi;
      apr_hash_t *apply_on_props;

      if (conflicted_propname[0] == '\0')
        {

          apply_on_props = conflicted_props;
        }
      else
        {

          apply_on_props = apr_hash_make(scratch_pool);
          svn_hash_sets(apply_on_props, conflicted_propname, "");
        }


      for (hi = apr_hash_first(scratch_pool, apply_on_props);
           hi;
           hi = apr_hash_next(hi))
        {
          const char *propname = apr_hash_this_key(hi);
          svn_string_t *new_value = ((void*)0);

          new_value = svn_hash_gets(resolve_from, propname);

          svn_hash_sets(actual_props, propname, new_value);
        }
    }




  SVN_ERR(svn_wc__conflict_skel_resolve(&resolved_all, conflicts,
                                        db, local_abspath,
                                        FALSE, conflicted_propname,
                                        FALSE,
                                        scratch_pool, scratch_pool));

  if (!resolved_all)
    {

      SVN_ERR(svn_wc__conflict_read_info(((void*)0), ((void*)0), ((void*)0), &prop_conflicted,
                                         ((void*)0), db, local_abspath, conflicts,
                                         scratch_pool, scratch_pool));

      resolved_all_prop = (! prop_conflicted);
    }
  else
    {
      resolved_all_prop = TRUE;
      conflicts = ((void*)0);
    }

  if (resolved_all_prop)
    {





      SVN_ERR(remove_artifact_file_if_exists(&work_items, did_resolve,
                                             db, local_abspath,
                                             prop_reject_file,
                                             scratch_pool, scratch_pool));
    }
  else
    {

      SVN_ERR(svn_wc__wq_build_prej_install(&work_items,
                                            db, local_abspath,
                                            scratch_pool, scratch_pool));
      *did_resolve = TRUE;
    }


  SVN_ERR(svn_wc__db_op_set_props(db, local_abspath, actual_props,
                                  FALSE, conflicts, work_items,
                                  scratch_pool));

  if (resolved_all)
    {


      SVN_ERR(svn_wc__db_op_mark_resolved(db, local_abspath,
                                          FALSE, TRUE, FALSE,
                                          ((void*)0), scratch_pool));
    }

  SVN_ERR(svn_wc__wq_run(db, local_abspath, cancel_func, cancel_baton,
                         scratch_pool));

  return SVN_NO_ERROR;
}
