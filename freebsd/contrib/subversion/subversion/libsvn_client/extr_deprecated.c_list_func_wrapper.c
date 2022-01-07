
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_lock_t ;
typedef int svn_error_t ;
typedef int svn_dirent_t ;
struct list_func_wrapper_baton {int list_func1_baton; int * (* list_func1 ) (int ,char const*,int const*,int const*,char const*,int *) ;} ;
typedef int apr_pool_t ;


 int * SVN_NO_ERROR ;
 int * stub1 (int ,char const*,int const*,int const*,char const*,int *) ;

__attribute__((used)) static svn_error_t *
list_func_wrapper(void *baton,
                  const char *path,
                  const svn_dirent_t *dirent,
                  const svn_lock_t *lock,
                  const char *abs_path,
                  const char *external_parent_url,
                  const char *external_target,
                  apr_pool_t *scratch_pool)
{
  struct list_func_wrapper_baton *lfwb = baton;

  if (lfwb->list_func1)
    return lfwb->list_func1(lfwb->list_func1_baton, path, dirent,
                           lock, abs_path, scratch_pool);

  return SVN_NO_ERROR;
}
