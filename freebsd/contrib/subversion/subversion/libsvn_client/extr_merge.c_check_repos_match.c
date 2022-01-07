
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int svn_error_t ;
struct TYPE_4__ {int repos_root_url; } ;
struct TYPE_5__ {TYPE_1__ loc; } ;
typedef TYPE_2__ merge_target_t ;
typedef int apr_pool_t ;


 int SVN_ERR_UNSUPPORTED_FEATURE ;
 int * SVN_NO_ERROR ;
 int _ (char*) ;
 int svn_dirent_local_style (char const*,int *) ;
 int * svn_error_createf (int ,int *,int ,char const*,int ,int ) ;
 int svn_uri__is_ancestor (int ,char const*) ;

__attribute__((used)) static svn_error_t *
check_repos_match(const merge_target_t *target,
                  const char *local_abspath,
                  const char *url,
                  apr_pool_t *scratch_pool)
{
  if (!svn_uri__is_ancestor(target->loc.repos_root_url, url))
    return svn_error_createf(
        SVN_ERR_UNSUPPORTED_FEATURE, ((void*)0),
         _("URL '%s' of '%s' is not in repository '%s'"),
         url, svn_dirent_local_style(local_abspath, scratch_pool),
         target->loc.repos_root_url);

  return SVN_NO_ERROR;
}
