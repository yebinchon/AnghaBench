
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int pool; } ;
typedef TYPE_1__ to_sync_t ;
struct TYPE_5__ {int files; } ;
typedef TYPE_2__ svn_fs_x__batch_fsync_t ;
typedef int apr_status_t ;
typedef int apr_hash_index_t ;


 int APR_SUCCESS ;
 int * apr_hash_first (int ,int ) ;
 int * apr_hash_next (int *) ;
 int apr_hash_pool_get (int ) ;
 TYPE_1__* apr_hash_this_val (int *) ;
 int svn_pool_destroy (int ) ;

__attribute__((used)) static apr_status_t
fsync_batch_cleanup(void *data)
{
  svn_fs_x__batch_fsync_t *batch = data;
  apr_hash_index_t *hi;


  for (hi = apr_hash_first(apr_hash_pool_get(batch->files), batch->files);
       hi;
       hi = apr_hash_next(hi))
    {
      to_sync_t *to_sync = apr_hash_this_val(hi);
      svn_pool_destroy(to_sync->pool);
    }

  return APR_SUCCESS;
}
