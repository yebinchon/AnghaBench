
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int xlate_handle_node_t ;
typedef int svn_error_t ;
typedef int apr_pool_t ;


 int SVN_APR_UTF8_CHARSET ;
 int SVN_ERR (int ) ;
 int check_cstring_utf8 (char const*,int *) ;
 int * convert_cstring (char const**,char const*,int *,int *) ;
 int get_xlate_handle_node (int **,char const*,int ,char const*,int *) ;
 char* get_xlate_key (char const*,int ,int *) ;
 int put_xlate_handle_node (int *,char const*,int *) ;
 int * svn_error_compose_create (int *,int ) ;

svn_error_t *
svn_utf_cstring_from_utf8_ex2(const char **dest,
                              const char *src,
                              const char *topage,
                              apr_pool_t *pool)
{
  xlate_handle_node_t *node;
  svn_error_t *err;
  const char *convset_key = get_xlate_key(topage, SVN_APR_UTF8_CHARSET,
                                          pool);

  SVN_ERR(check_cstring_utf8(src, pool));

  SVN_ERR(get_xlate_handle_node(&node, topage, SVN_APR_UTF8_CHARSET,
                                convset_key, pool));
  err = convert_cstring(dest, src, node, pool);
  err = svn_error_compose_create(
          err,
          put_xlate_handle_node(node, convset_key, pool));

  return err;
}
