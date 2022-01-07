
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_repos_t ;
typedef int svn_error_t ;
typedef int svn_delta_editor_t ;
typedef int svn_commit_callback_t ;
typedef int apr_pool_t ;


 int * svn_repos_get_commit_editor2 (int const**,void**,int *,int *,char const*,char const*,char const*,char const*,int ,void*,int *) ;

svn_error_t *
svn_repos_get_commit_editor(const svn_delta_editor_t **editor,
                            void **edit_baton,
                            svn_repos_t *repos,
                            const char *repos_url,
                            const char *base_path,
                            const char *user,
                            const char *log_msg,
                            svn_commit_callback_t callback,
                            void *callback_baton,
                            apr_pool_t *pool)
{
  return svn_repos_get_commit_editor2(editor, edit_baton, repos, ((void*)0),
                                      repos_url, base_path, user,
                                      log_msg, callback,
                                      callback_baton, pool);
}
