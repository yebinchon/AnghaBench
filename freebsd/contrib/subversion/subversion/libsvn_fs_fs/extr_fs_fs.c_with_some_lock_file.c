
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {scalar_t__ is_outer_most_lock; int baton; int * (* body ) (int ,int *) ;scalar_t__ is_inner_most_lock; scalar_t__ is_global_lock; TYPE_2__* fs; int lock_path; int * lock_pool; } ;
typedef TYPE_1__ with_lock_baton_t ;
struct TYPE_9__ {TYPE_3__* fsap_data; } ;
typedef TYPE_2__ svn_fs_t ;
typedef int svn_error_t ;
struct TYPE_10__ {scalar_t__ format; int youngest_rev_cache; int has_write_lock; } ;
typedef TYPE_3__ fs_fs_data_t ;
typedef int apr_pool_t ;


 scalar_t__ SVN_FS_FS__MIN_PACKED_FORMAT ;
 int TRUE ;
 int apr_pool_cleanup_null ;
 int apr_pool_cleanup_register (int *,TYPE_3__*,int ,int ) ;
 int * get_lock_on_filesystem (int ,int *) ;
 int * get_youngest (int *,TYPE_2__*,int *) ;
 int reset_lock_flag ;
 int * stub1 (int ,int *) ;
 int * svn_error_trace (int *) ;
 int * svn_fs_fs__update_min_unpacked_rev (TYPE_2__*,int *) ;
 int svn_pool_destroy (int *) ;

__attribute__((used)) static svn_error_t *
with_some_lock_file(with_lock_baton_t *baton)
{
  apr_pool_t *pool = baton->lock_pool;
  svn_error_t *err = get_lock_on_filesystem(baton->lock_path, pool);

  if (!err)
    {
      svn_fs_t *fs = baton->fs;
      fs_fs_data_t *ffd = fs->fsap_data;

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
          if (ffd->format >= SVN_FS_FS__MIN_PACKED_FORMAT)
            err = svn_fs_fs__update_min_unpacked_rev(fs, pool);
          if (!err)
            err = get_youngest(&ffd->youngest_rev_cache, fs, pool);
        }

      if (!err)
        err = baton->body(baton->baton, pool);
    }

  if (baton->is_outer_most_lock)
    svn_pool_destroy(pool);

  return svn_error_trace(err);
}
