#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_17__   TYPE_4__ ;
typedef  struct TYPE_16__   TYPE_3__ ;
typedef  struct TYPE_15__   TYPE_2__ ;
typedef  struct TYPE_14__   TYPE_1__ ;
typedef  struct TYPE_13__   TYPE_11__ ;

/* Type definitions */
struct TYPE_14__ {int /*<<< orphan*/  db_txn; } ;
typedef  TYPE_1__ trail_t ;
typedef  int /*<<< orphan*/  svn_skel_t ;
struct TYPE_15__ {TYPE_3__* fsap_data; } ;
typedef  TYPE_2__ svn_fs_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  int /*<<< orphan*/  representation_t ;
struct TYPE_16__ {TYPE_11__* representations; } ;
typedef  TYPE_3__ base_fs_data_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;
struct TYPE_17__ {int /*<<< orphan*/  size; int /*<<< orphan*/  data; } ;
struct TYPE_13__ {int (* get ) (TYPE_11__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;} ;
typedef  TYPE_4__ DBT ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,int /*<<< orphan*/ ,int) ; 
 int DB_NOTFOUND ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SVN_ERR_FS_NO_SUCH_REPRESENTATION ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int FUNC4 (TYPE_11__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ **,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_4__*,char const*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_4__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*,char*,char*) ; 
 int /*<<< orphan*/ * FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

svn_error_t *
FUNC12(representation_t **rep_p,
                     svn_fs_t *fs,
                     const char *key,
                     trail_t *trail,
                     apr_pool_t *pool)
{
  base_fs_data_t *bfd = fs->fsap_data;
  svn_skel_t *skel;
  int db_err;
  DBT query, result;

  FUNC10(trail, "representations", "get");
  db_err = bfd->representations->get(bfd->representations,
                                     trail->db_txn,
                                     FUNC8(&query, key),
                                     FUNC7(&result), 0);
  FUNC9(&result, pool);

  /* If there's no such node, return an appropriately specific error.  */
  if (db_err == DB_NOTFOUND)
    return FUNC5
      (SVN_ERR_FS_NO_SUCH_REPRESENTATION, 0,
       FUNC3("No such representation '%s'"), key);

  /* Handle any other error conditions.  */
  FUNC2(FUNC0(fs, FUNC1("reading representation"), db_err));

  /* Parse the REPRESENTATION skel.  */
  skel = FUNC11(result.data, result.size, pool);

  /* Convert to a native type.  */
  return FUNC6(rep_p, skel, pool);
}