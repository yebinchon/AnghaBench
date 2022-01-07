
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_26__ TYPE_2__ ;
typedef struct TYPE_25__ TYPE_1__ ;


struct TYPE_25__ {int * db; } ;
typedef TYPE_1__ svn_wc_context_t ;
typedef int svn_wc__db_t ;
typedef int svn_wc__db_status_t ;
typedef int svn_wc__db_install_data_t ;
typedef int svn_stream_t ;
typedef int svn_skel_t ;
typedef int svn_revnum_t ;
typedef scalar_t__ svn_node_kind_t ;
struct TYPE_26__ {scalar_t__ apr_err; } ;
typedef TYPE_2__ svn_error_t ;
typedef int svn_checksum_t ;
typedef int svn_cancel_func_t ;
typedef int svn_boolean_t ;
typedef int apr_time_t ;
typedef int apr_pool_t ;
typedef int apr_hash_t ;
typedef int apr_array_header_t ;


 int FALSE ;
 int SVN_ERR (TYPE_2__*) ;
 int SVN_ERR_ASSERT (char const*) ;
 int SVN_ERR_ENTRY_EXISTS ;
 int SVN_ERR_ENTRY_NOT_FOUND ;
 int SVN_ERR_NODE_UNEXPECTED_KIND ;
 int SVN_ERR_UNSUPPORTED_FEATURE ;
 scalar_t__ SVN_ERR_WC_PATH_NOT_FOUND ;
 int SVN_ERR_WC_SCHEDULE_CONFLICT ;
 int SVN_INVALID_REVNUM ;
 int TRUE ;
 int _ (char*) ;
 TYPE_2__* accumulate_last_change (int *,int *,char const**,int *,int *,int *) ;
 TYPE_2__* svn_categorize_props (int ,int **,int *,int **,int *) ;
 char* svn_dirent_dirname (char const*,int *) ;
 char const* svn_dirent_is_absolute (char const*) ;
 int svn_dirent_local_style (char const*,int *) ;
 int svn_error_clear (TYPE_2__*) ;
 TYPE_2__* svn_error_createf (int ,TYPE_2__*,int ,char const*,...) ;
 TYPE_2__* svn_error_trace (TYPE_2__*) ;
 int svn_io_file_del_none ;
 scalar_t__ svn_node_dir ;
 int * svn_prop_array_to_hash (int *,int *) ;
 int svn_prop_hash_to_array (int *,int *) ;
 TYPE_2__* svn_stream_copy3 (int *,int *,int ,void*,int *) ;
 TYPE_2__* svn_stream_open_unique (int **,char const**,char const*,int ,int *,int *) ;
 char* svn_uri_skip_ancestor (char const*,char const*,int *) ;
 TYPE_2__* svn_wc__db_op_copy_file (int *,char const*,int *,int ,int ,char const*,char const*,char const*,char const*,int ,int *,int ,int *,int ,int *,int *,int *) ;
 TYPE_2__* svn_wc__db_pristine_install (int *,int *,int *,int *) ;
 TYPE_2__* svn_wc__db_pristine_prepare_install (int **,int **,int **,int **,int *,char const*,int *,int *) ;
 TYPE_2__* svn_wc__db_read_info (int*,scalar_t__*,int *,int *,char const**,char const**,int *,int *,int *,int *,int *,int *,int *,int *,int *,int *,int *,int *,int *,int *,int *,int *,int *,int *,int *,int *,int *,int *,char const*,int *,int *) ;
 TYPE_2__* svn_wc__db_scan_addition (int *,int *,int *,char const**,char const**,int *,int *,int *,int *,int *,char const*,int *,int *) ;




 TYPE_2__* svn_wc__db_temp_wcroot_tempdir (char const**,int *,char const*,int *,int *) ;
 TYPE_2__* svn_wc__wq_build_file_install (int **,int *,char const*,char const*,int ,int ,int *,int *) ;
 TYPE_2__* svn_wc__wq_build_file_remove (int **,int *,char const*,char const*,int *,int *) ;
 int * svn_wc__wq_merge (int *,int *,int *) ;
 TYPE_2__* svn_wc__wq_run (int *,char const*,int ,void*,int *) ;
 TYPE_2__* svn_wc__write_check (int *,char const*,int *) ;

