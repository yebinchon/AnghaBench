
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_11__ {scalar_t__ handle; } ;
typedef TYPE_1__ xlate_handle_node_t ;
typedef int svn_stringbuf_t ;
struct TYPE_12__ {int len; int data; } ;
typedef TYPE_2__ svn_string_t ;
typedef int svn_error_t ;
typedef int apr_pool_t ;


 int SVN_ERR (int ) ;
 int SVN_UTF_UTON_XLATE_HANDLE ;
 int * check_non_ascii (int ,int ,int *) ;
 int * check_utf8 (int ,int ,int *) ;
 int * convert_to_stringbuf (TYPE_1__*,int ,int ,int **,int *) ;
 int get_uton_xlate_handle_node (TYPE_1__**,int *) ;
 int put_xlate_handle_node (TYPE_1__*,int ,int *) ;
 int * svn_error_compose_create (int *,int ) ;
 TYPE_2__* svn_string_dup (TYPE_2__ const*,int *) ;
 TYPE_2__* svn_stringbuf__morph_into_string (int *) ;

svn_error_t *
svn_utf_string_from_utf8(const svn_string_t **dest,
                         const svn_string_t *src,
                         apr_pool_t *pool)
{
  xlate_handle_node_t *node;
  svn_error_t *err;

  SVN_ERR(get_uton_xlate_handle_node(&node, pool));

  if (node->handle)
    {
      err = check_utf8(src->data, src->len, pool);
      if (! err)
        {
          svn_stringbuf_t *dbuf;

          err = convert_to_stringbuf(node, src->data, src->len,
                                     &dbuf, pool);

          if (! err)
            *dest = svn_stringbuf__morph_into_string(dbuf);
        }
    }
  else
    {
      err = check_non_ascii(src->data, src->len, pool);
      if (! err)
        *dest = svn_string_dup(src, pool);
    }

  err = svn_error_compose_create(
          err,
          put_xlate_handle_node(node, SVN_UTF_UTON_XLATE_HANDLE, pool));

  return err;
}
