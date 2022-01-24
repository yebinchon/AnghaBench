#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  svn_txdelta_window_handler_t ;
typedef  int /*<<< orphan*/  svn_string_t ;
typedef  int /*<<< orphan*/  svn_ra_svn_conn_t ;
typedef  int /*<<< orphan*/  svn_ra_svn__list_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
struct TYPE_8__ {int /*<<< orphan*/  pool; scalar_t__ dstream; int /*<<< orphan*/  baton; } ;
typedef  TYPE_2__ ra_svn_token_entry_t ;
struct TYPE_9__ {TYPE_1__* editor; int /*<<< orphan*/  file_pool; } ;
typedef  TYPE_3__ ra_svn_driver_state_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;
struct TYPE_7__ {int /*<<< orphan*/  (* apply_textdelta ) (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,void**) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SVN_ERR_RA_SVN_MALFORMED_DATA ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,TYPE_2__**) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,void**) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/  const*,char*,int /*<<< orphan*/ **,char**) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ,void*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static svn_error_t *
FUNC9(svn_ra_svn_conn_t *conn,
                              apr_pool_t *pool,
                              const svn_ra_svn__list_t *params,
                              ra_svn_driver_state_t *ds)
{
  svn_string_t *token;
  ra_svn_token_entry_t *entry;
  svn_txdelta_window_handler_t wh;
  void *wh_baton;
  char *base_checksum;

  /* Parse arguments and look up the token. */
  FUNC1(FUNC7(params, "s(?c)",
                                  &token, &base_checksum));
  FUNC1(FUNC3(ds, token, TRUE, &entry));
  if (entry->dstream)
    return FUNC5(SVN_ERR_RA_SVN_MALFORMED_DATA, NULL,
                            FUNC2("Apply-textdelta already active"));
  entry->pool = FUNC6(ds->file_pool);
  FUNC0(ds->editor->apply_textdelta(entry->baton, base_checksum,
                                          entry->pool, &wh, &wh_baton));
  entry->dstream = FUNC8(wh, wh_baton, TRUE, entry->pool);
  return SVN_NO_ERROR;
}