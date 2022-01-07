
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_4__ ;
typedef struct TYPE_17__ TYPE_3__ ;
typedef struct TYPE_16__ TYPE_2__ ;
typedef struct TYPE_15__ TYPE_1__ ;


typedef int svn_revnum_t ;
struct TYPE_16__ {TYPE_3__* priv; } ;
typedef TYPE_2__ svn_ra_session_t ;
struct TYPE_15__ {char* path; } ;
struct TYPE_17__ {TYPE_1__ session_url; } ;
typedef TYPE_3__ svn_ra_serf__session_t ;
typedef int svn_node_kind_t ;
struct TYPE_18__ {scalar_t__ apr_err; } ;
typedef TYPE_4__ svn_error_t ;
typedef int apr_pool_t ;
typedef int apr_hash_t ;


 int SVN_ERR (TYPE_4__*) ;
 scalar_t__ SVN_ERR_FS_NOT_FOUND ;
 int SVN_ERR_RA_DAV_PROPS_NOT_FOUND ;
 int SVN_INVALID_REVNUM ;
 scalar_t__ SVN_IS_VALID_REVNUM (int ) ;
 TYPE_4__* SVN_NO_ERROR ;
 int _ (char*) ;
 int * apr_hash_get (int *,char*,int) ;
 int check_path_props ;
 scalar_t__ strcmp (char const*,char*) ;
 int svn_error_clear (TYPE_4__*) ;
 TYPE_4__* svn_error_create (int ,int *,int ) ;
 int svn_node_dir ;
 int svn_node_file ;
 int svn_node_none ;
 char* svn_path_url_add_component2 (char const*,char const*,int *) ;
 char* svn_prop_get_value (int *,char*) ;
 TYPE_4__* svn_ra_serf__fetch_node_props (int **,TYPE_3__*,char const*,int ,int ,int *,int *) ;
 TYPE_4__* svn_ra_serf__get_stable_url (char const**,int *,TYPE_3__*,char const*,int ,int *,int *) ;

svn_error_t *
svn_ra_serf__check_path(svn_ra_session_t *ra_session,
                        const char *relpath,
                        svn_revnum_t revision,
                        svn_node_kind_t *kind,
                        apr_pool_t *scratch_pool)
{
  svn_ra_serf__session_t *session = ra_session->priv;
  apr_hash_t *props;
  svn_error_t *err;
  const char *url;

  url = session->session_url.path;


  if (relpath)
    url = svn_path_url_add_component2(url, relpath, scratch_pool);



  if (SVN_IS_VALID_REVNUM(revision))
    {
      SVN_ERR(svn_ra_serf__get_stable_url(&url, ((void*)0) ,
                                          session,
                                          url, revision,
                                          scratch_pool, scratch_pool));
    }



  err = svn_ra_serf__fetch_node_props(&props, session,
                                      url, SVN_INVALID_REVNUM,
                                      check_path_props,
                                      scratch_pool, scratch_pool);

  if (err && err->apr_err == SVN_ERR_FS_NOT_FOUND)
    {
      svn_error_clear(err);
      *kind = svn_node_none;
    }
  else
    {
      apr_hash_t *dav_props;
      const char *res_type;


      SVN_ERR(err);

      dav_props = apr_hash_get(props, "DAV:", 4);
      res_type = svn_prop_get_value(dav_props, "resourcetype");
      if (!res_type)
        {

          return svn_error_create(SVN_ERR_RA_DAV_PROPS_NOT_FOUND, ((void*)0),
                                 _("The PROPFIND response did not include the "
                                   "requested resourcetype value"));
        }

      if (strcmp(res_type, "collection") == 0)
        *kind = svn_node_dir;
      else
        *kind = svn_node_file;
    }

  return SVN_NO_ERROR;
}
