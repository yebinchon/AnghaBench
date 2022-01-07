
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int svn_stream_t ;
typedef int svn_revnum_t ;
typedef int svn_error_t ;
struct TYPE_3__ {int verbose; scalar_t__ use_merge_history; } ;
typedef TYPE_1__ svn_cl__opt_state_t ;
typedef scalar_t__ svn_boolean_t ;
struct TYPE_4__ {int rev_maxlength; int * out; TYPE_1__* opt_state; } ;
typedef TYPE_2__ blame_baton_t ;
typedef int apr_pool_t ;
typedef int apr_int64_t ;
typedef int apr_hash_t ;


 int APR_EOL_STR ;
 scalar_t__ FALSE ;
 int MAX (int,int) ;
 int SVN_ERR (int ) ;
 int SVN_PROP_REVISION_AUTHOR ;
 int SVN_PROP_REVISION_DATE ;
 scalar_t__ TRUE ;
 int print_line_info (int *,int,int ,int ,char const*,int ,int,int *) ;
 int svn_prop_get_value (int *,int ) ;
 int * svn_stream_printf (int *,int *,char*,char const*,int ) ;
 int svn_stream_puts (int *,char*) ;

__attribute__((used)) static svn_error_t *
blame_receiver(void *baton,
               svn_revnum_t start_revnum,
               svn_revnum_t end_revnum,
               apr_int64_t line_no,
               svn_revnum_t revision,
               apr_hash_t *rev_props,
               svn_revnum_t merged_revision,
               apr_hash_t *merged_rev_props,
               const char *merged_path,
               const char *line,
               svn_boolean_t local_change,
               apr_pool_t *pool)
{
  blame_baton_t *bb = baton;
  svn_cl__opt_state_t *opt_state = bb->opt_state;
  svn_stream_t *out = bb->out;
  svn_boolean_t use_merged = FALSE;

  if (!bb->rev_maxlength)
    {
      svn_revnum_t max_revnum = MAX(start_revnum, end_revnum);




      bb->rev_maxlength = 6;
      while (max_revnum >= 1000000)
        {
          bb->rev_maxlength++;
          max_revnum = max_revnum / 10;
        }
    }

  if (opt_state->use_merge_history)
    {





      if (merged_revision < revision)
        {
          SVN_ERR(svn_stream_puts(out, "G "));
          use_merged = TRUE;
        }
      else
        SVN_ERR(svn_stream_puts(out, "  "));
    }

  if (use_merged)
    SVN_ERR(print_line_info(out, merged_revision,
                            svn_prop_get_value(merged_rev_props,
                                               SVN_PROP_REVISION_AUTHOR),
                            svn_prop_get_value(merged_rev_props,
                                               SVN_PROP_REVISION_DATE),
                            merged_path, opt_state->verbose,
                            bb->rev_maxlength,
                            pool));
  else
    SVN_ERR(print_line_info(out, revision,
                            svn_prop_get_value(rev_props,
                                               SVN_PROP_REVISION_AUTHOR),
                            svn_prop_get_value(rev_props,
                                               SVN_PROP_REVISION_DATE),
                            ((void*)0), opt_state->verbose,
                            bb->rev_maxlength,
                            pool));

  return svn_stream_printf(out, pool, "%s%s", line, APR_EOL_STR);
}