svn_error_t *
svn_wc_add_repos_file4(svn_wc_context_t *wc_ctx,
                       const char *local_abspath,
                       svn_stream_t *new_base_contents,
                       svn_stream_t *new_contents,
                       apr_hash_t *new_base_props,
                       apr_hash_t *new_props,
                       const char *copyfrom_url,
                       svn_revnum_t copyfrom_rev,
                       svn_cancel_func_t cancel_func,
                       void *cancel_baton,
                       apr_pool_t *scratch_pool)
{
  svn_wc__db_t *db = wc_ctx->db;
  const char *dir_abspath = svn_dirent_dirname(local_abspath, scratch_pool);
  svn_wc__db_status_t status;
  svn_node_kind_t kind;
  const char *tmp_text_base_abspath;
  svn_checksum_t *new_text_base_md5_checksum;
  svn_checksum_t *new_text_base_sha1_checksum;
  const char *source_abspath = ((void*)0);
  svn_skel_t *all_work_items = ((void*)0);
  svn_skel_t *work_item;
  const char *repos_root_url;
  const char *repos_uuid;
  const char *original_repos_relpath;
  svn_revnum_t changed_rev;
  apr_time_t changed_date;
  const char *changed_author;
  svn_stream_t *tmp_base_contents;
  svn_wc__db_install_data_t *install_data;
  svn_error_t *err;
  apr_pool_t *pool = scratch_pool;

  SVN_ERR_ASSERT(svn_dirent_is_absolute(local_abspath));
  SVN_ERR_ASSERT(new_base_contents != ((void*)0));
  SVN_ERR_ASSERT(new_base_props != ((void*)0));


  SVN_ERR(svn_wc__write_check(db, dir_abspath, pool));

  err = svn_wc__db_read_info(&status, ((void*)0), ((void*)0), ((void*)0), ((void*)0), ((void*)0), ((void*)0), ((void*)0),
                             ((void*)0), ((void*)0), ((void*)0), ((void*)0), ((void*)0), ((void*)0), ((void*)0), ((void*)0),
                             ((void*)0), ((void*)0), ((void*)0), ((void*)0), ((void*)0), ((void*)0), ((void*)0), ((void*)0),
                             ((void*)0), ((void*)0), ((void*)0),
                             db, local_abspath, scratch_pool, scratch_pool);

  if (err && err->apr_err != SVN_ERR_WC_PATH_NOT_FOUND)
    return svn_error_trace(err);
  else if(err)
    svn_error_clear(err);
  else
    switch (status)
      {
        case 128:
        case 130:
          break;
        default:
          return svn_error_createf(SVN_ERR_ENTRY_EXISTS, ((void*)0),
                                   _("Node '%s' exists."),
                                   svn_dirent_local_style(local_abspath,
                                                          scratch_pool));
      }

  SVN_ERR(svn_wc__db_read_info(&status, &kind, ((void*)0), ((void*)0), &repos_root_url,
                               &repos_uuid, ((void*)0), ((void*)0), ((void*)0), ((void*)0), ((void*)0), ((void*)0),
                               ((void*)0), ((void*)0), ((void*)0), ((void*)0), ((void*)0), ((void*)0), ((void*)0), ((void*)0),
                               ((void*)0), ((void*)0), ((void*)0), ((void*)0), ((void*)0), ((void*)0), ((void*)0),
                               db, dir_abspath, scratch_pool, scratch_pool));

  switch (status)
    {
      case 129:
      case 131:
        break;
      case 130:
        return
          svn_error_createf(SVN_ERR_WC_SCHEDULE_CONFLICT, ((void*)0),
                            _("Can't add '%s' to a parent directory"
                              " scheduled for deletion"),
                            svn_dirent_local_style(local_abspath,
                                                   scratch_pool));
      default:
        return svn_error_createf(SVN_ERR_ENTRY_NOT_FOUND, err,
                                 _("Can't find parent directory's node while"
                                   " trying to add '%s'"),
                                 svn_dirent_local_style(local_abspath,
                                                        scratch_pool));
    }
  if (kind != svn_node_dir)
    return svn_error_createf(SVN_ERR_NODE_UNEXPECTED_KIND, ((void*)0),
                             _("Can't schedule an addition of '%s'"
                               " below a not-directory node"),
                             svn_dirent_local_style(local_abspath,
                                                    scratch_pool));



  if (copyfrom_url != ((void*)0))
    {



      if (!repos_root_url)
        {

          SVN_ERR(svn_wc__db_scan_addition(((void*)0), ((void*)0), ((void*)0),
                                           &repos_root_url, &repos_uuid,
                                           ((void*)0), ((void*)0), ((void*)0), ((void*)0),
                                           wc_ctx->db, dir_abspath,
                                           scratch_pool, scratch_pool));
        }
      SVN_ERR_ASSERT(repos_root_url);

      original_repos_relpath =
          svn_uri_skip_ancestor(repos_root_url, copyfrom_url, scratch_pool);

      if (!original_repos_relpath)
        return svn_error_createf(SVN_ERR_UNSUPPORTED_FEATURE, ((void*)0),
                                 _("Copyfrom-url '%s' has different repository"
                                   " root than '%s'"),
                                 copyfrom_url, repos_root_url);
    }
  else
    {
      original_repos_relpath = ((void*)0);
      copyfrom_rev = SVN_INVALID_REVNUM;
    }



  {
    apr_array_header_t *regular_props;
    apr_array_header_t *entry_props;

    SVN_ERR(svn_categorize_props(svn_prop_hash_to_array(new_base_props, pool),
                                 &entry_props, ((void*)0), &regular_props,
                                 pool));


    new_base_props = svn_prop_array_to_hash(regular_props, pool);


    SVN_ERR(accumulate_last_change(&changed_rev,
                                   &changed_date,
                                   &changed_author,
                                   entry_props, pool, pool));
  }




  if (copyfrom_url)
    {
      SVN_ERR(svn_wc__db_pristine_prepare_install(&tmp_base_contents,
                                                  &install_data,
                                                  &new_text_base_sha1_checksum,
                                                  &new_text_base_md5_checksum,
                                                  wc_ctx->db, local_abspath,
                                                  scratch_pool, scratch_pool));
    }
  else
    {
      const char *tmp_dir_abspath;




      SVN_ERR(svn_wc__db_temp_wcroot_tempdir(&tmp_dir_abspath,
                                             db, dir_abspath,
                                             scratch_pool, scratch_pool));

      SVN_ERR(svn_stream_open_unique(&tmp_base_contents, &tmp_text_base_abspath,
                                     tmp_dir_abspath, svn_io_file_del_none,
                                     scratch_pool, scratch_pool));

      new_text_base_sha1_checksum = ((void*)0);
      new_text_base_md5_checksum = ((void*)0);
    }
  SVN_ERR(svn_stream_copy3(new_base_contents, tmp_base_contents,
                           cancel_func, cancel_baton, pool));




  if (new_contents)
    {
      const char *temp_dir_abspath;
      svn_stream_t *tmp_contents;

      SVN_ERR(svn_wc__db_temp_wcroot_tempdir(&temp_dir_abspath, db,
                                             local_abspath, pool, pool));
      SVN_ERR(svn_stream_open_unique(&tmp_contents, &source_abspath,
                                     temp_dir_abspath, svn_io_file_del_none,
                                     pool, pool));
      SVN_ERR(svn_stream_copy3(new_contents, tmp_contents,
                               cancel_func, cancel_baton, pool));
    }



  if (copyfrom_url != ((void*)0))
    {
      SVN_ERR(svn_wc__db_pristine_install(install_data,
                                          new_text_base_sha1_checksum,
                                          new_text_base_md5_checksum, pool));
    }
  else
    {
      new_text_base_sha1_checksum = ((void*)0);
      new_text_base_md5_checksum = ((void*)0);
    }



  if (new_contents == ((void*)0) && copyfrom_url == ((void*)0))
    source_abspath = tmp_text_base_abspath;

  {
    svn_boolean_t record_fileinfo;




    record_fileinfo = (new_contents == ((void*)0));






    SVN_ERR(svn_wc__wq_build_file_install(&work_item,
                                          db, local_abspath,
                                          source_abspath,
                                          FALSE ,
                                          record_fileinfo,
                                          pool, pool));
    all_work_items = svn_wc__wq_merge(all_work_items, work_item, pool);



    if (source_abspath != ((void*)0))
      {
        SVN_ERR(svn_wc__wq_build_file_remove(&work_item, db, local_abspath,
                                             source_abspath,
                                             pool, pool));
        all_work_items = svn_wc__wq_merge(all_work_items, work_item, pool);
      }
  }

  SVN_ERR(svn_wc__db_op_copy_file(db, local_abspath,
                                  new_base_props,
                                  changed_rev,
                                  changed_date,
                                  changed_author,
                                  original_repos_relpath,
                                  original_repos_relpath ? repos_root_url
                                                         : ((void*)0),
                                  original_repos_relpath ? repos_uuid : ((void*)0),
                                  copyfrom_rev,
                                  new_text_base_sha1_checksum,
                                  TRUE,
                                  new_props,
                                  FALSE ,
                                  ((void*)0) ,
                                  all_work_items,
                                  pool));

  return svn_error_trace(svn_wc__wq_run(db, dir_abspath,
                                        cancel_func, cancel_baton,
                                        pool));
}
