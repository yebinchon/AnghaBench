
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_string_t ;
typedef int apr_pool_t ;


 int TRUE ;
 int const* svn_base64_encode_string2 (int const*,int ,int *) ;

const svn_string_t *
svn_base64_encode_string(const svn_string_t *str, apr_pool_t *pool)
{
  return svn_base64_encode_string2(str, TRUE, pool);
}
