#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_18__   TYPE_4__ ;
typedef  struct TYPE_17__   TYPE_3__ ;
typedef  struct TYPE_16__   TYPE_2__ ;
typedef  struct TYPE_15__   TYPE_1__ ;
typedef  struct TYPE_14__   TYPE_12__ ;

/* Type definitions */
struct TYPE_15__ {int /*<<< orphan*/  db_txn; } ;
typedef  TYPE_1__ trail_t ;
typedef  int /*<<< orphan*/  svn_skel_t ;
struct TYPE_16__ {TYPE_3__* fsap_data; } ;
typedef  TYPE_2__ svn_fs_t ;
typedef  int /*<<< orphan*/  svn_fs_id_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  int /*<<< orphan*/  node_revision_t ;
struct TYPE_17__ {TYPE_12__* nodes; } ;
typedef  TYPE_3__ base_fs_data_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;
struct TYPE_18__ {int /*<<< orphan*/  size; int /*<<< orphan*/  data; } ;
struct TYPE_14__ {int (* get ) (TYPE_12__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;} ;
typedef  TYPE_4__ DBT ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,int /*<<< orphan*/ ,int) ; 
 int DB_NOTFOUND ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int FUNC3 (TYPE_12__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC4 (TYPE_2__*,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_4__*,int /*<<< orphan*/  const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ **,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_4__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*,char*,char*) ; 
 int /*<<< orphan*/ * FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

svn_error_t *
FUNC11(node_revision_t **noderev_p,
                              svn_fs_t *fs,
                              const svn_fs_id_t *id,
                              trail_t *trail,
                              apr_pool_t *pool)
{
  base_fs_data_t *bfd = fs->fsap_data;
  node_revision_t *noderev;
  svn_skel_t *skel;
  int db_err;
  DBT key, value;

  FUNC9(trail, "nodes", "get");
  db_err = bfd->nodes->get(bfd->nodes, trail->db_txn,
                           FUNC5(&key, id, pool),
                           FUNC7(&value),
                           0);
  FUNC8(&value, pool);

  /* If there's no such node, return an appropriately specific error.  */
  if (db_err == DB_NOTFOUND)
    return FUNC4(fs, id);

  /* Handle any other error conditions.  */
  FUNC2(FUNC0(fs, FUNC1("reading node revision"), db_err));

  /* If our caller doesn't really care about the return value here,
     just return successfully. */
  if (! noderev_p)
    return SVN_NO_ERROR;

  /* Parse and the NODE-REVISION skel.  */
  skel = FUNC10(value.data, value.size, pool);

  /* Convert to a native FS type. */
  FUNC2(FUNC6(&noderev, skel, pool));
  *noderev_p = noderev;
  return SVN_NO_ERROR;
}