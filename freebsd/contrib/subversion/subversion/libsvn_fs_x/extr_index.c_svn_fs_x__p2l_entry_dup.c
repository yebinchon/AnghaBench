
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int item_count; struct TYPE_5__ const* items; } ;
typedef TYPE_1__ svn_fs_x__p2l_entry_t ;
typedef int apr_pool_t ;


 void* apr_pmemdup (int *,TYPE_1__ const*,int) ;

svn_fs_x__p2l_entry_t *
svn_fs_x__p2l_entry_dup(const svn_fs_x__p2l_entry_t *entry,
                        apr_pool_t *result_pool)
{
  svn_fs_x__p2l_entry_t *new_entry = apr_pmemdup(result_pool, entry,
                                                 sizeof(*new_entry));
  if (new_entry->item_count)
    new_entry->items = apr_pmemdup(result_pool,
                                   entry->items,
                                   entry->item_count * sizeof(*entry->items));

  return new_entry;
}
