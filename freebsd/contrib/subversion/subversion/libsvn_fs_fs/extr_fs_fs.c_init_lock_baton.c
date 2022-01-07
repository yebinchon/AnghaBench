
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {void* is_global_lock; int lock_pool; TYPE_4__* fs; int lock_path; int mutex; } ;
typedef TYPE_1__ with_lock_baton_t ;
typedef int lock_id_t ;
struct TYPE_9__ {int fs_pack_lock; int txn_current_lock; int fs_write_lock; } ;
typedef TYPE_2__ fs_fs_shared_data_t ;
struct TYPE_10__ {TYPE_2__* shared; } ;
typedef TYPE_3__ fs_fs_data_t ;
struct TYPE_11__ {TYPE_3__* fsap_data; } ;


 void* FALSE ;
 void* TRUE ;

 int svn_fs_fs__path_lock (TYPE_4__*,int ) ;
 int svn_fs_fs__path_pack_lock (TYPE_4__*,int ) ;
 int svn_fs_fs__path_txn_current_lock (TYPE_4__*,int ) ;



__attribute__((used)) static void
init_lock_baton(with_lock_baton_t *baton,
                lock_id_t lock_id)
{
  fs_fs_data_t *ffd = baton->fs->fsap_data;
  fs_fs_shared_data_t *ffsd = ffd->shared;

  switch (lock_id)
    {
    case 128:
      baton->mutex = ffsd->fs_write_lock;
      baton->lock_path = svn_fs_fs__path_lock(baton->fs, baton->lock_pool);
      baton->is_global_lock = TRUE;
      break;

    case 129:
      baton->mutex = ffsd->txn_current_lock;
      baton->lock_path = svn_fs_fs__path_txn_current_lock(baton->fs,
                                                          baton->lock_pool);
      baton->is_global_lock = FALSE;
      break;

    case 130:
      baton->mutex = ffsd->fs_pack_lock;
      baton->lock_path = svn_fs_fs__path_pack_lock(baton->fs,
                                                   baton->lock_pool);
      baton->is_global_lock = FALSE;
      break;
    }
}
