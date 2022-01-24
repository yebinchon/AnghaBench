#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_19__   TYPE_4__ ;
typedef  struct TYPE_18__   TYPE_3__ ;
typedef  struct TYPE_17__   TYPE_2__ ;
typedef  struct TYPE_16__   TYPE_1__ ;
typedef  struct TYPE_15__   TYPE_13__ ;

/* Type definitions */
struct TYPE_16__ {int /*<<< orphan*/  db_txn; } ;
typedef  TYPE_1__ trail_t ;
typedef  int /*<<< orphan*/  svn_skel_t ;
struct TYPE_17__ {TYPE_3__* fsap_data; } ;
typedef  TYPE_2__ svn_fs_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  int /*<<< orphan*/  copy_t ;
struct TYPE_18__ {TYPE_13__* copies; } ;
typedef  TYPE_3__ base_fs_data_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;
struct TYPE_19__ {int /*<<< orphan*/  size; int /*<<< orphan*/  data; } ;
struct TYPE_15__ {int (* get ) (TYPE_13__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;} ;
typedef  TYPE_4__ DBT ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,int /*<<< orphan*/ ,int) ; 
 int DB_NOTFOUND ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int FUNC3 (TYPE_13__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC4 (TYPE_2__*,char const*) ; 
 int /*<<< orphan*/ * FUNC5 (TYPE_2__*,char const*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ **,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_4__*,char const*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_4__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*,char*,char*) ; 
 int /*<<< orphan*/ * FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

svn_error_t *
FUNC12(copy_t **copy_p,
                     svn_fs_t *fs,
                     const char *copy_id,
                     trail_t *trail,
                     apr_pool_t *pool)
{
  base_fs_data_t *bfd = fs->fsap_data;
  DBT key, value;
  int db_err;
  svn_skel_t *skel;
  copy_t *copy;

  /* Only in the context of this function do we know that the DB call
     will not attempt to modify copy_id, so the cast belongs here.  */
  FUNC10(trail, "copies", "get");
  db_err = bfd->copies->get(bfd->copies, trail->db_txn,
                            FUNC8(&key, copy_id),
                            FUNC7(&value),
                            0);
  FUNC9(&value, pool);

  if (db_err == DB_NOTFOUND)
    return FUNC5(fs, copy_id);
  FUNC2(FUNC0(fs, FUNC1("reading copy"), db_err));

  /* Unparse COPY skel */
  skel = FUNC11(value.data, value.size, pool);
  if (! skel)
    return FUNC4(fs, copy_id);

  /* Convert skel to native type. */
  FUNC2(FUNC6(&copy, skel, pool));
  *copy_p = copy;
  return SVN_NO_ERROR;
}