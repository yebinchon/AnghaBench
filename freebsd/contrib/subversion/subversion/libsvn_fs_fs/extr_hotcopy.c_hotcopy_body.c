
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_48__ TYPE_4__ ;
typedef struct TYPE_47__ TYPE_2__ ;
typedef struct TYPE_46__ TYPE_1__ ;


typedef scalar_t__ svn_revnum_t ;
typedef scalar_t__ svn_node_kind_t ;
struct TYPE_46__ {int path; TYPE_4__* fsap_data; } ;
typedef TYPE_1__ svn_fs_t ;
typedef int svn_fs_hotcopy_notify_t ;
struct TYPE_47__ {int apr_err; } ;
typedef TYPE_2__ svn_error_t ;
typedef TYPE_2__* (* svn_cancel_func_t ) (void*) ;
typedef scalar_t__ svn_boolean_t ;
struct hotcopy_body_baton {void* cancel_baton; TYPE_2__* (* cancel_func ) (void*) ;void* notify_baton; int notify_func; scalar_t__ incremental; TYPE_1__* dst_fs; TYPE_1__* src_fs; } ;
struct TYPE_48__ {scalar_t__ format; } ;
typedef TYPE_4__ fs_fs_data_t ;
typedef int apr_uint64_t ;
typedef int apr_pool_t ;


 scalar_t__ APR_STATUS_IS_ENOENT (int ) ;
 int FALSE ;
 int PATH_CONFIG ;
 int PATH_LOCKS_DIR ;
 int PATH_NODE_ORIGINS_DIR ;
 int PATH_REVPROPS_DIR ;
 int PATH_REVS_DIR ;
 int PATH_TXN_CURRENT ;
 int REP_CACHE_DB_NAME ;
 int SVN_ERR (TYPE_2__*) ;
 int SVN_ERR_UNSUPPORTED_FEATURE ;
 scalar_t__ SVN_FS_FS__MIN_CONFIG_FILE ;
 scalar_t__ SVN_FS_FS__MIN_NO_GLOBAL_IDS_FORMAT ;
 scalar_t__ SVN_FS_FS__MIN_REP_SHARING_FORMAT ;
 scalar_t__ SVN_FS_FS__MIN_TXN_CURRENT_FORMAT ;
 TYPE_2__* SVN_NO_ERROR ;
 int TRUE ;
 int _ (char*) ;
 TYPE_2__* hotcopy_io_copy_dir_recursively (int *,char const*,int ,int ,int ,TYPE_2__* (*) (void*),void*,int *) ;
 TYPE_2__* hotcopy_revisions (TYPE_1__*,TYPE_1__*,scalar_t__,scalar_t__,scalar_t__,char const*,char const*,char const*,char const*,int ,void*,TYPE_2__* (*) (void*),void*,int *) ;
 TYPE_2__* hotcopy_revisions_old (TYPE_1__*,TYPE_1__*,scalar_t__,char const*,char const*,char const*,char const*,int ,void*,TYPE_2__* (*) (void*),void*,int *) ;
 char* svn_dirent_dirname (char const*,int *) ;
 TYPE_2__* svn_dirent_get_absolute (char const**,int ,int *) ;
 char* svn_dirent_join (int ,int ,int *) ;
 TYPE_2__* svn_error_compose_create (TYPE_2__*,TYPE_2__*) ;
 TYPE_2__* svn_error_createf (int ,int *,int ,scalar_t__,scalar_t__) ;
 TYPE_2__* svn_error_quick_wrapf (TYPE_2__*,int ,char const*,char const*,char const*) ;
 TYPE_2__* svn_error_trace (TYPE_2__*) ;
 TYPE_2__* svn_fs_fs__del_rep_reference (TYPE_1__*,scalar_t__,int *) ;
 TYPE_2__* svn_fs_fs__read_current (scalar_t__*,int *,int *,TYPE_1__*,int *) ;
 TYPE_2__* svn_fs_fs__write_current (TYPE_1__*,scalar_t__,int ,int ,int *) ;
 TYPE_2__* svn_fs_fs__write_format (TYPE_1__*,int ,int *) ;
 TYPE_2__* svn_fs_fs__youngest_rev (scalar_t__*,TYPE_1__*,int *) ;
 TYPE_2__* svn_io_check_path (char const*,scalar_t__*,int *) ;
 TYPE_2__* svn_io_copy_dir_recursively (char const*,int ,int ,int ,TYPE_2__* (*) (void*),void*,int *) ;
 TYPE_2__* svn_io_dir_file_copy (int ,int ,int ,int *) ;
 TYPE_2__* svn_io_make_dir_recursively (char const*,int *) ;
 TYPE_2__* svn_io_remove_dir2 (char const*,int ,TYPE_2__* (*) (void*),void*,int *) ;
 TYPE_2__* svn_io_set_file_read_write (char const*,int ,int *) ;
 scalar_t__ svn_node_dir ;
 scalar_t__ svn_node_file ;
 TYPE_2__* svn_sqlite__hotcopy (char const*,char const*,int *) ;

