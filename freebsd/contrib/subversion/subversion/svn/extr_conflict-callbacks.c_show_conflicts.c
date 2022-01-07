
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int svn_stream_t ;
typedef int svn_error_t ;
typedef int svn_diff_t ;
struct TYPE_4__ {int ignore_eol_style; } ;
typedef TYPE_1__ svn_diff_file_options_t ;
typedef int svn_client_conflict_t ;
typedef int svn_cancel_func_t ;
typedef int apr_pool_t ;


 int SVN_ERR (int ) ;
 int TRUE ;
 int _ (char*) ;
 int svn_client_conflict_text_get_contents (int *,char const**,char const**,char const**,int *,int *,int *) ;
 int svn_diff_conflict_display_only_conflicts ;
 int svn_diff_file_diff3_2 (int **,char const*,char const*,char const*,TYPE_1__*,int *) ;
 TYPE_1__* svn_diff_file_options_create (int *) ;
 int * svn_diff_file_output_merge3 (int *,int *,char const*,char const*,char const*,int ,int ,int ,char*,int ,int ,void*,int *) ;
 int svn_stream_for_stdout (int **,int *) ;

__attribute__((used)) static svn_error_t *
show_conflicts(svn_client_conflict_t *conflict,
               svn_cancel_func_t cancel_func,
               void *cancel_baton,
               apr_pool_t *pool)
{
  svn_diff_t *diff;
  svn_stream_t *output;
  svn_diff_file_options_t *options;
  const char *base_abspath;
  const char *my_abspath;
  const char *their_abspath;

  SVN_ERR(svn_client_conflict_text_get_contents(((void*)0), &my_abspath,
                                                &base_abspath, &their_abspath,
                                                conflict, pool, pool));
  options = svn_diff_file_options_create(pool);
  options->ignore_eol_style = TRUE;
  SVN_ERR(svn_stream_for_stdout(&output, pool));
  SVN_ERR(svn_diff_file_diff3_2(&diff, base_abspath, my_abspath, their_abspath,
                                options, pool));


  return svn_diff_file_output_merge3(
           output, diff, base_abspath, my_abspath, their_abspath,
           _("||||||| ORIGINAL"),
           _("<<<<<<< MINE (select with 'mc')"),
           _(">>>>>>> THEIRS (select with 'tc')"),
           "=======",
           svn_diff_conflict_display_only_conflicts,
           cancel_func,
           cancel_baton,
           pool);
}
