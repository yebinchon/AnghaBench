
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_2__ ;
typedef struct TYPE_15__ TYPE_1__ ;


typedef scalar_t__ svn_node_kind_t ;
typedef int svn_mutex__t ;
struct TYPE_15__ {int uuid; TYPE_2__* fsap_data; } ;
typedef TYPE_1__ svn_fs_t ;
typedef int svn_fs_hotcopy_notify_t ;
typedef int svn_error_t ;
typedef int (* svn_cancel_func_t ) (void*) ;
typedef scalar_t__ svn_boolean_t ;
struct hotcopy_body_baton {void* cancel_baton; int (* cancel_func ) (void*) ;void* notify_baton; int notify_func; scalar_t__ incremental; TYPE_1__* dst_fs; TYPE_1__* src_fs; } ;
struct TYPE_16__ {int use_log_addressing; int max_files_per_dir; int format; } ;
typedef TYPE_2__ fs_fs_data_t ;
typedef int apr_pool_t ;


 scalar_t__ FALSE ;
 int PATH_FORMAT ;
 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int hotcopy_body (struct hotcopy_body_baton*,int *) ;
 int hotcopy_incremental_check_preconditions (TYPE_1__*,TYPE_1__*,int *) ;
 int hotcopy_remove_file (int ,int *) ;
 char* svn_dirent_join (char const*,int ,int *) ;
 int svn_fs_fs__create_file_tree (TYPE_1__*,char const*,int ,int ,int ,int *) ;
 int svn_fs_fs__initialize_caches (TYPE_1__*,int *) ;
 int svn_fs_fs__initialize_shared_data (TYPE_1__*,int *,int *,int *) ;
 int svn_fs_fs__open (TYPE_1__*,char const*,int *) ;
 int svn_fs_fs__path_rev (TYPE_1__*,int ,int *) ;
 int svn_fs_fs__path_revprops (TYPE_1__*,int ,int *) ;
 int svn_fs_fs__set_uuid (TYPE_1__*,int ,int *,int *) ;
 int svn_fs_fs__with_all_locks (TYPE_1__*,int (*) (struct hotcopy_body_baton*,int *),struct hotcopy_body_baton*,int *) ;
 int svn_io_check_path (char const*,scalar_t__*,int *) ;
 scalar_t__ svn_node_none ;

svn_error_t *
svn_fs_fs__hotcopy(svn_fs_t *src_fs,
                   svn_fs_t *dst_fs,
                   const char *src_path,
                   const char *dst_path,
                   svn_boolean_t incremental,
                   svn_fs_hotcopy_notify_t notify_func,
                   void *notify_baton,
                   svn_cancel_func_t cancel_func,
                   void *cancel_baton,
                   svn_mutex__t *common_pool_lock,
                   apr_pool_t *pool,
                   apr_pool_t *common_pool)
{
  struct hotcopy_body_baton hbb;

  if (cancel_func)
    SVN_ERR(cancel_func(cancel_baton));

  SVN_ERR(svn_fs_fs__open(src_fs, src_path, pool));

  if (incremental)
    {
      const char *dst_format_abspath;
      svn_node_kind_t dst_format_kind;



      dst_format_abspath = svn_dirent_join(dst_path, PATH_FORMAT, pool);
      SVN_ERR(svn_io_check_path(dst_format_abspath, &dst_format_kind, pool));
      if (dst_format_kind == svn_node_none)
        {

          incremental = FALSE;
        }
    }

  if (incremental)
    {

      SVN_ERR(svn_fs_fs__open(dst_fs, dst_path, pool));
      SVN_ERR(hotcopy_incremental_check_preconditions(src_fs, dst_fs, pool));

      SVN_ERR(svn_fs_fs__initialize_shared_data(dst_fs, common_pool_lock,
                                                pool, common_pool));
      SVN_ERR(svn_fs_fs__initialize_caches(dst_fs, pool));
    }
  else
    {


      fs_fs_data_t *src_ffd = src_fs->fsap_data;


      SVN_ERR(svn_fs_fs__create_file_tree(dst_fs, dst_path, src_ffd->format,
                                          src_ffd->max_files_per_dir,
                                          src_ffd->use_log_addressing,
                                          pool));



      SVN_ERR(svn_fs_fs__set_uuid(dst_fs, src_fs->uuid, ((void*)0), pool));



      SVN_ERR(hotcopy_remove_file(svn_fs_fs__path_rev(dst_fs, 0, pool),
                                  pool));
      SVN_ERR(hotcopy_remove_file(svn_fs_fs__path_revprops(dst_fs, 0, pool),
                                  pool));

      SVN_ERR(svn_fs_fs__initialize_shared_data(dst_fs, common_pool_lock,
                                                pool, common_pool));
      SVN_ERR(svn_fs_fs__initialize_caches(dst_fs, pool));
    }

  if (cancel_func)
    SVN_ERR(cancel_func(cancel_baton));

  hbb.src_fs = src_fs;
  hbb.dst_fs = dst_fs;
  hbb.incremental = incremental;
  hbb.notify_func = notify_func;
  hbb.notify_baton = notify_baton;
  hbb.cancel_func = cancel_func;
  hbb.cancel_baton = cancel_baton;





  if (incremental)
    SVN_ERR(svn_fs_fs__with_all_locks(dst_fs, hotcopy_body, &hbb, pool));
  else
    SVN_ERR(hotcopy_body(&hbb, pool));

  return SVN_NO_ERROR;
}
