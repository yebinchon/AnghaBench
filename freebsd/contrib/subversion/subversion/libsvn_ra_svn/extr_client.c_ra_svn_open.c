
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int svn_ra_svn__session_baton_t ;
struct TYPE_9__ {int * priv; } ;
typedef TYPE_1__ svn_ra_session_t ;
struct TYPE_10__ {int tunnel_baton; int (* check_tunnel_func ) (int ,char const*) ;scalar_t__ open_tunnel_func; } ;
typedef TYPE_2__ svn_ra_callbacks2_t ;
typedef int svn_error_t ;
typedef int svn_config_t ;
typedef int svn_auth_baton_t ;
struct TYPE_11__ {int hostinfo; } ;
typedef TYPE_3__ apr_uri_t ;
typedef int apr_pool_t ;
typedef int apr_hash_t ;


 int SVN_AUTH_PARAM_CONFIG_CATEGORY_CONFIG ;
 int SVN_AUTH_PARAM_CONFIG_CATEGORY_SERVERS ;
 int SVN_CONFIG_CATEGORY_CONFIG ;
 int SVN_CONFIG_CATEGORY_SERVERS ;
 int SVN_ERR (int ) ;
 int SVN_ERR_BAD_URL ;
 int * SVN_NO_ERROR ;
 int _ (char*) ;
 int find_tunnel_agent (char const*,char const*,char const***,int *,int *) ;
 int is_valid_hostinfo (char const*) ;
 int open_session (int **,char const*,TYPE_3__*,char const*,char const**,int *,TYPE_2__ const*,void*,int *,int *,int *) ;
 int parse_tunnel (char const*,char const**,int *) ;
 int parse_url (char const*,TYPE_3__*,int *) ;
 int stub1 (int ,char const*) ;
 int svn_auth_set_parameter (int *,int ,int *) ;
 int * svn_error_createf (int ,int *,int ,int ) ;
 int * svn_hash_gets (int *,int ) ;
 char* svn_path_uri_decode (int ,int *) ;
 int * svn_pool_create (int *) ;

__attribute__((used)) static svn_error_t *ra_svn_open(svn_ra_session_t *session,
                                const char **corrected_url,
                                const char *url,
                                const svn_ra_callbacks2_t *callbacks,
                                void *callback_baton,
                                svn_auth_baton_t *auth_baton,
                                apr_hash_t *config,
                                apr_pool_t *result_pool,
                                apr_pool_t *scratch_pool)
{
  apr_pool_t *sess_pool = svn_pool_create(result_pool);
  svn_ra_svn__session_baton_t *sess;
  const char *tunnel, **tunnel_argv;
  apr_uri_t uri;
  svn_config_t *cfg, *cfg_client;


  if (corrected_url)
    *corrected_url = ((void*)0);

  SVN_ERR(parse_url(url, &uri, sess_pool));

  parse_tunnel(url, &tunnel, result_pool);




  if (tunnel
      && (!callbacks->open_tunnel_func
          || (callbacks->check_tunnel_func && callbacks->open_tunnel_func
              && !callbacks->check_tunnel_func(callbacks->tunnel_baton,
                                               tunnel))))
    {
      const char *decoded_hostinfo;

      decoded_hostinfo = svn_path_uri_decode(uri.hostinfo, result_pool);

      if (!is_valid_hostinfo(decoded_hostinfo))
        return svn_error_createf(SVN_ERR_BAD_URL, ((void*)0), _("Invalid host '%s'"),
                                 uri.hostinfo);

      SVN_ERR(find_tunnel_agent(tunnel, decoded_hostinfo, &tunnel_argv,
                                config, result_pool));
    }
  else
    tunnel_argv = ((void*)0);

  cfg_client = config
               ? svn_hash_gets(config, SVN_CONFIG_CATEGORY_CONFIG)
               : ((void*)0);
  cfg = config ? svn_hash_gets(config, SVN_CONFIG_CATEGORY_SERVERS) : ((void*)0);
  svn_auth_set_parameter(auth_baton,
                         SVN_AUTH_PARAM_CONFIG_CATEGORY_CONFIG, cfg_client);
  svn_auth_set_parameter(auth_baton,
                         SVN_AUTH_PARAM_CONFIG_CATEGORY_SERVERS, cfg);



  SVN_ERR(open_session(&sess, url, &uri, tunnel, tunnel_argv, config,
                       callbacks, callback_baton,
                       auth_baton, sess_pool, scratch_pool));
  session->priv = sess;

  return SVN_NO_ERROR;
}
