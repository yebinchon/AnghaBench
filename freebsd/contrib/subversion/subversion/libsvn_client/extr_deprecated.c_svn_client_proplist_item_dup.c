
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ prop_hash; scalar_t__ node_name; } ;
typedef TYPE_1__ svn_client_proplist_item_t ;
typedef int apr_pool_t ;


 TYPE_1__* apr_pcalloc (int *,int) ;
 scalar_t__ string_hash_dup (scalar_t__,int *) ;
 scalar_t__ svn_stringbuf_dup (scalar_t__,int *) ;

svn_client_proplist_item_t *
svn_client_proplist_item_dup(const svn_client_proplist_item_t *item,
                             apr_pool_t * pool)
{
  svn_client_proplist_item_t *new_item = apr_pcalloc(pool, sizeof(*new_item));

  if (item->node_name)
    new_item->node_name = svn_stringbuf_dup(item->node_name, pool);

  if (item->prop_hash)
    new_item->prop_hash = string_hash_dup(item->prop_hash, pool);

  return new_item;
}
