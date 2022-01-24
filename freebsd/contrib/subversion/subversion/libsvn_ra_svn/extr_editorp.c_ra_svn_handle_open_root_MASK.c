#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  svn_string_t ;
typedef  int /*<<< orphan*/  svn_revnum_t ;
typedef  int /*<<< orphan*/  svn_ra_svn_conn_t ;
typedef  int /*<<< orphan*/  svn_ra_svn__list_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
struct TYPE_6__ {int /*<<< orphan*/  edit_baton; TYPE_1__* editor; int /*<<< orphan*/  pool; } ;
typedef  TYPE_2__ ra_svn_driver_state_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;
struct TYPE_5__ {int /*<<< orphan*/  (* open_root ) (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,void**) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,void*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,void**) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/  const*,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 

__attribute__((used)) static svn_error_t *
FUNC6(svn_ra_svn_conn_t *conn,
                        apr_pool_t *pool,
                        const svn_ra_svn__list_t *params,
                        ra_svn_driver_state_t *ds)
{
  svn_revnum_t rev;
  apr_pool_t *subpool;
  svn_string_t *token;
  void *root_baton;

  FUNC1(FUNC5(params, "(?r)s", &rev, &token));
  subpool = FUNC4(ds->pool);
  FUNC0(ds->editor->open_root(ds->edit_baton, rev, subpool,
                                    &root_baton));
  FUNC2(ds, root_baton, token, FALSE, subpool);
  return SVN_NO_ERROR;
}