
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef int svn_wc__db_t ;
typedef scalar_t__ svn_wc__db_status_t ;
typedef int svn_revnum_t ;
struct TYPE_11__ {scalar_t__ kind; scalar_t__ filesize; scalar_t__ mtime; } ;
typedef TYPE_1__ svn_io_dirent2_t ;
typedef scalar_t__ svn_filesize_t ;
typedef int svn_error_t ;
struct TYPE_12__ {int (* file_closed ) (char const*,int *,int *,void*,TYPE_2__ const*,int *) ;int (* file_changed ) (char const*,int *,int *,char const*,char const*,int *,int *,int,TYPE_3__*,void*,TYPE_2__ const*,int *) ;int (* file_opened ) (void**,scalar_t__*,char const*,int *,int *,int *,void*,TYPE_2__ const*,int *,int *) ;} ;
typedef TYPE_2__ svn_diff_tree_processor_t ;
typedef int svn_diff_source_t ;
typedef int svn_checksum_t ;
typedef int svn_cancel_func_t ;
typedef scalar_t__ svn_boolean_t ;
typedef scalar_t__ apr_time_t ;
typedef int apr_pool_t ;
typedef int apr_hash_t ;
struct TYPE_13__ {scalar_t__ nelts; } ;
typedef TYPE_3__ apr_array_header_t ;


 scalar_t__ FALSE ;
 int SVN_ERR (int ) ;
 scalar_t__ SVN_INVALID_FILESIZE ;
 int SVN_INVALID_REVNUM ;
 int SVN_IS_VALID_REVNUM (int ) ;
 int * SVN_NO_ERROR ;
 int SVN_WC_TRANSLATE_TO_NF ;
 int SVN_WC_TRANSLATE_USE_GLOBAL_TMP ;
 scalar_t__ TRUE ;
 int * apr_hash_make (int *) ;
 int assert (int) ;
 int stub1 (void**,scalar_t__*,char const*,int *,int *,int *,void*,TYPE_2__ const*,int *,int *) ;
 int stub2 (char const*,int *,int *,char const*,char const*,int *,int *,int,TYPE_3__*,void*,TYPE_2__ const*,int *) ;
 int stub3 (char const*,int *,int *,void*,TYPE_2__ const*,int *) ;
 int * svn_diff__source_create (int ,int *) ;
 int svn_io_files_contents_same_p (scalar_t__*,char const*,char const*,int *) ;
 int svn_io_stat_dirent2 (TYPE_1__ const**,char const*,scalar_t__,scalar_t__,int *,int *) ;
 scalar_t__ svn_node_file ;
 int svn_prop_diffs (TYPE_3__**,int *,int *,int *) ;
 int svn_wc__db_base_get_info (scalar_t__*,int *,int *,int *,int *,int *,int *,int *,int *,int *,int const**,int *,int *,scalar_t__*,int *,int *,int *,char const*,int *,int *) ;
 int svn_wc__db_base_get_props (int **,int *,char const*,int *,int *) ;
 int svn_wc__db_pristine_get_path (char const**,int *,char const*,int const*,int *,int *) ;
 int svn_wc__db_read_info (scalar_t__*,int *,int *,int *,int *,int *,int *,int *,int *,int *,int const**,int *,int *,int *,int *,int *,int *,scalar_t__*,scalar_t__*,int *,int *,int *,scalar_t__*,scalar_t__*,int *,int *,int *,int *,char const*,int *,int *) ;
 int svn_wc__db_read_pristine_props (int **,int *,char const*,int *,int *) ;
 int svn_wc__db_read_props (int **,int *,char const*,int *,int *) ;
 scalar_t__ svn_wc__db_status_added ;
 scalar_t__ svn_wc__db_status_deleted ;
 scalar_t__ svn_wc__db_status_normal ;
 int svn_wc__internal_translated_file (char const**,char const*,int *,char const*,int,int ,void*,int *,int *) ;

