#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_3__ ;
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  svn_revnum_t ;
struct TYPE_14__ {TYPE_1__* vtable; } ;
typedef  TYPE_2__ svn_ra_session_t ;
struct TYPE_15__ {scalar_t__ apr_err; } ;
typedef  TYPE_3__ svn_error_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;
typedef  int /*<<< orphan*/  apr_array_header_t ;
struct TYPE_13__ {TYPE_3__* (* get_inherited_props ) (TYPE_2__*,int /*<<< orphan*/ **,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ SVN_ERR_RA_NOT_IMPLEMENTED ; 
 TYPE_3__* SVN_NO_ERROR ; 
 TYPE_3__* FUNC2 (TYPE_2__*,int /*<<< orphan*/ **,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*) ; 
 TYPE_3__* FUNC4 (TYPE_2__*,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ **,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (char const*) ; 

svn_error_t *
FUNC6(svn_ra_session_t *session,
                           apr_array_header_t **iprops,
                           const char *path,
                           svn_revnum_t revision,
                           apr_pool_t *result_pool,
                           apr_pool_t *scratch_pool)
{
  svn_error_t *err;
  /* Path must be relative. */
  FUNC1(FUNC5(path));

  err = session->vtable->get_inherited_props(session, iprops, path,
                                             revision, result_pool,
                                             scratch_pool);

  if (err && err->apr_err == SVN_ERR_RA_NOT_IMPLEMENTED)
    {
      FUNC3(err);

      /* Fallback for legacy servers. */
      FUNC0(FUNC4(session, path, revision, iprops,
                                               result_pool, scratch_pool));
    }
  else
    FUNC0(err);

  return SVN_NO_ERROR;
}