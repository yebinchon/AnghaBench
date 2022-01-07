
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int svn_wc__db_t ;
typedef int svn_skel_t ;
typedef scalar_t__ svn_revnum_t ;
typedef int svn_error_t ;
typedef int svn_checksum_t ;
typedef int svn_cancel_func_t ;
typedef int svn_boolean_t ;
typedef enum svn_wc_merge_outcome_t { ____Placeholder_svn_wc_merge_outcome_t } svn_wc_merge_outcome_t ;
typedef int apr_pool_t ;
typedef int apr_hash_t ;
struct TYPE_6__ {scalar_t__ nelts; } ;
typedef TYPE_1__ apr_array_header_t ;


 int FALSE ;
 int SVN_ERR (int ) ;
 int SVN_IS_VALID_REVNUM (scalar_t__) ;
 int * SVN_NO_ERROR ;
 int TRUE ;
 char* apr_psprintf (int *,char*,char*,char const*,...) ;
 int get_empty_tmp_file (char const**,int *,char const*,int *,int *) ;
 scalar_t__ svn_cstring_match_glob_list (char const*,TYPE_1__ const*) ;
 int svn_path_splitext (int *,char const**,char const*,int *) ;
 int svn_wc__db_pristine_get_path (char const**,int *,char const*,int const*,int *,int *) ;
 int svn_wc__internal_merge (int **,int **,int*,int *,char const*,char const*,char const*,char const*,char const*,char const*,char const*,int *,int,char const*,int *,TYPE_1__ const*,int ,void*,int *,int *) ;
 int svn_wc__wq_build_file_remove (int **,int *,char const*,char const*,int *,int *) ;
 int * svn_wc__wq_merge (int *,int *,int *) ;
 int svn_wc_merge_conflict ;
 int svn_wc_merge_unchanged ;

svn_error_t *
svn_wc__perform_file_merge(svn_skel_t **work_items,
                           svn_skel_t **conflict_skel,
                           svn_boolean_t *found_conflict,
                           svn_wc__db_t *db,
                           const char *local_abspath,
                           const char *wri_abspath,
                           const svn_checksum_t *new_checksum,
                           const svn_checksum_t *original_checksum,
                           apr_hash_t *old_actual_props,
                           const apr_array_header_t *ext_patterns,
                           svn_revnum_t old_revision,
                           svn_revnum_t target_revision,
                           const apr_array_header_t *propchanges,
                           const char *diff3_cmd,
                           svn_cancel_func_t cancel_func,
                           void *cancel_baton,
                           apr_pool_t *result_pool,
                           apr_pool_t *scratch_pool)
{



  const char *oldrev_str, *newrev_str, *mine_str;
  const char *merge_left;
  svn_boolean_t delete_left = FALSE;
  const char *path_ext = "";
  const char *new_pristine_abspath;
  enum svn_wc_merge_outcome_t merge_outcome = svn_wc_merge_unchanged;
  svn_skel_t *work_item;

  *work_items = ((void*)0);

  SVN_ERR(svn_wc__db_pristine_get_path(&new_pristine_abspath,
                                       db, wri_abspath, new_checksum,
                                       scratch_pool, scratch_pool));






  if (ext_patterns && ext_patterns->nelts)
    {
      svn_path_splitext(((void*)0), &path_ext, local_abspath, scratch_pool);
      if (! (*path_ext && svn_cstring_match_glob_list(path_ext, ext_patterns)))
        path_ext = "";
    }



  if (!SVN_IS_VALID_REVNUM(old_revision))
    old_revision = 0;

  oldrev_str = apr_psprintf(scratch_pool, ".r%ld%s%s",
                            old_revision,
                            *path_ext ? "." : "",
                            *path_ext ? path_ext : "");

  newrev_str = apr_psprintf(scratch_pool, ".r%ld%s%s",
                            target_revision,
                            *path_ext ? "." : "",
                            *path_ext ? path_ext : "");
  mine_str = apr_psprintf(scratch_pool, ".mine%s%s",
                          *path_ext ? "." : "",
                          *path_ext ? path_ext : "");

  if (! original_checksum)
    {
      SVN_ERR(get_empty_tmp_file(&merge_left, db, wri_abspath,
                                 result_pool, scratch_pool));
      delete_left = TRUE;
    }
  else
    SVN_ERR(svn_wc__db_pristine_get_path(&merge_left, db, wri_abspath,
                                         original_checksum,
                                         result_pool, scratch_pool));




  SVN_ERR(svn_wc__internal_merge(&work_item,
                                 conflict_skel,
                                 &merge_outcome,
                                 db,
                                 merge_left,
                                 new_pristine_abspath,
                                 local_abspath,
                                 wri_abspath,
                                 oldrev_str, newrev_str, mine_str,
                                 old_actual_props,
                                 FALSE ,
                                 diff3_cmd, ((void*)0), propchanges,
                                 cancel_func, cancel_baton,
                                 result_pool, scratch_pool));

  *work_items = svn_wc__wq_merge(*work_items, work_item, result_pool);
  *found_conflict = (merge_outcome == svn_wc_merge_conflict);


  if (delete_left)
    {
      SVN_ERR(svn_wc__wq_build_file_remove(&work_item, db, wri_abspath,
                                           merge_left,
                                           result_pool, scratch_pool));
      *work_items = svn_wc__wq_merge(*work_items, work_item, result_pool);
    }

  return SVN_NO_ERROR;
}