__attribute__((used)) static svn_error_t *
hotcopy_body(void *baton, apr_pool_t *pool)
{
  struct hotcopy_body_baton *hbb = baton;
  svn_fs_t *src_fs = hbb->src_fs;
  fs_fs_data_t *src_ffd = src_fs->fsap_data;
  svn_fs_t *dst_fs = hbb->dst_fs;
  fs_fs_data_t *dst_ffd = dst_fs->fsap_data;
  svn_boolean_t incremental = hbb->incremental;
  svn_fs_hotcopy_notify_t notify_func = hbb->notify_func;
  void* notify_baton = hbb->notify_baton;
  svn_cancel_func_t cancel_func = hbb->cancel_func;
  void* cancel_baton = hbb->cancel_baton;
  svn_revnum_t src_youngest;
  apr_uint64_t src_next_node_id;
  apr_uint64_t src_next_copy_id;
  svn_revnum_t dst_youngest;
  const char *src_revprops_dir;
  const char *dst_revprops_dir;
  const char *src_revs_dir;
  const char *dst_revs_dir;
  const char *src_subdir;
  const char *dst_subdir;
  svn_node_kind_t kind;







  if (src_ffd->format >= SVN_FS_FS__MIN_CONFIG_FILE)
    {
      svn_error_t *err;

      err = svn_io_dir_file_copy(src_fs->path, dst_fs->path, PATH_CONFIG,
                                 pool);
      if (err)
        {
          if (APR_STATUS_IS_ENOENT(err->apr_err))
            {
              const char *src_abspath;
              const char *dst_abspath;
              const char *config_relpath;
              svn_error_t *err2;

              config_relpath = svn_dirent_join(src_fs->path, PATH_CONFIG, pool);
              err2 = svn_dirent_get_absolute(&src_abspath, src_fs->path, pool);
              if (err2)
                return svn_error_trace(svn_error_compose_create(err, err2));
              err2 = svn_dirent_get_absolute(&dst_abspath, dst_fs->path, pool);
              if (err2)
                return svn_error_trace(svn_error_compose_create(err, err2));



              src_abspath = svn_dirent_dirname(src_abspath, pool);
              dst_abspath = svn_dirent_dirname(dst_abspath, pool);

              return svn_error_quick_wrapf(err,
                                 _("Failed to create hotcopy at '%s'. "
                                   "The file '%s' is missing from the source "
                                   "repository. Please create this file, for "
                                   "instance by running 'svnadmin upgrade %s'"),
                                 dst_abspath, config_relpath, src_abspath);
            }
          else
            return svn_error_trace(err);
        }
    }

  if (cancel_func)
    SVN_ERR(cancel_func(cancel_baton));






  SVN_ERR(svn_fs_fs__read_current(&src_youngest, &src_next_node_id,
                                  &src_next_copy_id, src_fs, pool));
  if (incremental)
    {
      SVN_ERR(svn_fs_fs__youngest_rev(&dst_youngest, dst_fs, pool));
      if (src_youngest < dst_youngest)
        return svn_error_createf(SVN_ERR_UNSUPPORTED_FEATURE, ((void*)0),
                 _("The hotcopy destination already contains more revisions "
                   "(%lu) than the hotcopy source contains (%lu); are source "
                   "and destination swapped?"),
                   dst_youngest, src_youngest);
    }
  else
    dst_youngest = 0;

  src_revs_dir = svn_dirent_join(src_fs->path, PATH_REVS_DIR, pool);
  dst_revs_dir = svn_dirent_join(dst_fs->path, PATH_REVS_DIR, pool);
  src_revprops_dir = svn_dirent_join(src_fs->path, PATH_REVPROPS_DIR, pool);
  dst_revprops_dir = svn_dirent_join(dst_fs->path, PATH_REVPROPS_DIR, pool);



  SVN_ERR(svn_io_make_dir_recursively(dst_revs_dir, pool));
  SVN_ERR(svn_io_make_dir_recursively(dst_revprops_dir, pool));

  if (cancel_func)
    SVN_ERR(cancel_func(cancel_baton));





  if (src_ffd->format >= SVN_FS_FS__MIN_NO_GLOBAL_IDS_FORMAT)
    {
      SVN_ERR(hotcopy_revisions(src_fs, dst_fs, src_youngest, dst_youngest,
                                incremental, src_revs_dir, dst_revs_dir,
                                src_revprops_dir, dst_revprops_dir,
                                notify_func, notify_baton,
                                cancel_func, cancel_baton, pool));
      SVN_ERR(svn_fs_fs__write_current(dst_fs, src_youngest, 0, 0, pool));
    }
  else
    {
      SVN_ERR(hotcopy_revisions_old(src_fs, dst_fs, src_youngest,
                                    src_revs_dir, dst_revs_dir,
                                    src_revprops_dir, dst_revprops_dir,
                                    notify_func, notify_baton,
                                    cancel_func, cancel_baton, pool));
      SVN_ERR(svn_fs_fs__write_current(dst_fs, src_youngest, src_next_node_id,
                                       src_next_copy_id, pool));
    }





  dst_subdir = svn_dirent_join(dst_fs->path, PATH_LOCKS_DIR, pool);
  SVN_ERR(svn_io_remove_dir2(dst_subdir, TRUE, cancel_func, cancel_baton,
                             pool));
  src_subdir = svn_dirent_join(src_fs->path, PATH_LOCKS_DIR, pool);
  SVN_ERR(svn_io_check_path(src_subdir, &kind, pool));
  if (kind == svn_node_dir)
    SVN_ERR(svn_io_copy_dir_recursively(src_subdir, dst_fs->path,
                                        PATH_LOCKS_DIR, TRUE,
                                        cancel_func, cancel_baton, pool));


  src_subdir = svn_dirent_join(src_fs->path, PATH_NODE_ORIGINS_DIR, pool);
  SVN_ERR(svn_io_check_path(src_subdir, &kind, pool));
  if (kind == svn_node_dir)
    SVN_ERR(hotcopy_io_copy_dir_recursively(((void*)0), src_subdir, dst_fs->path,
                                            PATH_NODE_ORIGINS_DIR, TRUE,
                                            cancel_func, cancel_baton, pool));






  if (dst_ffd->format >= SVN_FS_FS__MIN_REP_SHARING_FORMAT)
    {


      src_subdir = svn_dirent_join(src_fs->path, REP_CACHE_DB_NAME, pool);
      dst_subdir = svn_dirent_join(dst_fs->path, REP_CACHE_DB_NAME, pool);
      SVN_ERR(svn_io_check_path(src_subdir, &kind, pool));
      if (kind == svn_node_file)
        {
          SVN_ERR(svn_sqlite__hotcopy(src_subdir, dst_subdir, pool));



          SVN_ERR(svn_io_set_file_read_write(dst_subdir, FALSE, pool));
          SVN_ERR(svn_fs_fs__del_rep_reference(dst_fs, src_youngest, pool));
        }
    }


  if (dst_ffd->format >= SVN_FS_FS__MIN_TXN_CURRENT_FORMAT)
    SVN_ERR(svn_io_dir_file_copy(src_fs->path, dst_fs->path,
                                 PATH_TXN_CURRENT, pool));


  SVN_ERR(svn_fs_fs__write_format(dst_fs, TRUE, pool));

  return SVN_NO_ERROR;
}
