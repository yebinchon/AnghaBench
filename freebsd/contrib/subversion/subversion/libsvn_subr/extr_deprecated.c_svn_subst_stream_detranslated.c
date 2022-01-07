
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_subst_eol_style_t ;
typedef int svn_stream_t ;
typedef int svn_error_t ;
typedef scalar_t__ svn_boolean_t ;
typedef int apr_pool_t ;
typedef int apr_hash_t ;


 int SVN_ERR (int ) ;
 int * svn_error_trace (int ) ;
 int svn_stream_open_readonly (int **,char const*,int *,int *) ;
 int * svn_subst_read_specialfile (int **,char const*,int *,int *) ;
 int svn_subst_stream_translated_to_normal_form (int **,int *,int ,char const*,scalar_t__,int *,int *) ;

svn_error_t *
svn_subst_stream_detranslated(svn_stream_t **stream_p,
                              const char *src,
                              svn_subst_eol_style_t eol_style,
                              const char *eol_str,
                              svn_boolean_t always_repair_eols,
                              apr_hash_t *keywords,
                              svn_boolean_t special,
                              apr_pool_t *pool)
{
  svn_stream_t *src_stream;

  if (special)
    return svn_subst_read_specialfile(stream_p, src, pool, pool);



  SVN_ERR(svn_stream_open_readonly(&src_stream, src, pool, pool));

  return svn_error_trace(svn_subst_stream_translated_to_normal_form(
                           stream_p, src_stream,
                           eol_style, eol_str,
                           always_repair_eols,
                           keywords, pool));
}
