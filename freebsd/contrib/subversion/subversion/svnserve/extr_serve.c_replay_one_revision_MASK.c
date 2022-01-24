#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_5__ ;
typedef  struct TYPE_15__   TYPE_4__ ;
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  svn_revnum_t ;
typedef  int /*<<< orphan*/  svn_ra_svn_conn_t ;
typedef  int /*<<< orphan*/  svn_fs_root_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
struct TYPE_14__ {int /*<<< orphan*/  (* abort_edit ) (void*,int /*<<< orphan*/ *) ;} ;
typedef  TYPE_3__ svn_delta_editor_t ;
typedef  int /*<<< orphan*/  svn_boolean_t ;
struct TYPE_15__ {TYPE_2__* repository; } ;
typedef  TYPE_4__ server_baton_t ;
struct TYPE_16__ {int /*<<< orphan*/ * conn; TYPE_4__* server; } ;
typedef  TYPE_5__ authz_baton_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;
struct TYPE_13__ {TYPE_1__* fs_path; int /*<<< orphan*/  fs; } ;
struct TYPE_12__ {int /*<<< orphan*/  data; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_4__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (void*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_3__ const**,void**,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_3__ const*,void*,int /*<<< orphan*/ ,TYPE_5__*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static svn_error_t *FUNC11(svn_ra_svn_conn_t *conn,
                                        server_baton_t *b,
                                        svn_revnum_t rev,
                                        svn_revnum_t low_water_mark,
                                        svn_boolean_t send_deltas,
                                        apr_pool_t *pool)
{
  const svn_delta_editor_t *editor;
  void *edit_baton;
  svn_fs_root_t *root;
  svn_error_t *err;
  authz_baton_t ab;

  ab.server = b;
  ab.conn = conn;

  FUNC1(FUNC3(b, conn, pool,
                      FUNC7(b->repository->fs_path->data, rev,
                                      pool)));

  FUNC9(&editor, &edit_baton, conn, pool, NULL, NULL);

  err = FUNC6(&root, b->repository->fs, rev, pool);

  if (! err)
    err = FUNC10(root, b->repository->fs_path->data,
                            low_water_mark, send_deltas, editor, edit_baton,
                            FUNC2(b), &ab, pool);

  if (err)
    FUNC5(editor->abort_edit(edit_baton, pool));
  FUNC0(err);

  return FUNC8(conn, pool);
}