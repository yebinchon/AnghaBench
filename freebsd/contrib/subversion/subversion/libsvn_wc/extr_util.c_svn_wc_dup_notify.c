
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ rev_props; void* prop_name; void* path_prefix; void* url; scalar_t__ merge_range; void* changelist_name; scalar_t__ err; scalar_t__ lock; void* mime_type; void* path; } ;
typedef TYPE_1__ svn_wc_notify_t ;
typedef int apr_pool_t ;


 TYPE_1__* apr_palloc (int *,int) ;
 int apr_pool_cleanup_null ;
 int apr_pool_cleanup_register (int *,scalar_t__,int ,int ) ;
 void* apr_pstrdup (int *,void*) ;
 int err_cleanup ;
 scalar_t__ svn_error_dup (scalar_t__) ;
 scalar_t__ svn_lock_dup (scalar_t__,int *) ;
 scalar_t__ svn_merge_range_dup (scalar_t__,int *) ;
 scalar_t__ svn_prop_hash_dup (scalar_t__,int *) ;

svn_wc_notify_t *
svn_wc_dup_notify(const svn_wc_notify_t *notify,
                  apr_pool_t *pool)
{
  svn_wc_notify_t *ret = apr_palloc(pool, sizeof(*ret));

  *ret = *notify;

  if (ret->path)
    ret->path = apr_pstrdup(pool, ret->path);
  if (ret->mime_type)
    ret->mime_type = apr_pstrdup(pool, ret->mime_type);
  if (ret->lock)
    ret->lock = svn_lock_dup(ret->lock, pool);
  if (ret->err)
    {
      ret->err = svn_error_dup(ret->err);
      apr_pool_cleanup_register(pool, ret->err, err_cleanup,
                                apr_pool_cleanup_null);
    }
  if (ret->changelist_name)
    ret->changelist_name = apr_pstrdup(pool, ret->changelist_name);
  if (ret->merge_range)
    ret->merge_range = svn_merge_range_dup(ret->merge_range, pool);
  if (ret->url)
    ret->url = apr_pstrdup(pool, ret->url);
  if (ret->path_prefix)
    ret->path_prefix = apr_pstrdup(pool, ret->path_prefix);
  if (ret->prop_name)
    ret->prop_name = apr_pstrdup(pool, ret->prop_name);
  if (ret->rev_props)
    ret->rev_props = svn_prop_hash_dup(ret->rev_props, pool);

  return ret;
}
