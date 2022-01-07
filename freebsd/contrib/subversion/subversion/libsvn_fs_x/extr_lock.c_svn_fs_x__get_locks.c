
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int path; } ;
typedef TYPE_1__ svn_fs_t ;
typedef int svn_fs_get_locks_callback_t ;
typedef int svn_error_t ;
typedef int svn_depth_t ;
struct TYPE_8__ {char const* path; void* get_locks_baton; int get_locks_func; int requested_depth; } ;
typedef TYPE_2__ get_locks_filter_baton_t ;
typedef int apr_pool_t ;


 int FALSE ;
 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int TRUE ;
 int digest_path_from_path (char const**,int ,char const*,int *) ;
 int get_locks_filter_func ;
 char* svn_fs__canonicalize_abspath (char const*,int *) ;
 int svn_fs__check_fs (TYPE_1__*,int ) ;
 int walk_locks (TYPE_1__*,char const*,int ,TYPE_2__*,int ,int *) ;

svn_error_t *
svn_fs_x__get_locks(svn_fs_t *fs,
                    const char *path,
                    svn_depth_t depth,
                    svn_fs_get_locks_callback_t get_locks_func,
                    void *get_locks_baton,
                    apr_pool_t *scratch_pool)
{
  const char *digest_path;
  get_locks_filter_baton_t glfb;

  SVN_ERR(svn_fs__check_fs(fs, TRUE));
  path = svn_fs__canonicalize_abspath(path, scratch_pool);

  glfb.path = path;
  glfb.requested_depth = depth;
  glfb.get_locks_func = get_locks_func;
  glfb.get_locks_baton = get_locks_baton;


  SVN_ERR(digest_path_from_path(&digest_path, fs->path, path, scratch_pool));
  SVN_ERR(walk_locks(fs, digest_path, get_locks_filter_func, &glfb,
                     FALSE, scratch_pool));
  return SVN_NO_ERROR;
}
