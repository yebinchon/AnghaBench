#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  svn_string_t ;
typedef  int /*<<< orphan*/  svn_revnum_t ;
typedef  int /*<<< orphan*/  svn_ra_svn_conn_t ;
typedef  int /*<<< orphan*/  svn_ra_svn__list_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
struct TYPE_9__ {int /*<<< orphan*/  baton; int /*<<< orphan*/  pool; } ;
typedef  TYPE_2__ ra_svn_token_entry_t ;
struct TYPE_10__ {TYPE_1__* editor; } ;
typedef  TYPE_3__ ra_svn_driver_state_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;
struct TYPE_8__ {int /*<<< orphan*/  (* open_directory ) (char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,void**) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,TYPE_2__**) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*,void*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,void**) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/  const*,char*,char const**,int /*<<< orphan*/ **,int /*<<< orphan*/ **,int /*<<< orphan*/ *) ; 
 char* FUNC7 (char const*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static svn_error_t *
FUNC8(svn_ra_svn_conn_t *conn,
                       apr_pool_t *pool,
                       const svn_ra_svn__list_t *params,
                       ra_svn_driver_state_t *ds)
{
  const char *path;
  svn_string_t *token, *child_token;
  svn_revnum_t rev;
  ra_svn_token_entry_t *entry;
  apr_pool_t *subpool;
  void *child_baton;

  FUNC1(FUNC6(params, "css(?r)", &path, &token,
                                  &child_token, &rev));
  FUNC1(FUNC2(ds, token, FALSE, &entry));
  subpool = FUNC5(entry->pool);
  path = FUNC7(path, pool);
  FUNC0(ds->editor->open_directory(path, entry->baton, rev, subpool,
                                         &child_baton));
  FUNC3(ds, child_baton, child_token, FALSE, subpool);
  return SVN_NO_ERROR;
}