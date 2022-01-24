#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_20__   TYPE_4__ ;
typedef  struct TYPE_19__   TYPE_3__ ;
typedef  struct TYPE_18__   TYPE_2__ ;
typedef  struct TYPE_17__   TYPE_1__ ;
typedef  struct TYPE_16__   TYPE_10__ ;

/* Type definitions */
struct TYPE_17__ {int /*<<< orphan*/  db_txn; } ;
typedef  TYPE_1__ trail_t ;
struct TYPE_18__ {TYPE_3__* fsap_data; } ;
typedef  TYPE_2__ svn_fs_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
struct TYPE_19__ {TYPE_10__* strings; } ;
typedef  TYPE_3__ base_fs_data_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;
struct TYPE_20__ {int /*<<< orphan*/  flags; scalar_t__ size; scalar_t__ data; } ;
struct TYPE_16__ {int (* del ) (TYPE_10__*,int /*<<< orphan*/ ,TYPE_4__*,int /*<<< orphan*/ ) ;int (* put ) (TYPE_10__*,int /*<<< orphan*/ ,TYPE_4__*,TYPE_4__*,int /*<<< orphan*/ ) ;} ;
typedef  TYPE_4__ DBT ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (TYPE_2__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  DB_DBT_USERMEM ; 
 int DB_NOTFOUND ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  SVN_ERR_FS_NO_SUCH_STRING ; 
 int FUNC3 (TYPE_10__*,int /*<<< orphan*/ ,TYPE_4__*,int /*<<< orphan*/ ) ; 
 int FUNC4 (TYPE_10__*,int /*<<< orphan*/ ,TYPE_4__*,TYPE_4__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,char const*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_4__*,char const*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*,char*,char*) ; 

svn_error_t *
FUNC9(svn_fs_t *fs,
                         const char *key,
                         trail_t *trail,
                         apr_pool_t *pool)
{
  base_fs_data_t *bfd = fs->fsap_data;
  int db_err;
  DBT query, result;

  FUNC7(&query, key);

  /* Torch the prior contents */
  FUNC8(trail, "strings", "del");
  db_err = bfd->strings->del(bfd->strings, trail->db_txn, &query, 0);

  /* If there's no such node, return an appropriately specific error.  */
  if (db_err == DB_NOTFOUND)
    return FUNC5
      (SVN_ERR_FS_NO_SUCH_STRING, 0,
       "No such string '%s'", key);

  /* Handle any other error conditions.  */
  FUNC2(FUNC0(fs, FUNC1("clearing string"), db_err));

  /* Shove empty data back in for this key. */
  FUNC6(&result);
  result.data = 0;
  result.size = 0;
  result.flags |= DB_DBT_USERMEM;

  FUNC8(trail, "strings", "put");
  return FUNC0(fs, FUNC1("storing empty contents"),
                  bfd->strings->put(bfd->strings, trail->db_txn,
                                    &query, &result, 0));
}