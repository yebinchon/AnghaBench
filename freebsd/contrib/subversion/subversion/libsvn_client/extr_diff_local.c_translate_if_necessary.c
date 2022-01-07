
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int svn_subst_eol_style_t ;
struct TYPE_3__ {int data; } ;
typedef TYPE_1__ svn_string_t ;
typedef int svn_stream_t ;
typedef int svn_error_t ;
typedef int svn_cancel_func_t ;
typedef int apr_pool_t ;
typedef int apr_hash_t ;


 int APR_STRINGIFY (int ) ;
 int FALSE ;
 int SVN_ERR (int ) ;
 int SVN_INVALID_REVNUM ;
 int * SVN_NO_ERROR ;
 int SVN_PROP_EOL_STYLE ;
 int SVN_PROP_KEYWORDS ;
 int TRUE ;
 TYPE_1__* svn_hash_gets (int *,int ) ;
 int svn_io_file_del_on_pool_cleanup ;
 int svn_stream_copy3 (int *,int *,int ,void*,int *) ;
 int svn_stream_open_readonly (int **,char const*,int *,int *) ;
 int svn_stream_open_unique (int **,char const**,int *,int ,int *,int *) ;
 int svn_subst_build_keywords3 (int **,int ,int ,char*,char*,int ,char*,int *) ;
 int svn_subst_eol_style_from_value (int *,char const**,int ) ;
 int svn_subst_eol_style_none ;
 int * svn_subst_stream_translated (int *,char const*,int ,int *,int ,int *) ;
 int svn_subst_translation_required (int ,char const*,int *,int ,int ) ;

__attribute__((used)) static svn_error_t *
translate_if_necessary(const char **local_abspath,
                       apr_hash_t *props,
                       svn_cancel_func_t cancel_func,
                       void *cancel_baton,
                       apr_pool_t *result_pool,
                       apr_pool_t *scratch_pool)
{
  const svn_string_t *eol_style_val;
  const svn_string_t *keywords_val;
  svn_subst_eol_style_t eol_style;
  const char *eol;
  apr_hash_t *keywords;
  svn_stream_t *contents;
  svn_stream_t *dst;




  eol_style_val = svn_hash_gets(props, SVN_PROP_EOL_STYLE);
  keywords_val = svn_hash_gets(props, SVN_PROP_KEYWORDS);

  if (eol_style_val)
    svn_subst_eol_style_from_value(&eol_style, &eol, eol_style_val->data);
  else
    {
      eol = ((void*)0);
      eol_style = svn_subst_eol_style_none;
    }

  if (keywords_val)
    SVN_ERR(svn_subst_build_keywords3(&keywords, keywords_val->data,
                                      APR_STRINGIFY(SVN_INVALID_REVNUM),
                                      "", "", 0, "", scratch_pool));
  else
    keywords = ((void*)0);

  if (!svn_subst_translation_required(eol_style, eol, keywords, FALSE, FALSE))
    return SVN_NO_ERROR;

  SVN_ERR(svn_stream_open_readonly(&contents, *local_abspath,
                                    scratch_pool, scratch_pool));

  SVN_ERR(svn_stream_open_unique(&dst, local_abspath, ((void*)0),
                                  svn_io_file_del_on_pool_cleanup,
                                  result_pool, scratch_pool));

  dst = svn_subst_stream_translated(dst, eol, TRUE ,
                                    keywords, FALSE ,
                                    scratch_pool);

  SVN_ERR(svn_stream_copy3(contents, dst, cancel_func, cancel_baton,
                           scratch_pool));

  return SVN_NO_ERROR;
}
