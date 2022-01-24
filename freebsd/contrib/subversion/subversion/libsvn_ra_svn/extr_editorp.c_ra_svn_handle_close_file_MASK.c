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
typedef  int /*<<< orphan*/  svn_ra_svn_conn_t ;
typedef  int /*<<< orphan*/  svn_ra_svn__list_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
struct TYPE_9__ {int /*<<< orphan*/  baton; } ;
typedef  TYPE_2__ ra_svn_token_entry_t ;
struct TYPE_10__ {scalar_t__ file_refs; int /*<<< orphan*/  file_pool; TYPE_1__* editor; } ;
typedef  TYPE_3__ ra_svn_driver_state_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;
struct TYPE_8__ {int /*<<< orphan*/  (* close_file ) (int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ *) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,TYPE_2__**) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/  const*,char*,int /*<<< orphan*/ **,char const**) ; 

__attribute__((used)) static svn_error_t *
FUNC7(svn_ra_svn_conn_t *conn,
                         apr_pool_t *pool,
                         const svn_ra_svn__list_t *params,
                         ra_svn_driver_state_t *ds)
{
  svn_string_t *token;
  ra_svn_token_entry_t *entry;
  const char *text_checksum;

  /* Parse arguments and look up the file token. */
  FUNC1(FUNC6(params, "s(?c)",
                                  &token, &text_checksum));
  FUNC1(FUNC2(ds, token, TRUE, &entry));

  /* Close the file and destroy the baton. */
  FUNC0(ds->editor->close_file(entry->baton, text_checksum, pool));
  FUNC3(ds, token);
  if (--ds->file_refs == 0)
    FUNC5(ds->file_pool);
  return SVN_NO_ERROR;
}