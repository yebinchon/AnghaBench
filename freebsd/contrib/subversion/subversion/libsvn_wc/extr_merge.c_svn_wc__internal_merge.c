
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int svn_wc__db_t ;
typedef int svn_skel_t ;
struct TYPE_9__ {TYPE_1__* value; } ;
typedef TYPE_2__ svn_prop_t ;
typedef int svn_error_t ;
typedef int svn_cancel_func_t ;
typedef int svn_boolean_t ;
struct TYPE_10__ {char const* local_abspath; char const* wri_abspath; char const* diff3_cmd; int * old_actual_props; int const* merge_options; int const* prop_diff; int * db; } ;
typedef TYPE_3__ merge_target_t ;
typedef enum svn_wc_merge_outcome_t { ____Placeholder_svn_wc_merge_outcome_t } svn_wc_merge_outcome_t ;
typedef int apr_pool_t ;
typedef int apr_hash_t ;
typedef int apr_array_header_t ;
struct TYPE_8__ {char const* data; } ;


 int FALSE ;
 int SVN_ERR (int ) ;
 int SVN_ERR_ASSERT (int ) ;
 int * SVN_NO_ERROR ;
 int SVN_PROP_MIME_TYPE ;
 int detranslate_wc_file (char const**,TYPE_3__*,int,char const*,int ,void*,int *,int *) ;
 TYPE_2__* get_prop (int const*,int ) ;
 int maybe_update_target_eols (char const**,int const*,char const*,int ,void*,int *,int *) ;
 int merge_binary_file (int **,int **,int*,TYPE_3__*,char const*,char const*,char const*,char const*,char const*,int,char const*,int *,int *) ;
 int merge_file_trivial (int **,int*,char const*,char const*,char const*,char const*,int,int *,int ,void*,int *,int *) ;
 int merge_text_file (int **,int **,int*,TYPE_3__*,char const*,char const*,char const*,char const*,char const*,int,char const*,int ,void*,int *,int *) ;
 int svn_dirent_is_absolute (char const*) ;
 int svn_mime_type_is_binary (char const*) ;
 char* svn_prop_get_value (int *,int ) ;
 int svn_wc__wq_build_sync_file_flags (int **,int *,char const*,int *,int *) ;
 int * svn_wc__wq_merge (int *,int *,int *) ;
 int svn_wc_merge_no_merge ;

svn_error_t *
svn_wc__internal_merge(svn_skel_t **work_items,
                       svn_skel_t **conflict_skel,
                       enum svn_wc_merge_outcome_t *merge_outcome,
                       svn_wc__db_t *db,
                       const char *left_abspath,
                       const char *right_abspath,
                       const char *target_abspath,
                       const char *wri_abspath,
                       const char *left_label,
                       const char *right_label,
                       const char *target_label,
                       apr_hash_t *old_actual_props,
                       svn_boolean_t dry_run,
                       const char *diff3_cmd,
                       const apr_array_header_t *merge_options,
                       const apr_array_header_t *prop_diff,
                       svn_cancel_func_t cancel_func,
                       void *cancel_baton,
                       apr_pool_t *result_pool,
                       apr_pool_t *scratch_pool)
{
  const char *detranslated_target_abspath;
  svn_boolean_t is_binary = FALSE;
  const svn_prop_t *mimeprop;
  svn_skel_t *work_item;
  merge_target_t mt;

  SVN_ERR_ASSERT(svn_dirent_is_absolute(left_abspath));
  SVN_ERR_ASSERT(svn_dirent_is_absolute(right_abspath));
  SVN_ERR_ASSERT(svn_dirent_is_absolute(target_abspath));

  *work_items = ((void*)0);


  mt.db = db;
  mt.local_abspath = target_abspath;
  mt.wri_abspath = wri_abspath;
  mt.old_actual_props = old_actual_props;
  mt.prop_diff = prop_diff;
  mt.diff3_cmd = diff3_cmd;
  mt.merge_options = merge_options;


  if ((mimeprop = get_prop(prop_diff, SVN_PROP_MIME_TYPE))
      && mimeprop->value)
    is_binary = svn_mime_type_is_binary(mimeprop->value->data);
  else
    {
      const char *value = svn_prop_get_value(mt.old_actual_props,
                                             SVN_PROP_MIME_TYPE);

      is_binary = value && svn_mime_type_is_binary(value);
    }

  SVN_ERR(detranslate_wc_file(&detranslated_target_abspath, &mt,
                              (! is_binary) && diff3_cmd != ((void*)0),
                              target_abspath,
                              cancel_func, cancel_baton,
                              scratch_pool, scratch_pool));




  SVN_ERR(maybe_update_target_eols(&left_abspath, prop_diff, left_abspath,
                                   cancel_func, cancel_baton,
                                   scratch_pool, scratch_pool));

  SVN_ERR(merge_file_trivial(work_items, merge_outcome,
                             left_abspath, right_abspath,
                             target_abspath, detranslated_target_abspath,
                             dry_run, db, cancel_func, cancel_baton,
                             result_pool, scratch_pool));
  if (*merge_outcome == svn_wc_merge_no_merge)
    {



      if (is_binary)
        {

          SVN_ERR(merge_binary_file(work_items,
                                    conflict_skel,
                                    merge_outcome,
                                    &mt,
                                    left_abspath,
                                    right_abspath,
                                    left_label,
                                    right_label,
                                    target_label,
                                    dry_run,
                                    detranslated_target_abspath,
                                    result_pool, scratch_pool));
        }
      else
        {
          SVN_ERR(merge_text_file(work_items,
                                  conflict_skel,
                                  merge_outcome,
                                  &mt,
                                  left_abspath,
                                  right_abspath,
                                  left_label,
                                  right_label,
                                  target_label,
                                  dry_run,
                                  detranslated_target_abspath,
                                  cancel_func, cancel_baton,
                                  result_pool, scratch_pool));
        }
    }




  if (! dry_run)
    {
      SVN_ERR(svn_wc__wq_build_sync_file_flags(&work_item, db,
                                               target_abspath,
                                               result_pool, scratch_pool));
      *work_items = svn_wc__wq_merge(*work_items, work_item, result_pool);
    }

  return SVN_NO_ERROR;
}