svn_error_t *
svn_wc__diff_base_working_diff(svn_wc__db_t *db,
                               const char *local_abspath,
                               const char *relpath,
                               svn_revnum_t revision,
                               const svn_diff_tree_processor_t *processor,
                               void *processor_dir_baton,
                               svn_boolean_t diff_pristine,
                               svn_cancel_func_t cancel_func,
                               void *cancel_baton,
                               apr_pool_t *scratch_pool)
{
  void *file_baton = ((void*)0);
  svn_boolean_t skip = FALSE;
  svn_wc__db_status_t status;
  svn_revnum_t db_revision;
  svn_boolean_t had_props;
  svn_boolean_t props_mod;
  svn_boolean_t files_same = FALSE;
  svn_wc__db_status_t base_status;
  const svn_checksum_t *working_checksum;
  const svn_checksum_t *checksum;
  svn_filesize_t recorded_size;
  apr_time_t recorded_time;
  const char *pristine_file;
  const char *local_file;
  svn_diff_source_t *left_src;
  svn_diff_source_t *right_src;
  apr_hash_t *base_props;
  apr_hash_t *local_props;
  apr_array_header_t *prop_changes;

  SVN_ERR(svn_wc__db_read_info(&status, ((void*)0), &db_revision, ((void*)0), ((void*)0), ((void*)0),
                               ((void*)0), ((void*)0), ((void*)0), ((void*)0), &working_checksum, ((void*)0),
                               ((void*)0), ((void*)0), ((void*)0), ((void*)0), ((void*)0), &recorded_size,
                               &recorded_time, ((void*)0), ((void*)0), ((void*)0),
                               &had_props, &props_mod, ((void*)0), ((void*)0), ((void*)0),
                               db, local_abspath, scratch_pool, scratch_pool));
  checksum = working_checksum;

  assert(status == svn_wc__db_status_normal
         || status == svn_wc__db_status_added
         || (status == svn_wc__db_status_deleted && diff_pristine));

  if (status != svn_wc__db_status_normal)
    {
      SVN_ERR(svn_wc__db_base_get_info(&base_status, ((void*)0), &db_revision,
                                       ((void*)0), ((void*)0), ((void*)0), ((void*)0), ((void*)0), ((void*)0),
                                       ((void*)0), &checksum, ((void*)0), ((void*)0), &had_props,
                                       ((void*)0), ((void*)0),
                                       db, local_abspath,
                                       scratch_pool, scratch_pool));
      recorded_size = SVN_INVALID_FILESIZE;
      recorded_time = 0;
      props_mod = TRUE;
    }
  else if (diff_pristine)
    files_same = TRUE;
  else
    {
      const svn_io_dirent2_t *dirent;


      SVN_ERR(svn_io_stat_dirent2(&dirent, local_abspath,
                                  TRUE ,
                                  TRUE ,
                                  scratch_pool, scratch_pool));



      if (dirent->kind != svn_node_file
          || (dirent->kind == svn_node_file
              && dirent->filesize == recorded_size
              && dirent->mtime == recorded_time))
        {
          files_same = TRUE;
        }
    }

  if (files_same && !props_mod)
    return SVN_NO_ERROR;

  assert(checksum);

  if (!SVN_IS_VALID_REVNUM(revision))
    revision = db_revision;

  left_src = svn_diff__source_create(revision, scratch_pool);
  right_src = svn_diff__source_create(SVN_INVALID_REVNUM, scratch_pool);

  SVN_ERR(processor->file_opened(&file_baton, &skip, relpath,
                                 left_src,
                                 right_src,
                                 ((void*)0) ,
                                 processor_dir_baton,
                                 processor,
                                 scratch_pool, scratch_pool));

  if (skip)
    return SVN_NO_ERROR;

  SVN_ERR(svn_wc__db_pristine_get_path(&pristine_file,
                                       db, local_abspath, checksum,
                                       scratch_pool, scratch_pool));

  if (diff_pristine)
    SVN_ERR(svn_wc__db_pristine_get_path(&local_file,
                                         db, local_abspath,
                                         working_checksum,
                                         scratch_pool, scratch_pool));
  else if (! (had_props || props_mod))
    local_file = local_abspath;
  else if (files_same)
    local_file = pristine_file;
  else
    SVN_ERR(svn_wc__internal_translated_file(
                            &local_file, local_abspath,
                            db, local_abspath,
                            SVN_WC_TRANSLATE_TO_NF
                                | SVN_WC_TRANSLATE_USE_GLOBAL_TMP,
                            cancel_func, cancel_baton,
                            scratch_pool, scratch_pool));

  if (! files_same)
    SVN_ERR(svn_io_files_contents_same_p(&files_same, local_file,
                                         pristine_file, scratch_pool));

  if (had_props)
    SVN_ERR(svn_wc__db_base_get_props(&base_props, db, local_abspath,
                                      scratch_pool, scratch_pool));
  else
    base_props = apr_hash_make(scratch_pool);

  if (status == svn_wc__db_status_normal && (diff_pristine || !props_mod))
    local_props = base_props;
  else if (diff_pristine)
    SVN_ERR(svn_wc__db_read_pristine_props(&local_props, db, local_abspath,
                                           scratch_pool, scratch_pool));
  else
    SVN_ERR(svn_wc__db_read_props(&local_props, db, local_abspath,
                                  scratch_pool, scratch_pool));

  SVN_ERR(svn_prop_diffs(&prop_changes, local_props, base_props, scratch_pool));

  if (prop_changes->nelts || !files_same)
    {
      SVN_ERR(processor->file_changed(relpath,
                                      left_src,
                                      right_src,
                                      pristine_file,
                                      local_file,
                                      base_props,
                                      local_props,
                                      ! files_same,
                                      prop_changes,
                                      file_baton,
                                      processor,
                                      scratch_pool));
    }
  else
    {
      SVN_ERR(processor->file_closed(relpath,
                                     left_src,
                                     right_src,
                                     file_baton,
                                     processor,
                                     scratch_pool));
    }

  return SVN_NO_ERROR;
}
