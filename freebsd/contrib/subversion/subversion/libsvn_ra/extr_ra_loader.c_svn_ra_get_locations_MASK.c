#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  svn_revnum_t ;
struct TYPE_12__ {TYPE_1__* vtable; } ;
typedef  TYPE_2__ svn_ra_session_t ;
struct TYPE_13__ {scalar_t__ apr_err; } ;
typedef  TYPE_3__ svn_error_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;
typedef  int /*<<< orphan*/  apr_hash_t ;
typedef  int /*<<< orphan*/  apr_array_header_t ;
struct TYPE_11__ {TYPE_3__* (* get_locations ) (TYPE_2__*,int /*<<< orphan*/ **,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/  const*,int /*<<< orphan*/ *) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ SVN_ERR_RA_NOT_IMPLEMENTED ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 TYPE_3__* FUNC2 (TYPE_2__*,int /*<<< orphan*/ **,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/  const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*) ; 
 TYPE_3__* FUNC4 (TYPE_2__*,int /*<<< orphan*/ **,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/  const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (char const*) ; 

svn_error_t *FUNC6(svn_ra_session_t *session,
                                  apr_hash_t **locations,
                                  const char *path,
                                  svn_revnum_t peg_revision,
                                  const apr_array_header_t *location_revisions,
                                  apr_pool_t *pool)
{
  svn_error_t *err;

  FUNC0(FUNC1(peg_revision));
  FUNC0(FUNC5(path));
  err = session->vtable->get_locations(session, locations, path,
                                       peg_revision, location_revisions, pool);
  if (err && (err->apr_err == SVN_ERR_RA_NOT_IMPLEMENTED))
    {
      FUNC3(err);

      /* Do it the slow way, using get-logs, for older servers. */
      err = FUNC4(session, locations, path,
                                       peg_revision, location_revisions,
                                       pool);
    }
  return err;
}