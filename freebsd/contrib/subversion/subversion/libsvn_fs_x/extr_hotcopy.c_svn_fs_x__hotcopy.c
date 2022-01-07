
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_21__ TYPE_3__ ;
typedef struct TYPE_20__ TYPE_2__ ;
typedef struct TYPE_19__ TYPE_1__ ;


typedef scalar_t__ svn_node_kind_t ;
typedef int svn_mutex__t ;
struct TYPE_19__ {int max_files_per_dir; int format; } ;
typedef TYPE_1__ svn_fs_x__data_t ;
struct TYPE_20__ {int uuid; TYPE_1__* fsap_data; } ;
typedef TYPE_2__ svn_fs_t ;
typedef int svn_fs_hotcopy_notify_t ;
typedef int svn_error_t ;
typedef int (* svn_cancel_func_t ) (void*) ;
typedef scalar_t__ svn_boolean_t ;
struct TYPE_21__ {void* cancel_baton; int (* cancel_func ) (void*) ;void* notify_baton; int notify_func; scalar_t__ incremental; TYPE_2__* dst_fs; TYPE_2__* src_fs; } ;
typedef TYPE_3__ hotcopy_body_baton_t ;
typedef int apr_pool_t ;


 scalar_t__ FALSE ;
 int PATH_FORMAT ;
 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int TRUE ;
 int hotcopy_body (TYPE_3__*,int *) ;
 int hotcopy_incremental_check_preconditions (TYPE_2__*,TYPE_2__*) ;
 int hotcopy_remove_file (int ,int *) ;
 char* svn_dirent_join (char const*,int ,int *) ;
 int svn_fs_x__create_file_tree (TYPE_2__*,char const*,int ,int ,int *) ;
 int svn_fs_x__initialize_caches (TYPE_2__*,int *) ;
 int svn_fs_x__initialize_shared_data (TYPE_2__*,int *,int *,int *) ;
 int svn_fs_x__open (TYPE_2__*,char const*,int *) ;
 int svn_fs_x__path_rev (TYPE_2__*,int ,int *) ;
 int svn_fs_x__path_revprops (TYPE_2__*,int ,int *) ;
 int svn_fs_x__set_uuid (TYPE_2__*,int ,int *,int ,int *) ;
 int svn_fs_x__with_all_locks (TYPE_2__*,int (*) (TYPE_3__*,int *),TYPE_3__*,int *) ;
 int svn_io_check_path (char const*,scalar_t__*,int *) ;
 scalar_t__ svn_node_none ;

svn_error_t *
svn_fs_x__hotcopy(svn_fs_t *src_fs,
                  svn_fs_t *dst_fs,
                  const char *src_path,
                  const char *dst_path,
                  svn_boolean_t incremental,
                  svn_fs_hotcopy_notify_t notify_func,
                  void *notify_baton,
                  svn_cancel_func_t cancel_func,
                  void *cancel_baton,
                  svn_mutex__t *common_pool_lock,
                  apr_pool_t *scratch_pool,
                  apr_pool_t *common_pool)
{
  hotcopy_body_baton_t hbb;

  if (cancel_func)
    SVN_ERR(cancel_func(cancel_baton));

  SVN_ERR(svn_fs_x__open(src_fs, src_path, scratch_pool));

  if (incremental)
    {
      const char *dst_format_abspath;
      svn_node_kind_t dst_format_kind;



      dst_format_abspath = svn_dirent_join(dst_path, PATH_FORMAT,
                                           scratch_pool);
      SVN_ERR(svn_io_check_path(dst_format_abspath, &dst_format_kind,
                                scratch_pool));
      if (dst_format_kind == svn_node_none)
        {

          incremental = FALSE;
        }
    }

  if (incremental)
    {

      SVN_ERR(svn_fs_x__open(dst_fs, dst_path, scratch_pool));
      SVN_ERR(hotcopy_incremental_check_preconditions(src_fs, dst_fs));

      SVN_ERR(svn_fs_x__initialize_shared_data(dst_fs, common_pool_lock,
                                               scratch_pool, common_pool));
      SVN_ERR(svn_fs_x__initialize_caches(dst_fs, scratch_pool));
    }
  else
    {


      svn_fs_x__data_t *src_ffd = src_fs->fsap_data;


      SVN_ERR(svn_fs_x__create_file_tree(dst_fs, dst_path, src_ffd->format,
                                         src_ffd->max_files_per_dir,
                                         scratch_pool));



      SVN_ERR(svn_fs_x__set_uuid(dst_fs, src_fs->uuid, ((void*)0), TRUE,
                                 scratch_pool));



      SVN_ERR(hotcopy_remove_file(svn_fs_x__path_rev(dst_fs, 0,
                                                     scratch_pool),
                                  scratch_pool));
      SVN_ERR(hotcopy_remove_file(svn_fs_x__path_revprops(dst_fs, 0,
                                                          scratch_pool),
                                  scratch_pool));

      SVN_ERR(svn_fs_x__initialize_shared_data(dst_fs, common_pool_lock,
                                               scratch_pool, common_pool));
      SVN_ERR(svn_fs_x__initialize_caches(dst_fs, scratch_pool));
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
    SVN_ERR(svn_fs_x__with_all_locks(dst_fs, hotcopy_body, &hbb,
                                     scratch_pool));
  else
    SVN_ERR(hotcopy_body(&hbb, scratch_pool));

  return SVN_NO_ERROR;
}
