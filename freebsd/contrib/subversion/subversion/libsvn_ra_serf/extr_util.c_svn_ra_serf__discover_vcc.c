
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_19__ TYPE_3__ ;
typedef struct TYPE_18__ TYPE_2__ ;
typedef struct TYPE_17__ TYPE_1__ ;
typedef struct TYPE_16__ TYPE_14__ ;


struct TYPE_17__ {int data; } ;
typedef TYPE_1__ svn_stringbuf_t ;
struct TYPE_16__ {char* path; } ;
struct TYPE_18__ {char* vcc_url; int pool; void* uuid; TYPE_14__ repos_root; scalar_t__ repos_root_str; TYPE_14__ session_url; } ;
typedef TYPE_2__ svn_ra_serf__session_t ;
struct TYPE_19__ {scalar_t__ apr_err; } ;
typedef TYPE_3__ svn_error_t ;
typedef int apr_pool_t ;
typedef int apr_hash_t ;


 int SVN_DAV_PROP_NS_DAV ;
 scalar_t__ SVN_ERR_FS_NOT_FOUND ;
 scalar_t__ SVN_ERR_RA_DAV_FORBIDDEN ;
 int SVN_ERR_RA_DAV_OPTIONS_REQ_FAILED ;
 int SVN_INVALID_REVNUM ;
 TYPE_3__* SVN_NO_ERROR ;
 int _ (char*) ;
 int * apr_hash_get (int *,char*,int) ;
 void* apr_pstrdup (int ,char const*) ;
 int apr_uri_unparse (int ,TYPE_14__*,int ) ;
 int base_props ;
 int svn_error_clear (TYPE_3__*) ;
 TYPE_3__* svn_error_create (int ,int *,int ) ;
 TYPE_3__* svn_error_trace (TYPE_3__*) ;
 scalar_t__ svn_fspath__canonicalize (int ,int ) ;
 int * svn_hash_gets (int *,int ) ;
 int svn_path_component_count (char const*) ;
 int svn_path_remove_components (TYPE_1__*,int ) ;
 char* svn_prop_get_value (int *,char*) ;
 TYPE_3__* svn_ra_serf__fetch_node_props (int **,TYPE_2__*,char const*,int ,int ,int *,int *) ;
 TYPE_1__* svn_stringbuf_create (char const*,int *) ;
 scalar_t__ svn_urlpath__canonicalize (int ,int ) ;
 char* svn_urlpath__dirname (char const*,int *) ;

svn_error_t *
svn_ra_serf__discover_vcc(const char **vcc_url,
                          svn_ra_serf__session_t *session,
                          apr_pool_t *scratch_pool)
{
  const char *path;
  const char *relative_path;
  const char *uuid;


  if (session->vcc_url && session->repos_root_str)
    {
      *vcc_url = session->vcc_url;
      return SVN_NO_ERROR;
    }

  path = session->session_url.path;
  *vcc_url = ((void*)0);
  uuid = ((void*)0);

  do
    {
      apr_hash_t *props;
      svn_error_t *err;

      err = svn_ra_serf__fetch_node_props(&props, session,
                                          path, SVN_INVALID_REVNUM,
                                          base_props,
                                          scratch_pool, scratch_pool);
      if (! err)
        {
          apr_hash_t *ns_props;

          ns_props = apr_hash_get(props, "DAV:", 4);
          *vcc_url = svn_prop_get_value(ns_props,
                                        "version-controlled-configuration");

          ns_props = svn_hash_gets(props, SVN_DAV_PROP_NS_DAV);
          relative_path = svn_prop_get_value(ns_props,
                                             "baseline-relative-path");
          uuid = svn_prop_get_value(ns_props, "repository-uuid");
          break;
        }
      else
        {
          if ((err->apr_err != SVN_ERR_FS_NOT_FOUND) &&
              (err->apr_err != SVN_ERR_RA_DAV_FORBIDDEN))
            {
              return svn_error_trace(err);
            }
          else
            {

              svn_error_clear(err);


              path = svn_urlpath__dirname(path, scratch_pool);
            }
        }
    }
  while ((path[0] != '\0')
         && (! (path[0] == '/' && path[1] == '\0')));

  if (!*vcc_url)
    {
      return svn_error_create(SVN_ERR_RA_DAV_OPTIONS_REQ_FAILED, ((void*)0),
                              _("The PROPFIND response did not include the "
                                "requested version-controlled-configuration "
                                "value"));
    }


  if (!session->vcc_url)
    {
      session->vcc_url = apr_pstrdup(session->pool, *vcc_url);
    }


  if (!session->repos_root_str)
    {
      svn_stringbuf_t *url_buf;

      url_buf = svn_stringbuf_create(path, scratch_pool);

      svn_path_remove_components(url_buf,
                                 svn_path_component_count(relative_path));


      session->repos_root = session->session_url;
      session->repos_root.path =
        (char *)svn_fspath__canonicalize(url_buf->data, session->pool);
      session->repos_root_str =
        svn_urlpath__canonicalize(apr_uri_unparse(session->pool,
                                                  &session->repos_root, 0),
                                  session->pool);
    }


  if (!session->uuid)
    {
      session->uuid = apr_pstrdup(session->pool, uuid);
    }

  return SVN_NO_ERROR;
}
