
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int (* svn_wc_notify_func2_t ) (void*,int ,int *) ;
typedef int svn_wc_context_t ;
typedef int svn_error_t ;
typedef scalar_t__ svn_boolean_t ;
typedef int apr_pool_t ;


 int SVN_ERR (int ) ;
 int SVN_ERR_WC_FOUND_CONFLICT ;
 int * SVN_NO_ERROR ;
 int _ (char*) ;
 int strlen (char const*) ;
 char* svn_dirent_dirname (char const*,int *) ;
 scalar_t__ svn_dirent_is_ancestor (char const*,char const*) ;
 scalar_t__ svn_dirent_is_root (char const*,int ) ;
 int svn_dirent_local_style (char const*,int *) ;
 int * svn_error_createf (int ,int *,int ,int ) ;
 int svn_wc__get_wcroot (char const**,int *,char const*,int *,int *) ;
 int svn_wc_conflicted_p3 (int *,int *,scalar_t__*,int *,char const*,int *) ;
 int svn_wc_create_notify (char const*,int ,int *) ;
 int svn_wc_notify_failed_conflict ;

__attribute__((used)) static svn_error_t *
bail_on_tree_conflicted_ancestor(svn_wc_context_t *wc_ctx,
                                 const char *local_abspath,
                                 svn_wc_notify_func2_t notify_func,
                                 void *notify_baton,
                                 apr_pool_t *scratch_pool)
{
  const char *wcroot_abspath;

  SVN_ERR(svn_wc__get_wcroot(&wcroot_abspath, wc_ctx, local_abspath,
                             scratch_pool, scratch_pool));

  local_abspath = svn_dirent_dirname(local_abspath, scratch_pool);

  while(svn_dirent_is_ancestor(wcroot_abspath, local_abspath))
    {
      svn_boolean_t tree_conflicted;


      SVN_ERR(svn_wc_conflicted_p3(((void*)0), ((void*)0), &tree_conflicted,
                                   wc_ctx, local_abspath, scratch_pool));
      if (tree_conflicted)
        {
          if (notify_func != ((void*)0))
            {
              notify_func(notify_baton,
                          svn_wc_create_notify(local_abspath,
                                               svn_wc_notify_failed_conflict,
                                               scratch_pool),
                          scratch_pool);
            }

          return svn_error_createf(
                   SVN_ERR_WC_FOUND_CONFLICT, ((void*)0),
                   _("Aborting commit: '%s' remains in tree-conflict"),
                   svn_dirent_local_style(local_abspath, scratch_pool));
        }


      if (svn_dirent_is_root(local_abspath, strlen(local_abspath)))
        break;
      else
        local_abspath = svn_dirent_dirname(local_abspath, scratch_pool);
    }

  return SVN_NO_ERROR;
}
