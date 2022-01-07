
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int svn_wc_context_t ;
typedef scalar_t__ svn_subst_eol_style_t ;
struct TYPE_3__ {int data; } ;
typedef TYPE_1__ svn_string_t ;
typedef int svn_stream_t ;
typedef int svn_error_t ;
typedef scalar_t__ svn_boolean_t ;
typedef int apr_pool_t ;
typedef int apr_hash_t ;


 int FALSE ;
 int SVN_ERR (int ) ;
 int SVN_ERR_IO_UNKNOWN_EOL ;
 int * SVN_NO_ERROR ;
 int SVN_PROP_EOL_STYLE ;
 int SVN_PROP_KEYWORDS ;
 int SVN_PROP_SPECIAL ;
 char* SVN_SUBST_NATIVE_EOL_STR ;
 int properties_same_p (scalar_t__*,int *,int *,int *) ;
 int * svn_error_create (int ,int *,int *) ;
 TYPE_1__* svn_hash_gets (int *,int ) ;
 int svn_stream_contents_same2 (scalar_t__*,int *,int *,int *) ;
 int svn_stream_open_readonly (int **,char const*,int *,int *) ;
 int svn_subst_build_keywords3 (int **,int ,char*,char*,char*,int ,char*,int *) ;
 scalar_t__ svn_subst_eol_style_fixed ;
 int svn_subst_eol_style_from_value (scalar_t__*,char const**,int ) ;
 scalar_t__ svn_subst_eol_style_native ;
 scalar_t__ svn_subst_eol_style_none ;
 int svn_subst_read_specialfile (int **,char const*,int *,int *) ;
 int * svn_subst_stream_translated (int *,char const*,int ,int *,int ,int *) ;
 int svn_wc_prop_list2 (int **,int *,char const*,int *,int *) ;

__attribute__((used)) static svn_error_t *
files_same_p(svn_boolean_t *same,
             const char *older_abspath,
             apr_hash_t *original_props,
             const char *mine_abspath,
             svn_wc_context_t *wc_ctx,
             apr_pool_t *scratch_pool)
{
  apr_hash_t *working_props;

  SVN_ERR(svn_wc_prop_list2(&working_props, wc_ctx, mine_abspath,
                            scratch_pool, scratch_pool));


  SVN_ERR(properties_same_p(same, original_props, working_props,
                            scratch_pool));
  if (*same)
    {
      svn_stream_t *mine_stream;
      svn_stream_t *older_stream;
      svn_string_t *special = svn_hash_gets(working_props, SVN_PROP_SPECIAL);
      svn_string_t *eol_style = svn_hash_gets(working_props, SVN_PROP_EOL_STYLE);
      svn_string_t *keywords = svn_hash_gets(working_props, SVN_PROP_KEYWORDS);


      if (special != ((void*)0))
        SVN_ERR(svn_subst_read_specialfile(&mine_stream, mine_abspath,
                                           scratch_pool, scratch_pool));
      else
        SVN_ERR(svn_stream_open_readonly(&mine_stream, mine_abspath,
                                         scratch_pool, scratch_pool));

      if (!special && (eol_style || keywords))
        {
          apr_hash_t *kw = ((void*)0);
          const char *eol = ((void*)0);
          svn_subst_eol_style_t style;






          if (eol_style)
            {
              svn_subst_eol_style_from_value(&style, &eol, eol_style->data);

              if (style == svn_subst_eol_style_native)
                eol = SVN_SUBST_NATIVE_EOL_STR;
              else if (style != svn_subst_eol_style_fixed
                       && style != svn_subst_eol_style_none)
                return svn_error_create(SVN_ERR_IO_UNKNOWN_EOL, ((void*)0), ((void*)0));
            }

          if (keywords)
            SVN_ERR(svn_subst_build_keywords3(&kw, keywords->data, "", "",
                                              "", 0, "", scratch_pool));

          mine_stream = svn_subst_stream_translated(
            mine_stream, eol, FALSE, kw, FALSE, scratch_pool);
        }

      SVN_ERR(svn_stream_open_readonly(&older_stream, older_abspath,
                                       scratch_pool, scratch_pool));

      SVN_ERR(svn_stream_contents_same2(same, mine_stream, older_stream,
                                        scratch_pool));

    }

  return SVN_NO_ERROR;
}
