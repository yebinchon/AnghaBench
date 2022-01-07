
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int xlate_handle_node_t ;
typedef int svn_error_t ;
typedef int apr_pool_t ;


 int SVN_APR_UTF8_CHARSET ;
 int SVN_ERR (int ) ;
 int SVN_UTF_NTOU_XLATE_HANDLE ;
 int * check_cstring_utf8 (char const*,int *) ;
 int * convert_cstring (char const**,char const*,int *,int *) ;
 int get_xlate_handle_node (int **,int ,char const*,char const*,int *) ;
 char* get_xlate_key (int ,char const*,int *) ;
 int put_xlate_handle_node (int *,int ,int *) ;
 int svn_error_compose_create (int *,int ) ;

svn_error_t *
svn_utf_cstring_to_utf8_ex2(const char **dest,
                            const char *src,
                            const char *frompage,
                            apr_pool_t *pool)
{
  xlate_handle_node_t *node;
  svn_error_t *err;
  const char *convset_key = get_xlate_key(SVN_APR_UTF8_CHARSET, frompage,
                                          pool);

  SVN_ERR(get_xlate_handle_node(&node, SVN_APR_UTF8_CHARSET, frompage,
                                convset_key, pool));
  err = convert_cstring(dest, src, node, pool);
  SVN_ERR(svn_error_compose_create(err,
                                   put_xlate_handle_node
                                      (node,
                                       SVN_UTF_NTOU_XLATE_HANDLE,
                                       pool)));

  return check_cstring_utf8(*dest, pool);
}
