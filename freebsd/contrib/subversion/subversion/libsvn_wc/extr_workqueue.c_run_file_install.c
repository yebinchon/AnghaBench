
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int work_item_baton_t ;
typedef int svn_wc__db_t ;
typedef scalar_t__ svn_wc__db_status_t ;
typedef int svn_wc__db_lock_t ;
typedef int svn_subst_eol_style_t ;
typedef int svn_stream_t ;
struct TYPE_6__ {int len; int data; struct TYPE_6__* next; TYPE_1__* children; } ;
typedef TYPE_2__ svn_skel_t ;
typedef int svn_error_t ;
typedef int svn_checksum_t ;
typedef int svn_cancel_func_t ;
typedef int svn_boolean_t ;
typedef scalar_t__ apr_time_t ;
typedef int apr_pool_t ;
typedef scalar_t__ apr_int64_t ;
typedef int apr_hash_t ;
struct TYPE_5__ {TYPE_2__* next; } ;


 int FALSE ;
 int SVN_ERR (int ) ;
 int SVN_ERR_WC_CORRUPT_TEXT_BASE ;
 int * SVN_NO_ERROR ;
 int SVN_PROP_EXECUTABLE ;
 int SVN_PROP_NEEDS_LOCK ;
 int TRUE ;
 int _ (char*) ;
 char* apr_pstrmemdup (int *,int ,int ) ;
 int get_and_record_fileinfo (int *,char const*,int ,int *) ;
 int svn_dirent_local_style (char const*,int *) ;
 int * svn_error_createf (int ,int *,int ,int ) ;
 scalar_t__ svn_hash_gets (int *,int ) ;
 int svn_io_set_file_affected_time (scalar_t__,char const*,int *) ;
 int svn_io_set_file_executable (char const*,int ,int ,int *) ;
 int svn_io_set_file_read_only (char const*,int ,int *) ;
 int svn_skel__parse_int (scalar_t__*,TYPE_2__*,int *) ;
 int svn_stream__create_for_install (int **,char const*,int *,int *) ;
 int svn_stream__install_stream (int *,char const*,int ,int *) ;
 int svn_stream_copy3 (int *,int *,int ,void*,int *) ;
 int svn_stream_open_readonly (int **,char const*,int *,int *) ;
 int svn_subst_create_specialfile (int **,char const*,int *,int *) ;
 int * svn_subst_stream_translated (int *,char const*,int ,int *,int ,int *) ;
 scalar_t__ svn_subst_translation_required (int ,char const*,int *,int ,int ) ;
 int svn_wc__db_from_relpath (char const**,int *,char const*,char const*,int *,int *) ;
 int svn_wc__db_pristine_get_future_path (char const**,char const*,int const*,int *,int *) ;
 int svn_wc__db_read_info (scalar_t__*,int *,int *,int *,int *,int *,int *,int *,int *,int *,int *,int *,int *,int *,int *,int *,int **,int *,int *,int *,int *,int *,int *,int *,int *,int *,int *,int *,char const*,int *,int *) ;
 int svn_wc__db_read_node_install_info (char const**,int const**,int **,scalar_t__*,int *,char const*,char const*,int *,int *) ;
 scalar_t__ svn_wc__db_status_added ;
 int svn_wc__db_temp_wcroot_tempdir (char const**,int *,char const*,int *,int *) ;
 int svn_wc__get_translate_info (int *,char const**,int **,int*,int *,char const*,int *,int ,int *,int *) ;

