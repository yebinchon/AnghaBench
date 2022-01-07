
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ handle; } ;
typedef TYPE_1__ xlate_handle_node_t ;
struct TYPE_7__ {char* data; } ;
typedef TYPE_2__ svn_stringbuf_t ;
typedef int svn_error_t ;
typedef int apr_size_t ;
typedef int apr_pool_t ;


 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 char* apr_pstrmemdup (int *,char const*,int ) ;
 int check_non_ascii (char const*,int ,int *) ;
 int convert_to_stringbuf (TYPE_1__*,char const*,int ,TYPE_2__**,int *) ;
 int strlen (char const*) ;

__attribute__((used)) static svn_error_t *
convert_cstring(const char **dest,
                const char *src,
                xlate_handle_node_t *node,
                apr_pool_t *pool)
{
  if (node->handle)
    {
      svn_stringbuf_t *destbuf;
      SVN_ERR(convert_to_stringbuf(node, src, strlen(src),
                                   &destbuf, pool));
      *dest = destbuf->data;
    }
  else
    {
      apr_size_t len = strlen(src);
      SVN_ERR(check_non_ascii(src, len, pool));
      *dest = apr_pstrmemdup(pool, src, len);
    }
  return SVN_NO_ERROR;
}
