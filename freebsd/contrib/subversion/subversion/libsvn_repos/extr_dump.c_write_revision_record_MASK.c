#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  data; } ;
typedef  TYPE_1__ svn_string_t ;
typedef  int /*<<< orphan*/  svn_stream_t ;
typedef  int /*<<< orphan*/  svn_revnum_t ;
typedef  int /*<<< orphan*/  svn_repos_t ;
typedef  int /*<<< orphan*/  svn_repos_authz_func_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  int /*<<< orphan*/  svn_boolean_t ;
typedef  int /*<<< orphan*/  apr_time_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;
typedef  int /*<<< orphan*/  apr_hash_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/  SVN_PROP_REVISION_DATE ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ **,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,void*,int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static svn_error_t *
FUNC9(svn_stream_t *stream,
                      svn_repos_t *repos,
                      svn_revnum_t rev,
                      svn_boolean_t include_revprops,
                      svn_repos_authz_func_t authz_func,
                      void *authz_baton,
                      apr_pool_t *pool)
{
  apr_hash_t *props;
  apr_time_t timetemp;
  svn_string_t *datevalue;

  if (include_revprops)
    {
      FUNC0(FUNC5(&props, repos, rev,
                                             authz_func, authz_baton, pool));

      /* Run revision date properties through the time conversion to
        canonicalize them. */
      /* ### Remove this when it is no longer needed for sure. */
      datevalue = FUNC2(props, SVN_PROP_REVISION_DATE);
      if (datevalue)
        {
          FUNC0(FUNC7(&timetemp, datevalue->data, pool));
          datevalue = FUNC6(FUNC8(timetemp, pool),
                                        pool);
          FUNC3(props, SVN_PROP_REVISION_DATE, datevalue);
        }
    }
   else
    {
      /* Although we won't use it, we still need this container for the
         call below. */
      props = FUNC1(pool);
    }

  FUNC0(FUNC4(stream, rev, NULL, props,
                                          include_revprops,
                                          pool));
  return SVN_NO_ERROR;
}