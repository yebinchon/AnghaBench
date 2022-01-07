
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {scalar_t__ is_outer_most_lock; int baton; int * (* body ) (int ,int *) ;scalar_t__ is_inner_most_lock; scalar_t__ is_global_lock; TYPE_3__* fs; int lock_path; int * lock_pool; } ;
typedef TYPE_1__ with_lock_baton_t ;
struct TYPE_9__ {int youngest_rev_cache; int has_write_lock; } ;
typedef TYPE_2__ svn_fs_x__data_t ;
struct TYPE_10__ {TYPE_2__* fsap_data; } ;
typedef TYPE_3__ svn_fs_t ;
typedef int svn_error_t ;
typedef int apr_pool_t ;


 int TRUE ;
 int apr_pool_cleanup_null ;
 int apr_pool_cleanup_register (int *,TYPE_2__*,int ,int ) ;
 int * get_lock_on_filesystem (int ,int *) ;
 int reset_lock_flag ;
 int * stub1 (int ,int *) ;
 int * stub2 (int ,int *) ;
 int * svn_error_trace (int *) ;
 int * svn_fs_x__update_min_unpacked_rev (TYPE_3__*,int *) ;
 int * svn_fs_x__youngest_rev (int *,TYPE_3__*,int *) ;
 int svn_pool_clear (int *) ;
 int * svn_pool_create (int *) ;
 int svn_pool_destroy (int *) ;

__attribute__((used)) static svn_error_t *
with_some_lock_file(with_lock_baton_t *baton)
{
  apr_pool_t *pool = baton->lock_pool;
  svn_error_t *err = get_lock_on_filesystem(baton->lock_path, pool);

  if (!err)
    {
      svn_fs_t *fs = baton->fs;
      svn_fs_x__data_t *ffd = fs->fsap_data;

      if (baton->is_global_lock)
        {

          apr_pool_cleanup_register(pool,
                                    ffd,
                                    reset_lock_flag,
                                    apr_pool_cleanup_null);
          ffd->has_write_lock = TRUE;
        }

      if (baton->is_inner_most_lock)
        {



          apr_pool_t *subpool = svn_pool_create(pool);



          err = svn_fs_x__update_min_unpacked_rev(fs, subpool);
          if (!err)
            err = svn_fs_x__youngest_rev(&ffd->youngest_rev_cache, fs,
                                         subpool);


          svn_pool_clear(subpool);

          if (!err)
            err = baton->body(baton->baton, subpool);

          svn_pool_destroy(subpool);
        }
      else
        {

          err = baton->body(baton->baton, pool);
        }
    }

  if (baton->is_outer_most_lock)
    svn_pool_destroy(pool);

  return svn_error_trace(err);
}