__attribute__((used)) static svn_error_t *
run_file_install(work_item_baton_t *wqb,
                 svn_wc__db_t *db,
                 const svn_skel_t *work_item,
                 const char *wri_abspath,
                 svn_cancel_func_t cancel_func,
                 void *cancel_baton,
                 apr_pool_t *scratch_pool)
{
  const svn_skel_t *arg1 = work_item->children->next;
  const svn_skel_t *arg4 = arg1->next->next->next;
  const char *local_relpath;
  const char *local_abspath;
  svn_boolean_t use_commit_times;
  svn_boolean_t record_fileinfo;
  svn_boolean_t special;
  svn_stream_t *src_stream;
  svn_subst_eol_style_t style;
  const char *eol;
  apr_hash_t *keywords;
  const char *temp_dir_abspath;
  svn_stream_t *dst_stream;
  apr_int64_t val;
  const char *wcroot_abspath;
  const char *source_abspath;
  const svn_checksum_t *checksum;
  apr_hash_t *props;
  apr_time_t changed_date;

  local_relpath = apr_pstrmemdup(scratch_pool, arg1->data, arg1->len);
  SVN_ERR(svn_wc__db_from_relpath(&local_abspath, db, wri_abspath,
                                  local_relpath, scratch_pool, scratch_pool));

  SVN_ERR(svn_skel__parse_int(&val, arg1->next, scratch_pool));
  use_commit_times = (val != 0);
  SVN_ERR(svn_skel__parse_int(&val, arg1->next->next, scratch_pool));
  record_fileinfo = (val != 0);

  SVN_ERR(svn_wc__db_read_node_install_info(&wcroot_abspath,
                                            &checksum, &props,
                                            &changed_date,
                                            db, local_abspath, wri_abspath,
                                            scratch_pool, scratch_pool));

  if (arg4 != ((void*)0))
    {

      local_relpath = apr_pstrmemdup(scratch_pool, arg4->data, arg4->len);
      SVN_ERR(svn_wc__db_from_relpath(&source_abspath, db, wri_abspath,
                                      local_relpath,
                                      scratch_pool, scratch_pool));
    }
  else if (! checksum)
    {







      return svn_error_createf(SVN_ERR_WC_CORRUPT_TEXT_BASE, ((void*)0),
                               _("Can't install '%s' from pristine store, "
                                 "because no checksum is recorded for this "
                                 "file"),
                               svn_dirent_local_style(local_abspath,
                                                      scratch_pool));
    }
  else
    {
      SVN_ERR(svn_wc__db_pristine_get_future_path(&source_abspath,
                                                  wcroot_abspath,
                                                  checksum,
                                                  scratch_pool, scratch_pool));
    }

  SVN_ERR(svn_stream_open_readonly(&src_stream, source_abspath,
                                   scratch_pool, scratch_pool));


  SVN_ERR(svn_wc__get_translate_info(&style, &eol,
                                     &keywords,
                                     &special, db, local_abspath,
                                     props, FALSE,
                                     scratch_pool, scratch_pool));
  if (special)
    {


      SVN_ERR(svn_subst_create_specialfile(&dst_stream, local_abspath,
                                           scratch_pool, scratch_pool));



      SVN_ERR(svn_stream_copy3(src_stream, dst_stream,
                               cancel_func, cancel_baton,
                               scratch_pool));




      return SVN_NO_ERROR;
    }

  if (svn_subst_translation_required(style, eol, keywords,
                                     FALSE ,
                                     TRUE ))
    {

      src_stream = svn_subst_stream_translated(src_stream, eol,
                                               TRUE ,
                                               keywords,
                                               TRUE ,
                                               scratch_pool);
    }


  SVN_ERR(svn_wc__db_temp_wcroot_tempdir(&temp_dir_abspath,
                                         db, wcroot_abspath,
                                         scratch_pool, scratch_pool));




  SVN_ERR(svn_stream__create_for_install(&dst_stream, temp_dir_abspath,
                                         scratch_pool, scratch_pool));



  SVN_ERR(svn_stream_copy3(src_stream, dst_stream,
                           cancel_func, cancel_baton,
                           scratch_pool));





  SVN_ERR(svn_stream__install_stream(dst_stream, local_abspath,
                                     TRUE , scratch_pool));



  if (props && svn_hash_gets(props, SVN_PROP_EXECUTABLE))
    SVN_ERR(svn_io_set_file_executable(local_abspath, TRUE, FALSE,
                                       scratch_pool));




  if (props && svn_hash_gets(props, SVN_PROP_NEEDS_LOCK))
    {
      svn_wc__db_status_t status;
      svn_wc__db_lock_t *lock;
      SVN_ERR(svn_wc__db_read_info(&status, ((void*)0), ((void*)0), ((void*)0), ((void*)0), ((void*)0), ((void*)0),
                                   ((void*)0), ((void*)0), ((void*)0), ((void*)0), ((void*)0), ((void*)0), ((void*)0),
                                   ((void*)0), ((void*)0), &lock, ((void*)0), ((void*)0), ((void*)0), ((void*)0),
                                   ((void*)0), ((void*)0), ((void*)0), ((void*)0), ((void*)0), ((void*)0),
                                   db, local_abspath,
                                   scratch_pool, scratch_pool));

      if (!lock && status != svn_wc__db_status_added)
        SVN_ERR(svn_io_set_file_read_only(local_abspath, FALSE, scratch_pool));
    }

  if (use_commit_times)
    {
      if (changed_date)
        SVN_ERR(svn_io_set_file_affected_time(changed_date,
                                              local_abspath,
                                              scratch_pool));
    }


  if (record_fileinfo)
    {
      SVN_ERR(get_and_record_fileinfo(wqb, local_abspath,
                                      FALSE ,
                                      scratch_pool));
    }

  return SVN_NO_ERROR;
}
