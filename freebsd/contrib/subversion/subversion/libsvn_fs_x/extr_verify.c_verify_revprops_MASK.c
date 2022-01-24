#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  data; } ;
typedef  TYPE_1__ svn_string_t ;
typedef  scalar_t__ svn_revnum_t ;
typedef  int /*<<< orphan*/  svn_fs_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  int /*<<< orphan*/  (* svn_cancel_func_t ) (void*) ;
typedef  int /*<<< orphan*/  apr_time_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/  SVN_PROP_REVISION_DATE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__**,int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static svn_error_t *
FUNC7(svn_fs_t *fs,
                svn_revnum_t start,
                svn_revnum_t end,
                svn_cancel_func_t cancel_func,
                void *cancel_baton,
                apr_pool_t *scratch_pool)
{
  svn_revnum_t revision;
  apr_pool_t *iterpool = FUNC4(scratch_pool);

  /* Invalidate the revprop generation once.
   * Use the cache inside the loop to speed up packed revprop access. */
  FUNC1(fs);

  for (revision = start; revision < end; ++revision)
    {
      svn_string_t *date;
      apr_time_t timetemp;

      FUNC3(iterpool);

      /* Access the svn:date revprop.
       * This implies parsing all revprops for that revision. */
      FUNC0(FUNC2(&date, fs, revision,
                                      SVN_PROP_REVISION_DATE, FALSE,
                                      iterpool, iterpool));

      /* The time stamp is the only revprop that, if given, needs to
       * have a valid content. */
      if (date)
        FUNC0(FUNC6(&timetemp, date->data, iterpool));

      if (cancel_func)
        FUNC0(cancel_func(cancel_baton));
    }

  FUNC5(iterpool);

  return SVN_NO_ERROR;
}