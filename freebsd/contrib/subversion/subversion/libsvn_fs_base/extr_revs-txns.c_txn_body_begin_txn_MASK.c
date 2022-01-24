#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int /*<<< orphan*/  pool; int /*<<< orphan*/  fs; } ;
typedef  TYPE_1__ trail_t ;
struct TYPE_8__ {int /*<<< orphan*/  data; int /*<<< orphan*/  len; } ;
typedef  TYPE_2__ svn_string_t ;
typedef  int /*<<< orphan*/  svn_fs_id_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
struct change_txn_prop_args {char const* id; TYPE_2__* value; int /*<<< orphan*/  name; int /*<<< orphan*/  fs; } ;
struct begin_txn_args {int flags; int /*<<< orphan*/  base_rev; int /*<<< orphan*/ * txn_p; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int SVN_FS_TXN_CHECK_LOCKS ; 
 int SVN_FS_TXN_CHECK_OOD ; 
 int SVN_FS_TXN_CLIENT_DATE ; 
 int /*<<< orphan*/  SVN_FS__PROP_TXN_CHECK_LOCKS ; 
 int /*<<< orphan*/  SVN_FS__PROP_TXN_CHECK_OOD ; 
 int /*<<< orphan*/  SVN_FS__PROP_TXN_CLIENT_DATE ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/  SVN_PROP_REVISION_DATE ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/  const**,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char const**,int /*<<< orphan*/ ,int /*<<< orphan*/  const*,TYPE_1__*,int /*<<< orphan*/ ) ; 
 void* FUNC6 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct change_txn_prop_args*,TYPE_1__*) ; 

__attribute__((used)) static svn_error_t *
FUNC9(void *baton, trail_t *trail)
{
  struct begin_txn_args *args = baton;
  const svn_fs_id_t *root_id;
  const char *txn_id;

  FUNC0(FUNC4(&root_id, trail->fs, args->base_rev,
                                    trail, trail->pool));
  FUNC0(FUNC5(&txn_id, trail->fs, root_id,
                                 trail, trail->pool));

  if (args->flags & SVN_FS_TXN_CHECK_OOD)
    {
      struct change_txn_prop_args cpargs;
      cpargs.fs = trail->fs;
      cpargs.id = txn_id;
      cpargs.name = SVN_FS__PROP_TXN_CHECK_OOD;
      cpargs.value = FUNC6("true", trail->pool);

      FUNC0(FUNC8(&cpargs, trail));
    }

  if (args->flags & SVN_FS_TXN_CHECK_LOCKS)
    {
      struct change_txn_prop_args cpargs;
      cpargs.fs = trail->fs;
      cpargs.id = txn_id;
      cpargs.name = SVN_FS__PROP_TXN_CHECK_LOCKS;
      cpargs.value = FUNC6("true", trail->pool);

      FUNC0(FUNC8(&cpargs, trail));
    }

  /* Put a datestamp on the newly created txn, so we always know
     exactly how old it is.  (This will help sysadmins identify
     long-abandoned txns that may need to be manually removed.) Do
     this before setting CLIENT_DATE so that it is not recorded as an
     explicit setting. */
  {
    struct change_txn_prop_args cpargs;
    svn_string_t date;
    cpargs.fs = trail->fs;
    cpargs.id = txn_id;
    cpargs.name = SVN_PROP_REVISION_DATE;
    date.data  = FUNC7(FUNC1(), trail->pool);
    date.len = FUNC3(date.data);
    cpargs.value = &date;
    FUNC0(FUNC8(&cpargs, trail));
  }

  if (args->flags & SVN_FS_TXN_CLIENT_DATE)
    {
      struct change_txn_prop_args cpargs;
      cpargs.fs = trail->fs;
      cpargs.id = txn_id;
      cpargs.name = SVN_FS__PROP_TXN_CLIENT_DATE;
      cpargs.value = FUNC6("0", trail->pool);

      FUNC0(FUNC8(&cpargs, trail));
    }

  *args->txn_p = FUNC2(trail->fs, txn_id, args->base_rev, trail->pool);
  return SVN_NO_ERROR;
}