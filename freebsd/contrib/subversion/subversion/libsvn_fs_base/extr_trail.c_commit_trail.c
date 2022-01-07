
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_7__ ;
typedef struct TYPE_14__ TYPE_6__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_11__ {TYPE_7__* db_txn; TYPE_3__* fs; } ;
typedef TYPE_2__ trail_t ;
struct TYPE_12__ {TYPE_4__* fsap_data; } ;
typedef TYPE_3__ svn_fs_t ;
typedef int svn_error_t ;
struct TYPE_13__ {TYPE_1__* bdb; int in_txn_trail; } ;
typedef TYPE_4__ base_fs_data_t ;
struct TYPE_15__ {int (* commit ) (TYPE_7__*,int ) ;} ;
struct TYPE_14__ {int (* txn_checkpoint ) (TYPE_6__*,int,int,int ) ;} ;
struct TYPE_10__ {TYPE_6__* env; } ;


 int BDB_WRAP (TYPE_3__*,int ,int ) ;
 int DB_INCOMPLETE ;
 int FALSE ;
 int N_ (char*) ;
 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int stub1 (TYPE_7__*,int ) ;
 int stub2 (TYPE_6__*,int,int,int ) ;
 int * svn_fs_bdb__wrap_db (TYPE_3__*,char*,int) ;

__attribute__((used)) static svn_error_t *
commit_trail(trail_t *trail)
{
  int db_err;
  svn_fs_t *fs = trail->fs;
  base_fs_data_t *bfd = fs->fsap_data;




  if (trail->db_txn)
    {


      bfd->in_txn_trail = FALSE;
      SVN_ERR(BDB_WRAP(fs, N_("committing Berkeley DB transaction"),
                       trail->db_txn->commit(trail->db_txn, 0)));
    }




  db_err = bfd->bdb->env->txn_checkpoint(bfd->bdb->env, 1024, 5, 0);
  if (db_err)
    {



        {
          return svn_fs_bdb__wrap_db
            (fs, "checkpointing after Berkeley DB transaction", db_err);
        }
    }

  return SVN_NO_ERROR;
}
