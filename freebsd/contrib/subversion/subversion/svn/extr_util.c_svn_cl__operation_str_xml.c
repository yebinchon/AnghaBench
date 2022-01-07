
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_wc_operation_t ;
typedef int apr_pool_t ;


 int map_wc_operation_xml ;
 char const* svn_token__to_word (int ,int ) ;

const char *
svn_cl__operation_str_xml(svn_wc_operation_t operation, apr_pool_t *pool)
{
  return svn_token__to_word(map_wc_operation_xml, operation);
}
