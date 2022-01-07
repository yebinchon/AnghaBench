
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int xlate_handle_node_t ;
typedef int svn_error_t ;
typedef int apr_pool_t ;


 int SVN_ERR (int ) ;
 int SVN_UTF_UTON_XLATE_HANDLE ;
 int check_cstring_utf8 (char const*,int *) ;
 int * convert_cstring (char const**,char const*,int *,int *) ;
 int get_uton_xlate_handle_node (int **,int *) ;
 int put_xlate_handle_node (int *,int ,int *) ;
 int * svn_error_compose_create (int *,int ) ;

svn_error_t *
svn_utf_cstring_from_utf8(const char **dest,
                          const char *src,
                          apr_pool_t *pool)
{
  xlate_handle_node_t *node;
  svn_error_t *err;

  SVN_ERR(check_cstring_utf8(src, pool));

  SVN_ERR(get_uton_xlate_handle_node(&node, pool));
  err = convert_cstring(dest, src, node, pool);
  err = svn_error_compose_create(
          err,
          put_xlate_handle_node(node, SVN_UTF_UTON_XLATE_HANDLE, pool));

  return err;
}
