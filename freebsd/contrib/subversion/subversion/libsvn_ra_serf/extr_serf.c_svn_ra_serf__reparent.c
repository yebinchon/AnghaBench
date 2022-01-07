
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_9__ {TYPE_3__* priv; } ;
typedef TYPE_2__ svn_ra_session_t ;
struct TYPE_8__ {void* path; } ;
struct TYPE_10__ {int pool; void* session_url_str; TYPE_1__ session_url; int repos_root_str; } ;
typedef TYPE_3__ svn_ra_serf__session_t ;
typedef int svn_error_t ;
struct TYPE_11__ {char const* path; } ;
typedef TYPE_4__ apr_uri_t ;
typedef int apr_pool_t ;


 int SVN_ERR (int ) ;
 int SVN_ERR_RA_ILLEGAL_URL ;
 int * SVN_NO_ERROR ;
 int _ (char*) ;
 void* apr_pstrdup (int ,char const*) ;
 scalar_t__ strcmp (void*,char const*) ;
 int * svn_error_createf (int ,int *,int ,char const*,int ) ;
 int svn_ra_serf__discover_vcc (char const**,TYPE_3__*,int *) ;
 int svn_ra_serf__uri_parse (TYPE_4__*,char const*,int *) ;
 int svn_uri__is_ancestor (int ,char const*) ;

svn_error_t *
svn_ra_serf__reparent(svn_ra_session_t *ra_session,
                      const char *url,
                      apr_pool_t *pool)
{
  svn_ra_serf__session_t *session = ra_session->priv;
  apr_uri_t new_url;


  if (strcmp(session->session_url_str, url) == 0)
    {
      return SVN_NO_ERROR;
    }

  if (!session->repos_root_str)
    {
      const char *vcc_url;
      SVN_ERR(svn_ra_serf__discover_vcc(&vcc_url, session, pool));
    }

  if (!svn_uri__is_ancestor(session->repos_root_str, url))
    {
      return svn_error_createf(
          SVN_ERR_RA_ILLEGAL_URL, ((void*)0),
          _("URL '%s' is not a child of the session's repository root "
            "URL '%s'"), url, session->repos_root_str);
    }

  SVN_ERR(svn_ra_serf__uri_parse(&new_url, url, pool));



  session->session_url.path = apr_pstrdup(session->pool, new_url.path);
  session->session_url_str = apr_pstrdup(session->pool, url);

  return SVN_NO_ERROR;
}
