
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ tree_conflict; void* ood_last_cmt_author; void* url; scalar_t__ repos_lock; scalar_t__ entry; } ;
typedef TYPE_1__ svn_wc_status2_t ;
typedef int apr_pool_t ;


 TYPE_1__* apr_palloc (int *,int) ;
 void* apr_pstrdup (int *,void*) ;
 scalar_t__ conflict_description_dup (scalar_t__,int *) ;
 scalar_t__ svn_lock_dup (scalar_t__,int *) ;
 scalar_t__ svn_wc_entry_dup (scalar_t__,int *) ;

svn_wc_status2_t *
svn_wc_dup_status2(const svn_wc_status2_t *orig_stat,
                   apr_pool_t *pool)
{
  svn_wc_status2_t *new_stat = apr_palloc(pool, sizeof(*new_stat));


  *new_stat = *orig_stat;


  if (orig_stat->entry)
    new_stat->entry = svn_wc_entry_dup(orig_stat->entry, pool);

  if (orig_stat->repos_lock)
    new_stat->repos_lock = svn_lock_dup(orig_stat->repos_lock, pool);

  if (orig_stat->url)
    new_stat->url = apr_pstrdup(pool, orig_stat->url);

  if (orig_stat->ood_last_cmt_author)
    new_stat->ood_last_cmt_author
      = apr_pstrdup(pool, orig_stat->ood_last_cmt_author);

  if (orig_stat->tree_conflict)
    new_stat->tree_conflict
      = conflict_description_dup(orig_stat->tree_conflict, pool);


  return new_stat;
}
