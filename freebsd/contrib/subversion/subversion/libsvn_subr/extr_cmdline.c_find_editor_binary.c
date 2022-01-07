
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_error_t ;
struct svn_config_t {int dummy; } ;
typedef int apr_hash_t ;


 char* SVN_CLIENT_EDITOR ;
 int SVN_CONFIG_CATEGORY_CONFIG ;
 int SVN_CONFIG_OPTION_EDITOR_CMD ;
 int SVN_CONFIG_SECTION_HELPERS ;
 int SVN_ERR_CL_NO_EXTERNAL_EDITOR ;
 int * SVN_NO_ERROR ;
 int _ (char*) ;
 char* getenv (char*) ;
 int svn_config_get (struct svn_config_t*,char const**,int ,int ,int *) ;
 int svn_ctype_isspace (char const) ;
 int * svn_error_create (int ,int *,int ) ;
 struct svn_config_t* svn_hash_gets (int *,int ) ;

__attribute__((used)) static svn_error_t *
find_editor_binary(const char **editor,
                   const char *editor_cmd,
                   apr_hash_t *config)
{
  const char *e;
  struct svn_config_t *cfg;


  e = editor_cmd;


  if (! e)
    e = getenv("SVN_EDITOR");


  if (! e)
    {
      cfg = config ? svn_hash_gets(config, SVN_CONFIG_CATEGORY_CONFIG) : ((void*)0);
      svn_config_get(cfg, &e, SVN_CONFIG_SECTION_HELPERS,
                     SVN_CONFIG_OPTION_EDITOR_CMD, ((void*)0));
    }


  if (! e)
    e = getenv("VISUAL");
  if (! e)
    e = getenv("EDITOR");
  if (e)
    {
      const char *c;

      for (c = e; *c; c++)
        if (!svn_ctype_isspace(*c))
          break;

      if (! *c)
        return svn_error_create
          (SVN_ERR_CL_NO_EXTERNAL_EDITOR, ((void*)0),
           _("The EDITOR, SVN_EDITOR or VISUAL environment variable or "
             "'editor-cmd' run-time configuration option is empty or "
             "consists solely of whitespace. Expected a shell command."));
    }
  else
    return svn_error_create
      (SVN_ERR_CL_NO_EXTERNAL_EDITOR, ((void*)0),
       _("None of the environment variables SVN_EDITOR, VISUAL or EDITOR are "
         "set, and no 'editor-cmd' run-time configuration option was found"));

  *editor = e;
  return SVN_NO_ERROR;
}
