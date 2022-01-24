#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_7__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {int /*<<< orphan*/  db_txn; } ;
typedef  TYPE_1__ trail_t ;
struct TYPE_10__ {TYPE_3__* fsap_data; } ;
typedef  TYPE_2__ svn_fs_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
struct TYPE_11__ {TYPE_7__* representations; } ;
typedef  TYPE_3__ base_fs_data_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;
struct TYPE_12__ {int (* del ) (TYPE_7__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;} ;
typedef  int /*<<< orphan*/  DBT ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (TYPE_2__*,int /*<<< orphan*/ ,int) ; 
 int DB_NOTFOUND ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  SVN_ERR_FS_NO_SUCH_REPRESENTATION ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int FUNC3 (TYPE_7__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char const*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,char*,char*) ; 

svn_error_t *
FUNC7(svn_fs_t *fs,
                       const char *key,
                       trail_t *trail,
                       apr_pool_t *pool)
{
  base_fs_data_t *bfd = fs->fsap_data;
  int db_err;
  DBT query;

  FUNC6(trail, "representations", "del");
  db_err = bfd->representations->del
    (bfd->representations, trail->db_txn,
     FUNC5(&query, key), 0);

  /* If there's no such node, return an appropriately specific error.  */
  if (db_err == DB_NOTFOUND)
    return FUNC4
      (SVN_ERR_FS_NO_SUCH_REPRESENTATION, 0,
       FUNC2("No such representation '%s'"), key);

  /* Handle any other error conditions.  */
  return FUNC0(fs, FUNC1("deleting representation"), db_err);
}