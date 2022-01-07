
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;


struct TYPE_14__ {scalar_t__ apr_err; } ;
typedef TYPE_1__ svn_error_t ;
struct TYPE_15__ {int cancel_baton; int cancel_func; } ;
typedef TYPE_2__ svn_cmdline_prompt_baton_t ;
typedef int svn_client_ctx_t ;
typedef int svn_client_conflict_t ;
typedef scalar_t__ svn_client_conflict_option_id_t ;
typedef int svn_cl__conflict_stats_t ;
typedef int svn_boolean_t ;
struct TYPE_16__ {scalar_t__ choice; int code; } ;
typedef TYPE_3__ client_option_t ;
typedef int buf ;
typedef int apr_pool_t ;
typedef int apr_hash_t ;
typedef int apr_array_header_t ;


 int FALSE ;
 int SVN_ERR (int ) ;
 scalar_t__ SVN_ERR_CL_NO_EXTERNAL_MERGE_TOOL ;
 scalar_t__ SVN_ERR_EXTERNAL_PROGRAM ;
 TYPE_1__* SVN_NO_ERROR ;
 int TRUE ;
 int _ (char*) ;
 int build_text_conflict_options (int **,int *,int *,int,int *,int *) ;
 int help_string (char const**,int *,int *) ;
 int mark_conflict_resolved (int *,scalar_t__,int,int *,int,char const*,int *,int *,int *) ;
 int open_editor (int*,char const*,char const*,int *,int *) ;
 int prompt_user (TYPE_3__ const**,int *,char const**,int *,TYPE_2__*,int *) ;
 int show_conflicts (int *,int ,int ,int *) ;
 int show_diff (int *,char const*,char const*,int ,int ,int *) ;
 int stderr ;
 scalar_t__ strcmp (int ,char*) ;
 char* svn_cl__local_style_skip_ancestor (char const*,char const*,int *) ;
 int svn_cl__merge_file (int*,char const*,char const*,char const*,char const*,char const*,char const*,char const*,int *,int ,int ,int *) ;
 TYPE_1__* svn_cl__merge_file_externally (char const*,char const*,char const*,char const*,char const*,int *,int *,int *) ;
 char* svn_client_conflict_get_local_abspath (int *) ;
 scalar_t__ svn_client_conflict_option_incoming_text_where_conflicted ;
 scalar_t__ svn_client_conflict_option_merged_text ;
 scalar_t__ svn_client_conflict_option_postpone ;
 scalar_t__ svn_client_conflict_option_undefined ;
 scalar_t__ svn_client_conflict_option_unspecified ;
 scalar_t__ svn_client_conflict_option_working_text_where_conflicted ;
 int svn_client_conflict_text_get_contents (int *,char const**,char const**,char const**,int *,int *,int *) ;
 char* svn_client_conflict_text_get_mime_type (int *) ;
 int svn_cmdline_fprintf (int ,int *,char*,...) ;
 char* svn_err_best_message (TYPE_1__*,char*,int) ;
 int svn_error_clear (TYPE_1__*) ;
 TYPE_1__* svn_error_trace (TYPE_1__*) ;
 int svn_mime_type_is_binary (char const*) ;
 int svn_pool_clear (int *) ;
 int * svn_pool_create (int *) ;
 int svn_pool_destroy (int *) ;

