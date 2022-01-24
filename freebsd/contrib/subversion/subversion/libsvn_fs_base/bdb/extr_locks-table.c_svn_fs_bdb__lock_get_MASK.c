#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_26__   TYPE_5__ ;
typedef  struct TYPE_25__   TYPE_4__ ;
typedef  struct TYPE_24__   TYPE_3__ ;
typedef  struct TYPE_23__   TYPE_2__ ;
typedef  struct TYPE_22__   TYPE_1__ ;
typedef  struct TYPE_21__   TYPE_18__ ;

/* Type definitions */
struct TYPE_22__ {int /*<<< orphan*/  db_txn; } ;
typedef  TYPE_1__ trail_t ;
typedef  int /*<<< orphan*/  svn_skel_t ;
struct TYPE_23__ {scalar_t__ expiration_date; } ;
typedef  TYPE_2__ svn_lock_t ;
struct TYPE_24__ {TYPE_4__* fsap_data; } ;
typedef  TYPE_3__ svn_fs_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
struct TYPE_25__ {TYPE_18__* locks; } ;
typedef  TYPE_4__ base_fs_data_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;
struct TYPE_26__ {int /*<<< orphan*/  size; int /*<<< orphan*/  data; } ;
struct TYPE_21__ {int (* get ) (TYPE_18__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;} ;
typedef  TYPE_5__ DBT ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_3__*,int /*<<< orphan*/ ,int) ; 
 int DB_NOTFOUND ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC3 (TYPE_3__*,char const*) ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 scalar_t__ FUNC4 () ; 
 int FUNC5 (TYPE_18__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC6 (TYPE_3__*,char const*) ; 
 int /*<<< orphan*/ * FUNC7 (TYPE_3__*,char const*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__**,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_5__*,char const*) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_5__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_1__*,char*,char*) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_3__*,char const*,TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

svn_error_t *
FUNC15(svn_lock_t **lock_p,
                     svn_fs_t *fs,
                     const char *lock_token,
                     trail_t *trail,
                     apr_pool_t *pool)
{
  base_fs_data_t *bfd = fs->fsap_data;
  DBT key, value;
  int db_err;
  svn_skel_t *skel;
  svn_lock_t *lock;

  FUNC12(trail, "lock", "get");
  db_err = bfd->locks->get(bfd->locks, trail->db_txn,
                           FUNC10(&key, lock_token),
                           FUNC9(&value),
                           0);
  FUNC11(&value, pool);

  if (db_err == DB_NOTFOUND)
    return FUNC6(fs, lock_token);
  FUNC2(FUNC0(fs, FUNC1("reading lock"), db_err));

  /* Parse TRANSACTION skel */
  skel = FUNC14(value.data, value.size, pool);
  if (! skel)
    return FUNC7(fs, lock_token);

  /* Convert skel to native type. */
  FUNC2(FUNC8(&lock, skel, pool));

  /* Possibly auto-expire the lock. */
  if (lock->expiration_date && (FUNC4() > lock->expiration_date))
    {
      FUNC2(FUNC13(fs, lock_token, trail, pool));
      return FUNC3(fs, lock_token);
    }

  *lock_p = lock;
  return SVN_NO_ERROR;
}