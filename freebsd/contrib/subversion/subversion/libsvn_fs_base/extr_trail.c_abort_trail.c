
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int pool; TYPE_4__* db_txn; TYPE_2__* fs; } ;
typedef TYPE_1__ trail_t ;
struct TYPE_8__ {TYPE_3__* fsap_data; } ;
typedef TYPE_2__ svn_fs_t ;
typedef int svn_error_t ;
struct TYPE_9__ {int in_txn_trail; } ;
typedef TYPE_3__ base_fs_data_t ;
struct TYPE_10__ {int (* abort ) (TYPE_4__*) ;} ;


 int BDB_WRAP (TYPE_2__*,int ,int ) ;
 int FALSE ;
 int N_ (char*) ;
 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int stub1 (TYPE_4__*) ;
 int svn_pool_destroy (int ) ;

__attribute__((used)) static svn_error_t *
abort_trail(trail_t *trail)
{
  svn_fs_t *fs = trail->fs;
  base_fs_data_t *bfd = fs->fsap_data;

  if (trail->db_txn)
    {
      bfd->in_txn_trail = FALSE;
      SVN_ERR(BDB_WRAP(fs, N_("aborting Berkeley DB transaction"),
                       trail->db_txn->abort(trail->db_txn)));
    }
  svn_pool_destroy(trail->pool);

  return SVN_NO_ERROR;
}
