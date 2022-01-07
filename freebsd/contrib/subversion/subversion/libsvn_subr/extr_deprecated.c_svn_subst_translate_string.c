
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_string_t ;
typedef int svn_error_t ;
typedef int apr_pool_t ;


 int FALSE ;
 int * svn_subst_translate_string2 (int **,int *,int *,int const*,char const*,int ,int *,int *) ;

svn_error_t *
svn_subst_translate_string(svn_string_t **new_value,
                           const svn_string_t *value,
                           const char *encoding,
                           apr_pool_t *pool)
{
  return svn_subst_translate_string2(new_value, ((void*)0), ((void*)0), value,
                                     encoding, FALSE, pool, pool);
}
