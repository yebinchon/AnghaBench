
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_error_t ;
typedef int client_option_t ;
typedef int apr_pool_t ;
typedef int apr_array_header_t ;


 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int _ (char*) ;
 int * find_option (int const*,char const*) ;
 int help_string (char const**,int const*,int *) ;
 char* prompt_string (int const*,char const* const*,int *) ;
 int stderr ;
 scalar_t__ strcmp (char const*,char*) ;
 int svn_cmdline_fprintf (int ,int *,char*,...) ;
 int svn_cmdline_prompt_user2 (char const**,char const*,void*,int *) ;

__attribute__((used)) static svn_error_t *
prompt_user(const client_option_t **opt,
            const apr_array_header_t *conflict_options,
            const char *const *options_to_show,
            const char *conflict_description,
            void *prompt_baton,
            apr_pool_t *scratch_pool)
{
  const char *prompt
    = prompt_string(conflict_options, options_to_show, scratch_pool);
  const char *answer;

  SVN_ERR(svn_cmdline_prompt_user2(&answer, prompt, prompt_baton, scratch_pool));
  if (strcmp(answer, "h") == 0 || strcmp(answer, "?") == 0)
    {
      const char *helpstr;

      if (conflict_description)
        SVN_ERR(svn_cmdline_fprintf(stderr, scratch_pool, "\n%s\n",
                                    conflict_description));
      SVN_ERR(help_string(&helpstr, conflict_options, scratch_pool));
      SVN_ERR(svn_cmdline_fprintf(stderr, scratch_pool, "\n%s\n", helpstr));
      *opt = ((void*)0);
    }
  else
    {
      *opt = find_option(conflict_options, answer);
      if (! *opt)
        {
          SVN_ERR(svn_cmdline_fprintf(stderr, scratch_pool,
                                      _("Unrecognized option.\n\n")));
        }
    }
  return SVN_NO_ERROR;
}
