
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_subst_keywords_t ;
typedef int svn_stream_t ;
typedef int svn_error_t ;
typedef int svn_boolean_t ;
typedef int apr_pool_t ;


 int * svn_error_trace (int *) ;
 int * svn_pool_create (int *) ;
 int svn_pool_destroy (int *) ;
 int * svn_subst_translate_stream2 (int *,int *,char const*,int ,int const*,int ,int *) ;

svn_error_t *
svn_subst_translate_stream(svn_stream_t *s,
                           svn_stream_t *d,
                           const char *eol_str,
                           svn_boolean_t repair,
                           const svn_subst_keywords_t *keywords,
                           svn_boolean_t expand)
{
  apr_pool_t *pool = svn_pool_create(((void*)0));
  svn_error_t *err = svn_subst_translate_stream2(s, d, eol_str, repair,
                                                 keywords, expand, pool);
  svn_pool_destroy(pool);
  return svn_error_trace(err);
}
