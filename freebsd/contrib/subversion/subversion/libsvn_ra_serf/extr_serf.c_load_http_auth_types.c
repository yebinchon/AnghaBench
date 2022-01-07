
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_error_t ;
typedef int svn_config_t ;
typedef int apr_pool_t ;


 int SERF_AUTHN_ALL ;
 int SERF_AUTHN_BASIC ;
 int SERF_AUTHN_DIGEST ;
 int SERF_AUTHN_NEGOTIATE ;
 int SERF_AUTHN_NONE ;
 int SERF_AUTHN_NTLM ;
 int SVN_CONFIG_OPTION_HTTP_AUTH_TYPES ;
 char const* SVN_CONFIG_SECTION_GLOBAL ;
 int SVN_ERR_BAD_CONFIG_VALUE ;
 int * SVN_NO_ERROR ;
 int _ (char*) ;
 int apr_collapse_spaces (char*,char const*) ;
 char* apr_palloc (int *,scalar_t__) ;
 scalar_t__ strlen (char const*) ;
 int svn_config_get (int *,char const**,char const*,int ,char const*) ;
 scalar_t__ svn_cstring_casecmp (char*,char*) ;
 char* svn_cstring_tokenize (char*,char**) ;
 int * svn_error_createf (int ,int *,int ,int ,char*) ;

__attribute__((used)) static svn_error_t *
load_http_auth_types(apr_pool_t *pool, svn_config_t *config,
                     const char *server_group,
                     int *authn_types)
{
  const char *http_auth_types = ((void*)0);
  *authn_types = SERF_AUTHN_NONE;

  svn_config_get(config, &http_auth_types, SVN_CONFIG_SECTION_GLOBAL,
               SVN_CONFIG_OPTION_HTTP_AUTH_TYPES, ((void*)0));

  if (server_group)
    {
      svn_config_get(config, &http_auth_types, server_group,
                     SVN_CONFIG_OPTION_HTTP_AUTH_TYPES, http_auth_types);
    }

  if (http_auth_types)
    {
      char *token;
      char *auth_types_list = apr_palloc(pool, strlen(http_auth_types) + 1);
      apr_collapse_spaces(auth_types_list, http_auth_types);
      while ((token = svn_cstring_tokenize(";", &auth_types_list)) != ((void*)0))
        {
          if (svn_cstring_casecmp("basic", token) == 0)
            *authn_types |= SERF_AUTHN_BASIC;
          else if (svn_cstring_casecmp("digest", token) == 0)
            *authn_types |= SERF_AUTHN_DIGEST;
          else if (svn_cstring_casecmp("ntlm", token) == 0)
            *authn_types |= SERF_AUTHN_NTLM;
          else if (svn_cstring_casecmp("negotiate", token) == 0)
            *authn_types |= SERF_AUTHN_NEGOTIATE;
          else
            return svn_error_createf(SVN_ERR_BAD_CONFIG_VALUE, ((void*)0),
                                     _("Invalid config: unknown %s "
                                       "'%s'"),
                                     SVN_CONFIG_OPTION_HTTP_AUTH_TYPES, token);
      }
    }
  else
    {

      *authn_types = SERF_AUTHN_ALL;
    }

  return SVN_NO_ERROR;
}
