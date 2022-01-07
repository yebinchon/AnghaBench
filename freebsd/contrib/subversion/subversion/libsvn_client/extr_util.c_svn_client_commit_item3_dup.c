
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {void* moved_from_abspath; void* session_relpath; void* outgoing_prop_changes; void* incoming_prop_changes; void* copyfrom_url; void* url; void* path; } ;
typedef TYPE_1__ svn_client_commit_item3_t ;
typedef int apr_pool_t ;


 TYPE_1__* apr_palloc (int *,int) ;
 void* apr_pstrdup (int *,void*) ;
 void* svn_prop_array_dup (void*,int *) ;

svn_client_commit_item3_t *
svn_client_commit_item3_dup(const svn_client_commit_item3_t *item,
                            apr_pool_t *pool)
{
  svn_client_commit_item3_t *new_item = apr_palloc(pool, sizeof(*new_item));

  *new_item = *item;

  if (new_item->path)
    new_item->path = apr_pstrdup(pool, new_item->path);

  if (new_item->url)
    new_item->url = apr_pstrdup(pool, new_item->url);

  if (new_item->copyfrom_url)
    new_item->copyfrom_url = apr_pstrdup(pool, new_item->copyfrom_url);

  if (new_item->incoming_prop_changes)
    new_item->incoming_prop_changes =
      svn_prop_array_dup(new_item->incoming_prop_changes, pool);

  if (new_item->outgoing_prop_changes)
    new_item->outgoing_prop_changes =
      svn_prop_array_dup(new_item->outgoing_prop_changes, pool);

  if (new_item->session_relpath)
    new_item->session_relpath = apr_pstrdup(pool, new_item->session_relpath);

  if (new_item->moved_from_abspath)
    new_item->moved_from_abspath = apr_pstrdup(pool,
                                               new_item->moved_from_abspath);

  return new_item;
}
