
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef scalar_t__ svn_revnum_t ;
typedef scalar_t__ svn_node_kind_t ;
struct TYPE_11__ {int path; } ;
typedef TYPE_1__ svn_fs_t ;
typedef int svn_fs_hotcopy_notify_t ;
typedef int svn_error_t ;
typedef int (* svn_cancel_func_t ) (void*) ;
typedef scalar_t__ svn_boolean_t ;
struct TYPE_12__ {void* cancel_baton; int (* cancel_func ) (void*) ;void* notify_baton; int notify_func; scalar_t__ incremental; TYPE_1__* dst_fs; TYPE_1__* src_fs; } ;
typedef TYPE_2__ hotcopy_body_baton_t ;
typedef int apr_pool_t ;


 int FALSE ;
 int PATH_CONFIG ;
 int PATH_LOCKS_DIR ;
 int PATH_REVS_DIR ;
 int PATH_TXN_CURRENT ;
 int REP_CACHE_DB_NAME ;
 int SVN_ERR (int ) ;
 int SVN_ERR_UNSUPPORTED_FEATURE ;
 int * SVN_NO_ERROR ;
 int TRUE ;
 int _ (char*) ;
 int hotcopy_revisions (TYPE_1__*,TYPE_1__*,scalar_t__,scalar_t__,scalar_t__,char const*,char const*,int ,void*,int (*) (void*),void*,int *) ;
 char* svn_dirent_join (int ,int ,int *) ;
 int * svn_error_createf (int ,int *,int ,scalar_t__,scalar_t__) ;
 int svn_fs_x__del_rep_reference (TYPE_1__*,scalar_t__,int *) ;
 int svn_fs_x__read_current (scalar_t__*,TYPE_1__*,int *) ;
 int svn_fs_x__reset_revprop_generation_file (TYPE_1__*,int *) ;
 int svn_fs_x__write_current (TYPE_1__*,scalar_t__,int *) ;
 int svn_fs_x__write_format (TYPE_1__*,int ,int *) ;
 int svn_fs_x__youngest_rev (scalar_t__*,TYPE_1__*,int *) ;
 int svn_io_check_path (char const*,scalar_t__*,int *) ;
 int svn_io_copy_dir_recursively (char const*,int ,int ,int ,int (*) (void*),void*,int *) ;
 int svn_io_dir_file_copy (int ,int ,int ,int *) ;
 int svn_io_make_dir_recursively (char const*,int *) ;
 int svn_io_remove_dir2 (char const*,int ,int (*) (void*),void*,int *) ;
 int svn_io_set_file_read_write (char const*,int ,int *) ;
 scalar_t__ svn_node_dir ;
 scalar_t__ svn_node_file ;
 int svn_sqlite__hotcopy (char const*,char const*,int *) ;

__attribute__((used)) static svn_error_t *
hotcopy_body(void *baton,
             apr_pool_t *scratch_pool)
{
  hotcopy_body_baton_t *hbb = baton;
  svn_fs_t *src_fs = hbb->src_fs;
  svn_fs_t *dst_fs = hbb->dst_fs;
  svn_boolean_t incremental = hbb->incremental;
  svn_fs_hotcopy_notify_t notify_func = hbb->notify_func;
  void* notify_baton = hbb->notify_baton;
  svn_cancel_func_t cancel_func = hbb->cancel_func;
  void* cancel_baton = hbb->cancel_baton;
  svn_revnum_t src_youngest;
  svn_revnum_t dst_youngest;
  const char *src_revs_dir;
  const char *dst_revs_dir;
  const char *src_subdir;
  const char *dst_subdir;
  svn_node_kind_t kind;







  SVN_ERR(svn_io_dir_file_copy(src_fs->path, dst_fs->path, PATH_CONFIG,
                               scratch_pool));

  if (cancel_func)
    SVN_ERR(cancel_func(cancel_baton));






  SVN_ERR(svn_fs_x__read_current(&src_youngest, src_fs, scratch_pool));
  if (incremental)
    {
      SVN_ERR(svn_fs_x__youngest_rev(&dst_youngest, dst_fs, scratch_pool));
      if (src_youngest < dst_youngest)
        return svn_error_createf(SVN_ERR_UNSUPPORTED_FEATURE, ((void*)0),
                 _("The hotcopy destination already contains more revisions "
                   "(%lu) than the hotcopy source contains (%lu); are source "
                   "and destination swapped?"),
                   dst_youngest, src_youngest);
    }
  else
    dst_youngest = 0;

  src_revs_dir = svn_dirent_join(src_fs->path, PATH_REVS_DIR, scratch_pool);
  dst_revs_dir = svn_dirent_join(dst_fs->path, PATH_REVS_DIR, scratch_pool);



  SVN_ERR(svn_io_make_dir_recursively(dst_revs_dir, scratch_pool));
  if (cancel_func)
    SVN_ERR(cancel_func(cancel_baton));





  SVN_ERR(hotcopy_revisions(src_fs, dst_fs, src_youngest, dst_youngest,
                            incremental, src_revs_dir, dst_revs_dir,
                            notify_func, notify_baton,
                            cancel_func, cancel_baton, scratch_pool));
  SVN_ERR(svn_fs_x__write_current(dst_fs, src_youngest, scratch_pool));





  dst_subdir = svn_dirent_join(dst_fs->path, PATH_LOCKS_DIR, scratch_pool);
  SVN_ERR(svn_io_remove_dir2(dst_subdir, TRUE, cancel_func, cancel_baton,
                             scratch_pool));
  src_subdir = svn_dirent_join(src_fs->path, PATH_LOCKS_DIR, scratch_pool);
  SVN_ERR(svn_io_check_path(src_subdir, &kind, scratch_pool));
  if (kind == svn_node_dir)
    SVN_ERR(svn_io_copy_dir_recursively(src_subdir, dst_fs->path,
                                        PATH_LOCKS_DIR, TRUE,
                                        cancel_func, cancel_baton,
                                        scratch_pool));
  src_subdir = svn_dirent_join(src_fs->path, REP_CACHE_DB_NAME, scratch_pool);
  dst_subdir = svn_dirent_join(dst_fs->path, REP_CACHE_DB_NAME, scratch_pool);
  SVN_ERR(svn_io_check_path(src_subdir, &kind, scratch_pool));
  if (kind == svn_node_file)
    {


      SVN_ERR(svn_sqlite__hotcopy(src_subdir, dst_subdir, scratch_pool));



      SVN_ERR(svn_io_set_file_read_write(dst_subdir, FALSE, scratch_pool));
      SVN_ERR(svn_fs_x__del_rep_reference(dst_fs, src_youngest,
                                          scratch_pool));
    }


  SVN_ERR(svn_io_dir_file_copy(src_fs->path, dst_fs->path,
                                PATH_TXN_CURRENT, scratch_pool));





  SVN_ERR(svn_fs_x__reset_revprop_generation_file(dst_fs, scratch_pool));


  SVN_ERR(svn_fs_x__write_format(dst_fs, TRUE, scratch_pool));

  return SVN_NO_ERROR;
}
