
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int svn_revnum_t ;
typedef int svn_error_t ;
typedef int svn_depth_t ;
typedef int svn_boolean_t ;
struct TYPE_4__ {int report_baton; TYPE_1__* sess; } ;
typedef TYPE_2__ reporter_baton_t ;
typedef int apr_pool_t ;
struct TYPE_3__ {char* repos_url; } ;


 int SVN_ERR_RA_ILLEGAL_URL ;
 int SVN_VA_NULL ;
 int _ (char*) ;
 char* apr_pstrcat (int *,char*,char const*,int ) ;
 int * svn_error_createf (int ,int *,int ,char const*,char*) ;
 int * svn_repos_link_path3 (int ,char const*,char const*,int ,int ,int ,char const*,int *) ;
 char* svn_uri_skip_ancestor (char const*,char const*,int *) ;

__attribute__((used)) static svn_error_t *
reporter_link_path(void *reporter_baton,
                   const char *path,
                   const char *url,
                   svn_revnum_t revision,
                   svn_depth_t depth,
                   svn_boolean_t start_empty,
                   const char *lock_token,
                   apr_pool_t *pool)
{
  reporter_baton_t *rbaton = reporter_baton;
  const char *repos_url = rbaton->sess->repos_url;
  const char *relpath = svn_uri_skip_ancestor(repos_url, url, pool);
  const char *fs_path;

  if (!relpath)
    return svn_error_createf(SVN_ERR_RA_ILLEGAL_URL, ((void*)0),
                             _("'%s'\n"
                               "is not the same repository as\n"
                               "'%s'"), url, rbaton->sess->repos_url);


  if (relpath[0] == '\0')
    fs_path = "/";
  else
    fs_path = apr_pstrcat(pool, "/", relpath, SVN_VA_NULL);

  return svn_repos_link_path3(rbaton->report_baton, path, fs_path, revision,
                              depth, start_empty, lock_token, pool);
}
