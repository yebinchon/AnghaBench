
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ wc_info; scalar_t__ lock; void* last_changed_author; void* repos_UUID; void* repos_root_URL; void* URL; } ;
typedef TYPE_1__ svn_client_info2_t ;
typedef int apr_pool_t ;


 TYPE_1__* apr_pmemdup (int *,TYPE_1__ const*,int) ;
 void* apr_pstrdup (int *,void*) ;
 scalar_t__ svn_lock_dup (scalar_t__,int *) ;
 scalar_t__ svn_wc_info_dup (scalar_t__,int *) ;

svn_client_info2_t *
svn_client_info2_dup(const svn_client_info2_t *info,
                     apr_pool_t *pool)
{
  svn_client_info2_t *new_info = apr_pmemdup(pool, info, sizeof(*new_info));

  if (new_info->URL)
    new_info->URL = apr_pstrdup(pool, info->URL);
  if (new_info->repos_root_URL)
    new_info->repos_root_URL = apr_pstrdup(pool, info->repos_root_URL);
  if (new_info->repos_UUID)
    new_info->repos_UUID = apr_pstrdup(pool, info->repos_UUID);
  if (info->last_changed_author)
    new_info->last_changed_author = apr_pstrdup(pool, info->last_changed_author);
  if (new_info->lock)
    new_info->lock = svn_lock_dup(info->lock, pool);
  if (new_info->wc_info)
    new_info->wc_info = svn_wc_info_dup(info->wc_info, pool);
  return new_info;
}
