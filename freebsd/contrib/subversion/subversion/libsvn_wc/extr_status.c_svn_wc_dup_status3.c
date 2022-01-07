
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {void* moved_to_abspath; void* moved_from_abspath; void* repos_uuid; void* repos_relpath; void* repos_root_url; void* changelist; void* lock; void* ood_changed_author; void* changed_author; void* repos_lock; } ;
typedef TYPE_1__ svn_wc_status3_t ;
struct TYPE_7__ {TYPE_1__ s; } ;
typedef TYPE_2__ svn_wc__internal_status_t ;
typedef int apr_pool_t ;


 TYPE_2__* apr_palloc (int *,int) ;
 void* apr_pstrdup (int *,void*) ;
 void* svn_lock_dup (void*,int *) ;

svn_wc_status3_t *
svn_wc_dup_status3(const svn_wc_status3_t *orig_stat,
                   apr_pool_t *pool)
{

  svn_wc__internal_status_t *new_istat = apr_palloc(pool, sizeof(*new_istat));
  svn_wc_status3_t *new_stat = &new_istat->s;


  *new_stat = *orig_stat;


  if (orig_stat->repos_lock)
    new_stat->repos_lock = svn_lock_dup(orig_stat->repos_lock, pool);

  if (orig_stat->changed_author)
    new_stat->changed_author = apr_pstrdup(pool, orig_stat->changed_author);

  if (orig_stat->ood_changed_author)
    new_stat->ood_changed_author
      = apr_pstrdup(pool, orig_stat->ood_changed_author);

  if (orig_stat->lock)
    new_stat->lock = svn_lock_dup(orig_stat->lock, pool);

  if (orig_stat->changelist)
    new_stat->changelist
      = apr_pstrdup(pool, orig_stat->changelist);

  if (orig_stat->repos_root_url)
    new_stat->repos_root_url
      = apr_pstrdup(pool, orig_stat->repos_root_url);

  if (orig_stat->repos_relpath)
    new_stat->repos_relpath
      = apr_pstrdup(pool, orig_stat->repos_relpath);

  if (orig_stat->repos_uuid)
    new_stat->repos_uuid
      = apr_pstrdup(pool, orig_stat->repos_uuid);

  if (orig_stat->moved_from_abspath)
    new_stat->moved_from_abspath
      = apr_pstrdup(pool, orig_stat->moved_from_abspath);

  if (orig_stat->moved_to_abspath)
    new_stat->moved_to_abspath
      = apr_pstrdup(pool, orig_stat->moved_to_abspath);


  return new_stat;
}
