
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int * data; } ;
typedef TYPE_1__ svn_string_t ;
typedef int svn_error_t ;
typedef int svn_boolean_t ;
typedef int apr_pool_t ;


 int FALSE ;
 int SVN_ERR (int ) ;
 int SVN_ERR_ASSERT (int ) ;
 int * SVN_NO_ERROR ;
 int TRUE ;
 int svn_subst_translate_string2 (TYPE_1__**,int *,int *,TYPE_1__ const*,char const*,int ,int *,int *) ;

__attribute__((used)) static svn_error_t *
normalize_string(const svn_string_t **str,
                 svn_boolean_t *was_normalized,
                 const char *source_prop_encoding,
                 apr_pool_t *result_pool,
                 apr_pool_t *scratch_pool)
{
  svn_string_t *new_str;

  *was_normalized = FALSE;

  if (*str == ((void*)0))
    return SVN_NO_ERROR;

  SVN_ERR_ASSERT((*str)->data != ((void*)0));

  if (source_prop_encoding == ((void*)0))
    source_prop_encoding = "UTF-8";

  new_str = ((void*)0);
  SVN_ERR(svn_subst_translate_string2(&new_str, ((void*)0), was_normalized,
                                      *str, source_prop_encoding, TRUE,
                                      result_pool, scratch_pool));
  *str = new_str;

  return SVN_NO_ERROR;
}
