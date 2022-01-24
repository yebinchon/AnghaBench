#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  svn_string_t ;
typedef  int /*<<< orphan*/  svn_revnum_t ;
typedef  int /*<<< orphan*/  svn_ra_svn_conn_t ;
typedef  int /*<<< orphan*/  svn_ra_svn__list_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
struct TYPE_10__ {int /*<<< orphan*/  baton; } ;
typedef  TYPE_2__ ra_svn_token_entry_t ;
struct TYPE_11__ {int /*<<< orphan*/  file_pool; TYPE_1__* editor; int /*<<< orphan*/  file_refs; } ;
typedef  TYPE_3__ ra_svn_driver_state_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;
struct TYPE_9__ {int /*<<< orphan*/  (* open_file ) (char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,TYPE_2__**) ; 
 TYPE_2__* FUNC3 (TYPE_3__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/  const*,char*,char const**,int /*<<< orphan*/ **,int /*<<< orphan*/ **,int /*<<< orphan*/ *) ; 
 char* FUNC6 (char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (char const*) ; 

__attribute__((used)) static svn_error_t *
FUNC8(svn_ra_svn_conn_t *conn,
                        apr_pool_t *pool,
                        const svn_ra_svn__list_t *params,
                        ra_svn_driver_state_t *ds)
{
  const char *path;
  svn_string_t *token, *file_token;
  svn_revnum_t rev;
  ra_svn_token_entry_t *entry, *file_entry;

  FUNC1(FUNC5(params, "css(?r)", &path, &token,
                                  &file_token, &rev));
  FUNC1(FUNC2(ds, token, FALSE, &entry));
  ds->file_refs++;

  /* The PATH should be canonical .. but never trust incoming data. */
  if (!FUNC7(path))
    path = FUNC6(path, pool);

  file_entry = FUNC3(ds, NULL, file_token, TRUE, ds->file_pool);
  FUNC0(ds->editor->open_file(path, entry->baton, rev, ds->file_pool,
                                    &file_entry->baton));
  return SVN_NO_ERROR;
}