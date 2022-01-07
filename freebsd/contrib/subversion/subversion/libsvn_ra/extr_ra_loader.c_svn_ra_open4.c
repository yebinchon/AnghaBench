
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_30__ TYPE_6__ ;
typedef struct TYPE_29__ TYPE_5__ ;
typedef struct TYPE_28__ TYPE_3__ ;
typedef struct TYPE_27__ TYPE_2__ ;
typedef struct TYPE_26__ TYPE_1__ ;


struct TYPE_26__ {int * pool; TYPE_3__ const* vtable; void* cancel_baton; int cancel_func; } ;
typedef TYPE_1__ svn_ra_session_t ;
struct TYPE_27__ {int cancel_func; int auth_baton; } ;
typedef TYPE_2__ svn_ra_callbacks2_t ;
struct TYPE_28__ {scalar_t__ (* get_schemes ) (int *) ;int (* get_uuid ) (TYPE_1__*,char const**,int *) ;int (* set_svn_ra_open ) (TYPE_1__*,TYPE_5__* (*) (TYPE_1__**,char const**,char const*,char const*,TYPE_2__ const*,void*,int *,int *)) ;TYPE_5__* (* open_session ) (TYPE_1__*,char const**,char const*,TYPE_2__ const*,void*,int *,int *,int *,int *) ;int (* get_version ) () ;} ;
typedef TYPE_3__ svn_ra__vtable_t ;
typedef int (* svn_ra__init_func_t ) (int ,TYPE_3__ const**,int *) ;
struct TYPE_29__ {scalar_t__ apr_err; } ;
typedef TYPE_5__ svn_error_t ;
typedef int svn_config_t ;
typedef int svn_auth_baton_t ;
struct ra_lib_defn {char const* ra_name; scalar_t__ schemes; int (* initfunc ) (int ,TYPE_3__ const**,int *) ;} ;
struct TYPE_30__ {int * hostname; } ;
typedef TYPE_6__ apr_uri_t ;
typedef scalar_t__ apr_status_t ;
typedef int apr_pool_t ;
typedef int apr_hash_t ;


 scalar_t__ APR_SUCCESS ;
 char* DEFAULT_HTTP_LIBRARY ;
 int SVN_CONFIG_CATEGORY_SERVERS ;
 int SVN_CONFIG_OPTION_HTTP_LIBRARY ;
 int SVN_CONFIG_SECTION_GROUPS ;
 int SVN_ERR (int ) ;
 int SVN_ERR_BAD_CONFIG_VALUE ;
 int SVN_ERR_RA_CANNOT_CREATE_SESSION ;
 int SVN_ERR_RA_ILLEGAL_URL ;
 scalar_t__ SVN_ERR_RA_SESSION_URL_MISMATCH ;
 int SVN_ERR_RA_UUID_MISMATCH ;
 TYPE_5__* SVN_NO_ERROR ;
 int _ (char*) ;
 TYPE_1__* apr_pcalloc (int *,int) ;
 char* apr_pstrdup (int *,char const*) ;
 scalar_t__ apr_uri_parse (int *,char const*,TYPE_6__*) ;
 int check_ra_version (int ,char const*) ;
 scalar_t__ dav_schemes ;
 char* has_scheme_of (scalar_t__,char const*) ;
 int load_ra_module (int (*) (int ,TYPE_3__ const**,int *),int *,char const*,int *) ;
 struct ra_lib_defn* ra_libraries ;
 scalar_t__ strcmp (char const*,char const*) ;
 int stub1 () ;
 scalar_t__ stub2 (int *) ;
 TYPE_5__* stub3 (TYPE_1__*,char const**,char const*,TYPE_2__ const*,void*,int *,int *,int *,int *) ;
 int stub4 (TYPE_1__*,TYPE_5__* (*) (TYPE_1__**,char const**,char const*,char const*,TYPE_2__ const*,void*,int *,int *)) ;
 int stub5 (TYPE_1__*,char const**,int *) ;
 int svn_auth__make_session_auth (int **,int ,int *,int *,int *,int *) ;
 char* svn_config_find_group (int *,int *,int ,int *) ;
 char* svn_config_get_server_setting (int *,char const*,int ,char*) ;
 TYPE_5__* svn_error_createf (int ,TYPE_5__*,int ,char const*,...) ;
 TYPE_5__* svn_error_trace (TYPE_5__*) ;
 int * svn_hash_gets (int *,int ) ;
 int * svn_pool_create (int *) ;
 int svn_pool_destroy (int *) ;
 int svn_ra_version () ;

