
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_error_t ;
typedef int svn_config_t ;
typedef scalar_t__ apr_status_t ;
typedef int apr_size_t ;
typedef int apr_pool_t ;
typedef int apr_hash_t ;


 scalar_t__ APR_SUCCESS ;
 int SVN_CONFIG_CATEGORY_CONFIG ;
 int SVN_CONFIG_SECTION_TUNNELS ;
 int SVN_ERR_BAD_URL ;
 int * SVN_NO_ERROR ;
 int _ (char*) ;
 char** apr_palloc (int *,int) ;
 char* apr_pstrmemdup (int *,char const*,int) ;
 scalar_t__ apr_tokenize_to_argv (char const*,char***,int *) ;
 char* getenv (char const*) ;
 scalar_t__ strcmp (char const*,char*) ;
 int strcspn (char const*,char*) ;
 int svn_config_get (int *,char const**,int ,char const*,int *) ;
 int * svn_error_createf (int ,int *,int ,char const*,...) ;
 int * svn_error_wrap_apr (scalar_t__,int ,char const*) ;
 int * svn_hash_gets (int *,int ) ;

__attribute__((used)) static svn_error_t *find_tunnel_agent(const char *tunnel,
                                      const char *hostinfo,
                                      const char ***argv_p,
                                      apr_hash_t *config, apr_pool_t *pool)
{
  svn_config_t *cfg;
  const char *val, *var, *cmd;
  char **cmd_argv;
  const char **argv;
  apr_size_t len;
  apr_status_t status;
  int n;


  cfg = config ? svn_hash_gets(config, SVN_CONFIG_CATEGORY_CONFIG) : ((void*)0);
  svn_config_get(cfg, &val, SVN_CONFIG_SECTION_TUNNELS, tunnel, ((void*)0));


  if (!val && strcmp(tunnel, "ssh") == 0)
    {







      val = "$SVN_SSH ssh -q --";
    }

  if (!val || !*val)
    return svn_error_createf(SVN_ERR_BAD_URL, ((void*)0),
                             _("Undefined tunnel scheme '%s'"), tunnel);



  if (*val == '$')
    {
      val++;
      len = strcspn(val, " ");
      var = apr_pstrmemdup(pool, val, len);
      cmd = getenv(var);
      if (!cmd)
        {
          cmd = val + len;
          while (*cmd == ' ')
            cmd++;
          if (!*cmd)
            return svn_error_createf(SVN_ERR_BAD_URL, ((void*)0),
                                     _("Tunnel scheme %s requires environment "
                                       "variable %s to be defined"), tunnel,
                                     var);
        }
    }
  else
    cmd = val;


  status = apr_tokenize_to_argv(cmd, &cmd_argv, pool);
  if (status != APR_SUCCESS)
    return svn_error_wrap_apr(status, _("Can't tokenize command '%s'"), cmd);


  for (n = 0; cmd_argv[n] != ((void*)0); n++)
    ;

  argv = apr_palloc(pool, (n + 4) * sizeof(char *));


  for (n = 0; cmd_argv[n] != ((void*)0); n++)
    argv[n] = cmd_argv[n];

  argv[n++] = hostinfo;
  argv[n++] = "svnserve";
  argv[n++] = "-t";
  argv[n] = ((void*)0);

  *argv_p = argv;
  return SVN_NO_ERROR;
}
