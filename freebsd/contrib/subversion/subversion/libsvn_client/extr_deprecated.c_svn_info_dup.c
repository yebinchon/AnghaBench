
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {void* prejfile; void* conflict_wrk; void* conflict_new; void* conflict_old; void* checksum; void* copyfrom_url; scalar_t__ lock; void* last_changed_author; void* repos_UUID; void* repos_root_URL; void* URL; } ;
typedef TYPE_1__ svn_info_t ;
typedef int apr_pool_t ;


 TYPE_1__* apr_palloc (int *,int) ;
 void* apr_pstrdup (int *,void*) ;
 scalar_t__ svn_lock_dup (scalar_t__,int *) ;

svn_info_t *
svn_info_dup(const svn_info_t *info, apr_pool_t *pool)
{
  svn_info_t *dupinfo = apr_palloc(pool, sizeof(*dupinfo));


  *dupinfo = *info;


  if (info->URL)
    dupinfo->URL = apr_pstrdup(pool, info->URL);
  if (info->repos_root_URL)
    dupinfo->repos_root_URL = apr_pstrdup(pool, info->repos_root_URL);
  if (info->repos_UUID)
    dupinfo->repos_UUID = apr_pstrdup(pool, info->repos_UUID);
  if (info->last_changed_author)
    dupinfo->last_changed_author = apr_pstrdup(pool,
                                               info->last_changed_author);
  if (info->lock)
    dupinfo->lock = svn_lock_dup(info->lock, pool);
  if (info->copyfrom_url)
    dupinfo->copyfrom_url = apr_pstrdup(pool, info->copyfrom_url);
  if (info->checksum)
    dupinfo->checksum = apr_pstrdup(pool, info->checksum);
  if (info->conflict_old)
    dupinfo->conflict_old = apr_pstrdup(pool, info->conflict_old);
  if (info->conflict_new)
    dupinfo->conflict_new = apr_pstrdup(pool, info->conflict_new);
  if (info->conflict_wrk)
    dupinfo->conflict_wrk = apr_pstrdup(pool, info->conflict_wrk);
  if (info->prejfile)
    dupinfo->prejfile = apr_pstrdup(pool, info->prejfile);

  return dupinfo;
}
