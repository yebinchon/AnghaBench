
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ changed_paths2; scalar_t__ changed_paths; scalar_t__ revprops; } ;
typedef TYPE_1__ svn_log_entry_t ;
typedef int apr_pool_t ;
typedef int apr_hash_index_t ;


 int * apr_hash_first (int *,scalar_t__) ;
 scalar_t__ apr_hash_make (int *) ;
 int * apr_hash_next (int *) ;
 int apr_hash_this (int *,void const**,int *,void**) ;
 TYPE_1__* apr_palloc (int *,int) ;
 int apr_pstrdup (int *,void const*) ;
 int svn_hash_sets (scalar_t__,int ,int ) ;
 int svn_log_changed_path2_dup (void*,int *) ;
 scalar_t__ svn_prop_hash_dup (scalar_t__,int *) ;

svn_log_entry_t *
svn_log_entry_dup(const svn_log_entry_t *log_entry, apr_pool_t *pool)
{
  apr_hash_index_t *hi;
  svn_log_entry_t *new_entry = apr_palloc(pool, sizeof(*new_entry));

  *new_entry = *log_entry;

  if (log_entry->revprops)
    new_entry->revprops = svn_prop_hash_dup(log_entry->revprops, pool);

  if (log_entry->changed_paths2)
    {
      new_entry->changed_paths2 = apr_hash_make(pool);

      for (hi = apr_hash_first(pool, log_entry->changed_paths2);
           hi; hi = apr_hash_next(hi))
        {
          const void *key;
          void *change;

          apr_hash_this(hi, &key, ((void*)0), &change);

          svn_hash_sets(new_entry->changed_paths2, apr_pstrdup(pool, key),
                        svn_log_changed_path2_dup(change, pool));
        }
    }




  new_entry->changed_paths = new_entry->changed_paths2;

  return new_entry;
}
