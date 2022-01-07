
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_error_t ;
typedef int svn_boolean_t ;
typedef int apr_pool_t ;
typedef int apr_hash_t ;


 int * svn_error_trace (int ) ;
 int svn_subst_copy_and_translate4 (char const*,char const*,char const*,int ,int *,int ,int ,int *,int *,int *) ;

svn_error_t *
svn_subst_copy_and_translate3(const char *src,
                              const char *dst,
                              const char *eol_str,
                              svn_boolean_t repair,
                              apr_hash_t *keywords,
                              svn_boolean_t expand,
                              svn_boolean_t special,
                              apr_pool_t *pool)
{
  return svn_error_trace(svn_subst_copy_and_translate4(src, dst, eol_str,
                                                       repair, keywords,
                                                       expand, special,
                                                       ((void*)0), ((void*)0),
                                                       pool));
}