svn_error_t *svn_ra_open4(svn_ra_session_t **session_p,
                          const char **corrected_url_p,
                          const char *repos_URL,
                          const char *uuid,
                          const svn_ra_callbacks2_t *callbacks,
                          void *callback_baton,
                          apr_hash_t *config,
                          apr_pool_t *pool)
{
  apr_pool_t *sesspool = svn_pool_create(pool);
  apr_pool_t *scratch_pool = svn_pool_create(sesspool);
  svn_ra_session_t *session;
  const struct ra_lib_defn *defn;
  const svn_ra__vtable_t *vtable = ((void*)0);
  apr_uri_t repos_URI;
  apr_status_t apr_err;
  svn_error_t *err;



  svn_auth_baton_t *auth_baton;


  *session_p = ((void*)0);

  apr_err = apr_uri_parse(sesspool, repos_URL, &repos_URI);




  if (apr_err != APR_SUCCESS || repos_URI.hostname == ((void*)0))
    return svn_error_createf(SVN_ERR_RA_ILLEGAL_URL, ((void*)0),
                             _("Illegal repository URL '%s'"),
                             repos_URL);

  if (callbacks->auth_baton)
    SVN_ERR(svn_auth__make_session_auth(&auth_baton,
                                        callbacks->auth_baton, config,
                                        repos_URI.hostname,
                                        sesspool, scratch_pool));
  else
    auth_baton = ((void*)0);
  for (defn = ra_libraries; defn->ra_name != ((void*)0); ++defn)
    {
      const char *scheme;

      if ((scheme = has_scheme_of(defn->schemes, repos_URL)))
        {
          svn_ra__init_func_t initfunc = defn->initfunc;







          if (! initfunc)
            SVN_ERR(load_ra_module(&initfunc, ((void*)0), defn->ra_name,
                                   scratch_pool));
          if (! initfunc)

            continue;

          SVN_ERR(initfunc(svn_ra_version(), &vtable, scratch_pool));

          SVN_ERR(check_ra_version(vtable->get_version(), scheme));

          if (! has_scheme_of(vtable->get_schemes(scratch_pool), repos_URL))

            continue;


          break;
        }
    }

  if (vtable == ((void*)0))
    return svn_error_createf(SVN_ERR_RA_ILLEGAL_URL, ((void*)0),
                             _("Unrecognized URL scheme for '%s'"),
                             repos_URL);


  session = apr_pcalloc(sesspool, sizeof(*session));
  session->cancel_func = callbacks->cancel_func;
  session->cancel_baton = callback_baton;
  session->vtable = vtable;
  session->pool = sesspool;


  err = vtable->open_session(session, corrected_url_p,
                             repos_URL,
                             callbacks, callback_baton, auth_baton,
                             config, sesspool, scratch_pool);

  if (err)
    {
      svn_pool_destroy(sesspool);
      if (err->apr_err == SVN_ERR_RA_SESSION_URL_MISMATCH)
        return svn_error_trace(err);

      return svn_error_createf(
                SVN_ERR_RA_CANNOT_CREATE_SESSION, err,
                _("Unable to connect to a repository at URL '%s'"),
                repos_URL);
    }





  if (corrected_url_p && *corrected_url_p)
    {

      *corrected_url_p = apr_pstrdup(pool, *corrected_url_p);
      svn_pool_destroy(sesspool);
      return SVN_NO_ERROR;
    }

  if (vtable->set_svn_ra_open)
    SVN_ERR(vtable->set_svn_ra_open(session, svn_ra_open4));


  if (uuid)
    {
      const char *repository_uuid;

      SVN_ERR(vtable->get_uuid(session, &repository_uuid, pool));
      if (strcmp(uuid, repository_uuid) != 0)
        {

          repository_uuid = apr_pstrdup(pool, repository_uuid);
          svn_pool_destroy(sesspool);
          return svn_error_createf(SVN_ERR_RA_UUID_MISMATCH, ((void*)0),
                                   _("Repository UUID '%s' doesn't match "
                                     "expected UUID '%s'"),
                                   repository_uuid, uuid);
        }
    }

  svn_pool_destroy(scratch_pool);
  *session_p = session;
  return SVN_NO_ERROR;
}
