
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int xlate_handle_node_t ;
typedef int svn_error_t ;
typedef int apr_pool_t ;


 int SVN_APR_LOCALE_CHARSET ;
 int SVN_APR_UTF8_CHARSET ;
 int SVN_UTF_NTOU_XLATE_HANDLE ;
 scalar_t__ assume_native_charset_is_utf8 ;
 int * get_xlate_handle_node (int **,int ,int ,int ,int *) ;

__attribute__((used)) static svn_error_t *
get_ntou_xlate_handle_node(xlate_handle_node_t **ret, apr_pool_t *pool)
{
  return get_xlate_handle_node(ret, SVN_APR_UTF8_CHARSET,
                               assume_native_charset_is_utf8
                                 ? SVN_APR_UTF8_CHARSET
                                 : SVN_APR_LOCALE_CHARSET,
                               SVN_UTF_NTOU_XLATE_HANDLE, pool);
}
