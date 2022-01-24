#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_17__   TYPE_3__ ;
typedef  struct TYPE_16__   TYPE_2__ ;
typedef  struct TYPE_15__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ svn_revnum_t ;
struct TYPE_16__ {TYPE_1__* vtable; } ;
typedef  TYPE_2__ svn_ra_session_t ;
typedef  int /*<<< orphan*/  svn_file_rev_handler_t ;
struct TYPE_17__ {scalar_t__ apr_err; } ;
typedef  TYPE_3__ svn_error_t ;
typedef  scalar_t__ svn_boolean_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;
struct TYPE_15__ {TYPE_3__* (* get_file_revs ) (TYPE_2__*,char const*,scalar_t__,scalar_t__,scalar_t__,int /*<<< orphan*/ ,void*,int /*<<< orphan*/ *) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ SVN_ERR_RA_NOT_IMPLEMENTED ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  SVN_RA_CAPABILITY_GET_FILE_REVS_REVERSE ; 
 TYPE_3__* FUNC3 (TYPE_2__*,char const*,scalar_t__,scalar_t__,scalar_t__,int /*<<< orphan*/ ,void*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*) ; 
 TYPE_3__* FUNC5 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 TYPE_3__* FUNC8 (TYPE_2__*,char const*,scalar_t__,scalar_t__,int /*<<< orphan*/ ,void*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (char const*) ; 

svn_error_t *FUNC10(svn_ra_session_t *session,
                                   const char *path,
                                   svn_revnum_t start,
                                   svn_revnum_t end,
                                   svn_boolean_t include_merged_revisions,
                                   svn_file_rev_handler_t handler,
                                   void *handler_baton,
                                   apr_pool_t *pool)
{
  svn_error_t *err;

  FUNC1(FUNC9(path));

  if (include_merged_revisions)
    FUNC0(FUNC7(session, NULL, pool));

  if (start > end || !FUNC2(start))
    FUNC0(
     FUNC6(session,
                                   SVN_RA_CAPABILITY_GET_FILE_REVS_REVERSE,
                                   NULL,
                                   pool));

  err = session->vtable->get_file_revs(session, path, start, end,
                                       include_merged_revisions,
                                       handler, handler_baton, pool);
  if (err && (err->apr_err == SVN_ERR_RA_NOT_IMPLEMENTED)
      && !include_merged_revisions)
    {
      FUNC4(err);

      /* Do it the slow way, using get-logs, for older servers. */
      err = FUNC8(session, path, start, end,
                                       handler, handler_baton, pool);
    }
  return FUNC5(err);
}