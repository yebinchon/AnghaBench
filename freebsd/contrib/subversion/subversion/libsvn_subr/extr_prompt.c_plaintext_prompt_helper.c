
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int terminal_handle_t ;
typedef int svn_error_t ;
struct TYPE_3__ {int config_dir; } ;
typedef TYPE_1__ svn_cmdline_prompt_baton2_t ;
typedef scalar_t__ svn_boolean_t ;
typedef int apr_pool_t ;


 scalar_t__ FALSE ;
 int SVN_CONFIG_CATEGORY_SERVERS ;
 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 scalar_t__ TRUE ;
 char* _ (char*) ;
 int apr_psprintf (int *,char const*,char const*,char const*) ;
 scalar_t__ apr_strnatcasecmp (char const*,char*) ;
 int prompt (char const**,char const*,scalar_t__,TYPE_1__*,int *) ;
 int svn_config_get_user_config_path (char const**,int ,int ,int *) ;
 int terminal_close (int *) ;
 int terminal_open (int **,scalar_t__,int *) ;
 int terminal_puts (int ,int *,int *) ;

__attribute__((used)) static svn_error_t *
plaintext_prompt_helper(svn_boolean_t *may_save_plaintext,
                        const char *realmstring,
                        const char *prompt_string,
                        const char *prompt_text,
                        void *baton,
                        apr_pool_t *pool)
{
  const char *answer = ((void*)0);
  svn_boolean_t answered = FALSE;
  svn_cmdline_prompt_baton2_t *pb = baton;
  const char *config_path = ((void*)0);
  terminal_handle_t *terminal;

  *may_save_plaintext = FALSE;

  if (pb)
    SVN_ERR(svn_config_get_user_config_path(&config_path, pb->config_dir,
                                            SVN_CONFIG_CATEGORY_SERVERS, pool));

  SVN_ERR(terminal_open(&terminal, FALSE, pool));
  SVN_ERR(terminal_puts(apr_psprintf(pool, prompt_text,
                                     realmstring, config_path),
                        terminal, pool));
  SVN_ERR(terminal_close(terminal));

  do
    {
      SVN_ERR(prompt(&answer, prompt_string, FALSE, pb, pool));
      if (apr_strnatcasecmp(answer, _("yes")) == 0 ||
          apr_strnatcasecmp(answer, _("y")) == 0)
        {
          *may_save_plaintext = TRUE;
          answered = TRUE;
        }
      else if (apr_strnatcasecmp(answer, _("no")) == 0 ||
               apr_strnatcasecmp(answer, _("n")) == 0)
        {
          *may_save_plaintext = FALSE;
          answered = TRUE;
        }
      else
          prompt_string = _("Please type 'yes' or 'no': ");
    }
  while (! answered);

  return SVN_NO_ERROR;
}