__attribute__((used)) static svn_error_t *
handle_text_conflict(svn_boolean_t *resolved,
                     svn_boolean_t *postponed,
                     svn_boolean_t *quit,
                     svn_boolean_t *printed_description,
                     svn_client_conflict_t *conflict,
                     const char *path_prefix,
                     svn_cmdline_prompt_baton_t *pb,
                     const char *editor_cmd,
                     apr_hash_t *config,
                     svn_cl__conflict_stats_t *conflict_stats,
                     svn_client_ctx_t *ctx,
                     apr_pool_t *scratch_pool)
{
  apr_pool_t *iterpool = svn_pool_create(scratch_pool);
  svn_boolean_t diff_allowed = FALSE;

  svn_boolean_t performed_edit = FALSE;


  svn_boolean_t knows_something = FALSE;
  const char *local_relpath;
  const char *local_abspath = svn_client_conflict_get_local_abspath(conflict);
  const char *mime_type = svn_client_conflict_text_get_mime_type(conflict);
  svn_boolean_t is_binary = mime_type ? svn_mime_type_is_binary(mime_type)
                                      : FALSE;
  const char *base_abspath;
  const char *my_abspath;
  const char *their_abspath;
  const char *merged_abspath = svn_client_conflict_get_local_abspath(conflict);
  apr_array_header_t *text_conflict_options;
  svn_client_conflict_option_id_t option_id;

  option_id = svn_client_conflict_option_unspecified;

  SVN_ERR(svn_client_conflict_text_get_contents(((void*)0), &my_abspath,
                                                &base_abspath, &their_abspath,
                                                conflict, scratch_pool,
                                                scratch_pool));

  local_relpath = svn_cl__local_style_skip_ancestor(path_prefix,
                                                    local_abspath,
                                                    scratch_pool);

  if (!*printed_description)
    {
      if (is_binary)
        SVN_ERR(svn_cmdline_fprintf(stderr, scratch_pool,
                                    _("Merge conflict discovered in binary "
                                      "file '%s'.\n"),
                                    local_relpath));
      else
        SVN_ERR(svn_cmdline_fprintf(stderr, scratch_pool,
                                    _("Merge conflict discovered in file '%s'.\n"),
                                    local_relpath));
      *printed_description = TRUE;
    }
  if (!is_binary &&
      ((merged_abspath && base_abspath)
      || (!base_abspath && my_abspath && their_abspath)))
    diff_allowed = TRUE;

  SVN_ERR(build_text_conflict_options(&text_conflict_options, conflict, ctx,
                                      is_binary, scratch_pool, scratch_pool));
  while (TRUE)
    {
      const char *suggested_options[9];
      const char **next_option = suggested_options;
      const client_option_t *opt;

      svn_pool_clear(iterpool);

      *next_option++ = "p";
      if (diff_allowed)
        {

          if (my_abspath)
            *next_option++ = "df";

          *next_option++ = "e";


          if (my_abspath)
            *next_option++ = "m";

          if (knows_something)
            *next_option++ = "r";
        }
      else
        {
          if (knows_something || is_binary)
            *next_option++ = "r";



          if (my_abspath || is_binary)
            *next_option++ = "mf";

          *next_option++ = "tf";
        }
      *next_option++ = "s";
      *next_option++ = ((void*)0);

      SVN_ERR(prompt_user(&opt, text_conflict_options, suggested_options,
                          ((void*)0), pb, iterpool));
      if (! opt)
        continue;

      if (strcmp(opt->code, "q") == 0)
        {
          option_id = opt->choice;
          *quit = TRUE;
          break;
        }
      else if (strcmp(opt->code, "s") == 0)
        {
          const char *helpstr;

          SVN_ERR(help_string(&helpstr, text_conflict_options, iterpool));
          SVN_ERR(svn_cmdline_fprintf(stderr, scratch_pool, "\n%s\n",
                                      helpstr));
        }
      else if (strcmp(opt->code, "dc") == 0)
        {
          if (is_binary)
            {
              SVN_ERR(svn_cmdline_fprintf(stderr, iterpool,
                                          _("Invalid option; cannot "
                                            "display conflicts for a "
                                            "binary file.\n\n")));
              continue;
            }
          else if (! (my_abspath && base_abspath && their_abspath))
            {
              SVN_ERR(svn_cmdline_fprintf(stderr, iterpool,
                                          _("Invalid option; original "
                                            "files not available.\n\n")));
              continue;
            }
          SVN_ERR(show_conflicts(conflict,
                                 pb->cancel_func,
                                 pb->cancel_baton,
                                 iterpool));
          knows_something = TRUE;
        }
      else if (strcmp(opt->code, "df") == 0)
        {

          if (! diff_allowed || ! my_abspath)
            {
              SVN_ERR(svn_cmdline_fprintf(stderr, iterpool,
                             _("Invalid option; there's no "
                                "merged version to diff.\n\n")));
              continue;
            }

          SVN_ERR(show_diff(conflict, merged_abspath, path_prefix,
                            pb->cancel_func, pb->cancel_baton,
                            iterpool));
          knows_something = TRUE;
        }
      else if (strcmp(opt->code, "e") == 0 || strcmp(opt->code, ":-E") == 0)
        {
          SVN_ERR(open_editor(&performed_edit, merged_abspath, editor_cmd,
                              config, iterpool));
          if (performed_edit)
            knows_something = TRUE;
        }
      else if (strcmp(opt->code, "m") == 0 || strcmp(opt->code, ":-g") == 0 ||
               strcmp(opt->code, "=>-") == 0 || strcmp(opt->code, ":>.") == 0)
        {
          svn_error_t *err;


          if (! my_abspath)
            {
              SVN_ERR(svn_cmdline_fprintf(stderr, iterpool,
                             _("Invalid option; there's no "
                                "base path to merge.\n\n")));
              continue;
            }

          err = svn_cl__merge_file_externally(base_abspath,
                                              their_abspath,
                                              my_abspath,
                                              merged_abspath,
                                              local_abspath, config,
                                              ((void*)0), iterpool);
          if (err)
            {
              if (err->apr_err == SVN_ERR_CL_NO_EXTERNAL_MERGE_TOOL)
                {
                  svn_boolean_t remains_in_conflict = TRUE;


                  svn_error_clear(err);
                  SVN_ERR(svn_cl__merge_file(&remains_in_conflict,
                                             base_abspath,
                                             their_abspath,
                                             my_abspath,
                                             merged_abspath,
                                             local_abspath,
                                             path_prefix,
                                             editor_cmd,
                                             config,
                                             pb->cancel_func,
                                             pb->cancel_baton,
                                             iterpool));
                  knows_something = !remains_in_conflict;
                }
              else if (err->apr_err == SVN_ERR_EXTERNAL_PROGRAM)
                {
                  char buf[1024];
                  const char *message;

                  message = svn_err_best_message(err, buf, sizeof(buf));
                  SVN_ERR(svn_cmdline_fprintf(stderr, iterpool,
                                              "%s\n", message));
                  svn_error_clear(err);
                  continue;
                }
              else
                return svn_error_trace(err);
            }
          else
            {




              performed_edit = TRUE;
              knows_something = TRUE;
            }
        }
      else if (strcmp(opt->code, "l") == 0 || strcmp(opt->code, ":-l") == 0)
        {




          if (base_abspath && their_abspath && my_abspath && merged_abspath)
            {
              svn_error_t *err;
              char buf[1024];
              const char *message;

              err = svn_cl__merge_file_externally(base_abspath,
                                                  their_abspath,
                                                  my_abspath,
                                                  merged_abspath,
                                                  local_abspath,
                                                  config, ((void*)0), iterpool);
              if (err && (err->apr_err == SVN_ERR_CL_NO_EXTERNAL_MERGE_TOOL ||
                          err->apr_err == SVN_ERR_EXTERNAL_PROGRAM))
                {
                  message = svn_err_best_message(err, buf, sizeof(buf));
                  SVN_ERR(svn_cmdline_fprintf(stderr, iterpool, "%s\n",
                                              message));
                  svn_error_clear(err);
                }
              else if (err)
                return svn_error_trace(err);
              else
                performed_edit = TRUE;

              if (performed_edit)
                knows_something = TRUE;
            }
          else
            SVN_ERR(svn_cmdline_fprintf(stderr, iterpool,
                                        _("Invalid option.\n\n")));
        }
      else if (strcmp(opt->code, "i") == 0)
        {
          svn_boolean_t remains_in_conflict = TRUE;

          SVN_ERR(svn_cl__merge_file(&remains_in_conflict,
                                     base_abspath,
                                     their_abspath,
                                     my_abspath,
                                     merged_abspath,
                                     local_abspath,
                                     path_prefix,
                                     editor_cmd,
                                     config,
                                     pb->cancel_func,
                                     pb->cancel_baton,
                                     iterpool));

          if (!remains_in_conflict)
            knows_something = TRUE;
        }
      else if (opt->choice != svn_client_conflict_option_undefined)
        {
          if ((opt->choice == svn_client_conflict_option_working_text_where_conflicted
               || opt->choice == svn_client_conflict_option_incoming_text_where_conflicted)
              && is_binary)
            {
              SVN_ERR(svn_cmdline_fprintf(stderr, iterpool,
                                          _("Invalid option; cannot choose "
                                            "based on conflicts in a "
                                            "binary file.\n\n")));
              continue;
            }




          if (opt->choice == svn_client_conflict_option_merged_text
              && ! knows_something && diff_allowed)
            {
              SVN_ERR(svn_cmdline_fprintf(
                        stderr, iterpool,
                        _("Invalid option; use diff/edit/merge/launch "
                          "before choosing 'mark resolved'.\n\n")));
              continue;
            }

          option_id = opt->choice;
          break;
        }
    }
  svn_pool_destroy(iterpool);

  if (option_id != svn_client_conflict_option_unspecified &&
      option_id != svn_client_conflict_option_postpone)
    {
      SVN_ERR(mark_conflict_resolved(conflict, option_id,
                                     TRUE, ((void*)0), FALSE,
                                     path_prefix, conflict_stats,
                                     ctx, scratch_pool));
      *resolved = TRUE;
    }
  else
    {
      *resolved = FALSE;
      *postponed = (option_id == svn_client_conflict_option_postpone);
    }

  return SVN_NO_ERROR;
}
