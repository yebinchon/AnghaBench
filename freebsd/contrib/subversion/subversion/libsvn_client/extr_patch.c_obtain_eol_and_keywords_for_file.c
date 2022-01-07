
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int svn_wc_context_t ;
typedef int svn_subst_eol_style_t ;
struct TYPE_3__ {int data; } ;
typedef TYPE_1__ svn_string_t ;
typedef int svn_revnum_t ;
typedef int svn_error_t ;
typedef int apr_time_t ;
typedef int apr_pool_t ;
typedef int apr_hash_t ;


 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int SVN_PROP_EOL_STYLE ;
 int SVN_PROP_KEYWORDS ;
 char* apr_psprintf (int *,char*,int ) ;
 TYPE_1__* svn_hash_gets (int *,int ) ;
 char* svn_path_url_add_component2 (char const*,char const*,int *) ;
 int svn_subst_build_keywords3 (int **,int ,char const*,char const*,char const*,int ,char const*,int *) ;
 int svn_subst_eol_style_from_value (int *,char const**,int ) ;
 int svn_wc__node_get_changed_info (int *,int *,char const**,int *,char const*,int *,int *) ;
 int svn_wc__node_get_repos_info (int *,char const**,char const**,int *,int *,char const*,int *,int *) ;
 int svn_wc_prop_list2 (int **,int *,char const*,int *,int *) ;

__attribute__((used)) static svn_error_t *
obtain_eol_and_keywords_for_file(apr_hash_t **keywords,
                                 svn_subst_eol_style_t *eol_style,
                                 const char **eol_str,
                                 svn_wc_context_t *wc_ctx,
                                 const char *local_abspath,
                                 apr_pool_t *result_pool,
                                 apr_pool_t *scratch_pool)
{
  apr_hash_t *props;
  svn_string_t *keywords_val, *eol_style_val;

  SVN_ERR(svn_wc_prop_list2(&props, wc_ctx, local_abspath,
                            scratch_pool, scratch_pool));
  keywords_val = svn_hash_gets(props, SVN_PROP_KEYWORDS);
  if (keywords_val)
    {
      svn_revnum_t changed_rev;
      apr_time_t changed_date;
      const char *rev_str;
      const char *author;
      const char *url;
      const char *repos_root_url;
      const char *repos_relpath;

      SVN_ERR(svn_wc__node_get_changed_info(&changed_rev,
                                            &changed_date,
                                            &author, wc_ctx,
                                            local_abspath,
                                            scratch_pool,
                                            scratch_pool));
      rev_str = apr_psprintf(scratch_pool, "%ld", changed_rev);
      SVN_ERR(svn_wc__node_get_repos_info(((void*)0), &repos_relpath, &repos_root_url,
                                          ((void*)0),
                                          wc_ctx, local_abspath,
                                          scratch_pool, scratch_pool));
      url = svn_path_url_add_component2(repos_root_url, repos_relpath,
                                        scratch_pool);

      SVN_ERR(svn_subst_build_keywords3(keywords,
                                        keywords_val->data,
                                        rev_str, url, repos_root_url,
                                        changed_date,
                                        author, result_pool));
    }

  eol_style_val = svn_hash_gets(props, SVN_PROP_EOL_STYLE);
  if (eol_style_val)
    {
      svn_subst_eol_style_from_value(eol_style,
                                     eol_str,
                                     eol_style_val->data);
    }

  return SVN_NO_ERROR;
}
