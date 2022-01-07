
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_boolean_t ;
typedef int input ;
typedef int apr_pool_t ;
typedef int apr_array_header_t ;


 int * apr_array_make (int *,int,int) ;
 int svn_cstring_split_append (int *,char const*,char const*,int ,int *) ;

apr_array_header_t *
svn_cstring_split(const char *input,
                  const char *sep_chars,
                  svn_boolean_t chop_whitespace,
                  apr_pool_t *pool)
{
  apr_array_header_t *a = apr_array_make(pool, 5, sizeof(input));
  svn_cstring_split_append(a, input, sep_chars, chop_whitespace, pool);
  return a;
}
