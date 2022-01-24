#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  svn_ra_svn__session_baton_t ;
struct TYPE_9__ {int /*<<< orphan*/ * priv; } ;
typedef  TYPE_1__ svn_ra_session_t ;
struct TYPE_10__ {int /*<<< orphan*/  tunnel_baton; int /*<<< orphan*/  (* check_tunnel_func ) (int /*<<< orphan*/ ,char const*) ;scalar_t__ open_tunnel_func; } ;
typedef  TYPE_2__ svn_ra_callbacks2_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  int /*<<< orphan*/  svn_config_t ;
typedef  int /*<<< orphan*/  svn_auth_baton_t ;
struct TYPE_11__ {int /*<<< orphan*/  hostinfo; } ;
typedef  TYPE_3__ apr_uri_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;
typedef  int /*<<< orphan*/  apr_hash_t ;

/* Variables and functions */
 int /*<<< orphan*/  SVN_AUTH_PARAM_CONFIG_CATEGORY_CONFIG ; 
 int /*<<< orphan*/  SVN_AUTH_PARAM_CONFIG_CATEGORY_SERVERS ; 
 int /*<<< orphan*/  SVN_CONFIG_CATEGORY_CONFIG ; 
 int /*<<< orphan*/  SVN_CONFIG_CATEGORY_SERVERS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SVN_ERR_BAD_URL ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char const*,char const*,char const***,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (char const*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ **,char const*,TYPE_3__*,char const*,char const**,int /*<<< orphan*/ *,TYPE_2__ const*,void*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (char const*,char const**,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (char const*,TYPE_3__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 char* FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC12 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static svn_error_t *FUNC13(svn_ra_session_t *session,
                                const char **corrected_url,
                                const char *url,
                                const svn_ra_callbacks2_t *callbacks,
                                void *callback_baton,
                                svn_auth_baton_t *auth_baton,
                                apr_hash_t *config,
                                apr_pool_t *result_pool,
                                apr_pool_t *scratch_pool)
{
  apr_pool_t *sess_pool = FUNC12(result_pool);
  svn_ra_svn__session_baton_t *sess;
  const char *tunnel, **tunnel_argv;
  apr_uri_t uri;
  svn_config_t *cfg, *cfg_client;

  /* We don't support server-prescribed redirections in ra-svn. */
  if (corrected_url)
    *corrected_url = NULL;

  FUNC0(FUNC6(url, &uri, sess_pool));

  FUNC5(url, &tunnel, result_pool);

  /* Use the default tunnel implementation if we got a tunnel name,
     but either do not have tunnel handler callbacks installed, or
     the handlers don't like the tunnel name. */
  if (tunnel
      && (!callbacks->open_tunnel_func
          || (callbacks->check_tunnel_func && callbacks->open_tunnel_func
              && !callbacks->check_tunnel_func(callbacks->tunnel_baton,
                                               tunnel))))
    {
      const char *decoded_hostinfo;

      decoded_hostinfo = FUNC11(uri.hostinfo, result_pool);

      if (!FUNC3(decoded_hostinfo))
        return FUNC9(SVN_ERR_BAD_URL, NULL, FUNC1("Invalid host '%s'"),
                                 uri.hostinfo);

      FUNC0(FUNC2(tunnel, decoded_hostinfo, &tunnel_argv,
                                config, result_pool));
    }
  else
    tunnel_argv = NULL;

  cfg_client = config
               ? FUNC10(config, SVN_CONFIG_CATEGORY_CONFIG)
               : NULL;
  cfg = config ? FUNC10(config, SVN_CONFIG_CATEGORY_SERVERS) : NULL;
  FUNC8(auth_baton,
                         SVN_AUTH_PARAM_CONFIG_CATEGORY_CONFIG, cfg_client);
  FUNC8(auth_baton,
                         SVN_AUTH_PARAM_CONFIG_CATEGORY_SERVERS, cfg);

  /* We open the session in a subpool so we can get rid of it if we
     reparent with a server that doesn't support reparenting. */
  FUNC0(FUNC4(&sess, url, &uri, tunnel, tunnel_argv, config,
                       callbacks, callback_baton,
                       auth_baton, sess_pool, scratch_pool));
  session->priv = sess;

  return SVN_NO_ERROR;
}