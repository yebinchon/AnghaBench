
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {TYPE_2__* priv; } ;
typedef TYPE_1__ svn_ra_session_t ;
struct TYPE_5__ {int fs_path; int repos_url; } ;
typedef TYPE_2__ svn_ra_local__session_baton_t ;
typedef int svn_error_t ;
typedef int apr_pool_t ;


 int SVN_ERR_RA_ILLEGAL_URL ;
 int * SVN_NO_ERROR ;
 int _ (char*) ;
 int * svn_error_createf (int ,int *,int ,char const*,int ) ;
 int svn_fspath__canonicalize (char const*,int *) ;
 int svn_stringbuf_set (int ,int ) ;
 char* svn_uri_skip_ancestor (int ,char const*,int *) ;

__attribute__((used)) static svn_error_t *
svn_ra_local__reparent(svn_ra_session_t *session,
                       const char *url,
                       apr_pool_t *pool)
{
  svn_ra_local__session_baton_t *sess = session->priv;
  const char *relpath = svn_uri_skip_ancestor(sess->repos_url, url, pool);



  if (! relpath)
    return svn_error_createf
      (SVN_ERR_RA_ILLEGAL_URL, ((void*)0),
       _("URL '%s' is not a child of the session's repository root "
         "URL '%s'"), url, sess->repos_url);



  svn_stringbuf_set(sess->fs_path,
                    svn_fspath__canonicalize(relpath, pool));

  return SVN_NO_ERROR;
}
