#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_7__ ;
typedef  struct TYPE_14__   TYPE_6__ ;
typedef  struct TYPE_13__   TYPE_4__ ;
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_11__ {TYPE_7__* db_txn; TYPE_3__* fs; } ;
typedef  TYPE_2__ trail_t ;
struct TYPE_12__ {TYPE_4__* fsap_data; } ;
typedef  TYPE_3__ svn_fs_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
struct TYPE_13__ {TYPE_1__* bdb; int /*<<< orphan*/  in_txn_trail; } ;
typedef  TYPE_4__ base_fs_data_t ;
struct TYPE_15__ {int /*<<< orphan*/  (* commit ) (TYPE_7__*,int /*<<< orphan*/ ) ;} ;
struct TYPE_14__ {int (* txn_checkpoint ) (TYPE_6__*,int,int,int /*<<< orphan*/ ) ;} ;
struct TYPE_10__ {TYPE_6__* env; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int DB_INCOMPLETE ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/  FUNC3 (TYPE_7__*,int /*<<< orphan*/ ) ; 
 int FUNC4 (TYPE_6__*,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC5 (TYPE_3__*,char*,int) ; 

__attribute__((used)) static svn_error_t *
FUNC6(trail_t *trail)
{
  int db_err;
  svn_fs_t *fs = trail->fs;
  base_fs_data_t *bfd = fs->fsap_data;

  /* According to the example in the Berkeley DB manual, txn_commit
     doesn't return DB_LOCK_DEADLOCK --- all deadlocks are reported
     earlier.  */
  if (trail->db_txn)
    {
      /* See comment [**] in abort_trail() above.
         An error during txn commit will abort the transaction anyway. */
      bfd->in_txn_trail = FALSE;
      FUNC2(FUNC0(fs, FUNC1("committing Berkeley DB transaction"),
                       trail->db_txn->commit(trail->db_txn, 0)));
    }

  /* Do a checkpoint here, if enough has gone on.
     The checkpoint parameters below are pretty arbitrary.  Perhaps
     there should be an svn_fs_berkeley_mumble function to set them.  */
  db_err = bfd->bdb->env->txn_checkpoint(bfd->bdb->env, 1024, 5, 0);

  /* Pre-4.1 Berkeley documentation says:

        The DB_ENV->txn_checkpoint function returns a non-zero error
        value on failure, 0 on success, and returns DB_INCOMPLETE if
        there were pages that needed to be written to complete the
        checkpoint but that DB_ENV->memp_sync was unable to write
        immediately.

     It's safe to ignore DB_INCOMPLETE if we get it while
     checkpointing.  (Post-4.1 Berkeley doesn't have DB_INCOMPLETE
     anymore, so it's not an issue there.)  */
  if (db_err)
    {
#if SVN_BDB_HAS_DB_INCOMPLETE
      if (db_err != DB_INCOMPLETE)
#endif /* SVN_BDB_HAS_DB_INCOMPLETE */
        {
          return FUNC5
            (fs, "checkpointing after Berkeley DB transaction", db_err);
        }
    }

  return SVN_NO_ERROR;
}