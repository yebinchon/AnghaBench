
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int svn_stream_t ;
typedef int svn_error_t ;
typedef int svn_diff_t ;
struct TYPE_4__ {int context_size; int show_c_function; int ignore_eol_style; } ;
typedef TYPE_1__ svn_diff_file_options_t ;
typedef int svn_client_conflict_t ;
typedef int svn_cancel_func_t ;
typedef int apr_pool_t ;


 int APR_LOCALE_CHARSET ;
 int SVN_ERR (int ) ;
 int TRUE ;
 char* _ (char*) ;
 char* apr_psprintf (int *,char*,int ,char const*) ;
 int svn_cl__local_style_skip_ancestor (char const*,char const*,int *) ;
 scalar_t__ svn_client_conflict_get_operation (int *) ;
 int svn_client_conflict_text_get_contents (int *,char const**,int *,char const**,int *,int *,int *) ;
 int svn_diff_file_diff_2 (int **,char const*,char const*,TYPE_1__*,int *) ;
 TYPE_1__* svn_diff_file_options_create (int *) ;
 int * svn_diff_file_output_unified4 (int *,int *,char const*,char const*,char const*,char const*,int ,int *,int ,int ,int ,void*,int *) ;
 int svn_stream_for_stdout (int **,int *) ;
 scalar_t__ svn_wc_operation_merge ;

__attribute__((used)) static svn_error_t *
show_diff(svn_client_conflict_t *conflict,
          const char *merged_abspath,
          const char *path_prefix,
          svn_cancel_func_t cancel_func,
          void *cancel_baton,
          apr_pool_t *pool)
{
  const char *path1, *path2;
  const char *label1, *label2;
  svn_diff_t *diff;
  svn_stream_t *output;
  svn_diff_file_options_t *options;
  const char *my_abspath;
  const char *their_abspath;

  SVN_ERR(svn_client_conflict_text_get_contents(((void*)0), &my_abspath, ((void*)0),
                                                &their_abspath,
                                                conflict, pool, pool));
  if (merged_abspath)
    {
      if (svn_client_conflict_get_operation(conflict) == svn_wc_operation_merge)
        {
          path1 = my_abspath;
          label1 = _("MINE");
        }
      else
        {
          path1 = their_abspath;
          label1 = _("THEIRS");
        }
      path2 = merged_abspath;
      label2 = _("MERGED");
    }
  else
    {


      path1 = their_abspath;
      label1 = _("THEIRS");
      path2 = my_abspath;
      label2 = _("MINE");
    }

  label1 = apr_psprintf(pool, "%s\t- %s",
                        svn_cl__local_style_skip_ancestor(
                          path_prefix, path1, pool), label1);
  label2 = apr_psprintf(pool, "%s\t- %s",
                        svn_cl__local_style_skip_ancestor(
                          path_prefix, path2, pool), label2);

  options = svn_diff_file_options_create(pool);
  options->ignore_eol_style = TRUE;
  SVN_ERR(svn_stream_for_stdout(&output, pool));
  SVN_ERR(svn_diff_file_diff_2(&diff, path1, path2,
                               options, pool));
  return svn_diff_file_output_unified4(output, diff,
                                       path1, path2,
                                       label1, label2,
                                       APR_LOCALE_CHARSET,
                                       ((void*)0),
                                       options->show_c_function,
                                       options->context_size,
                                       cancel_func, cancel_baton,
                                       pool);
}
