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
struct TYPE_11__ {int revprop_generation; scalar_t__ has_write_lock; } ;
typedef  TYPE_1__ svn_fs_x__data_t ;
struct TYPE_12__ {TYPE_1__* fsap_data; } ;
typedef  TYPE_2__ svn_fs_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  int svn_boolean_t ;
struct TYPE_13__ {int* generation; TYPE_2__* fs; } ;
typedef  TYPE_3__ revprop_generation_upgrade_t ;
typedef  scalar_t__ apr_time_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;
typedef  int apr_int64_t ;

/* Variables and functions */
 int FALSE ; 
 scalar_t__ REVPROP_CHANGE_TIMEOUT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 scalar_t__ FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int*,TYPE_2__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*,int /*<<< orphan*/  (*) (TYPE_3__*,int /*<<< orphan*/ *),TYPE_3__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static svn_error_t *
FUNC7(svn_fs_t *fs,
                        apr_pool_t *scratch_pool)
{
  apr_int64_t current = 0;
  svn_fs_x__data_t *ffd = fs->fsap_data;

  /* read the current revprop generation number */
  FUNC0(FUNC2(&current, fs, scratch_pool));

  /* is an unfinished revprop write under the way? */
  if (current % 2)
    {
      svn_boolean_t timeout = FALSE;

      /* Has the writer process been aborted?
       * Either by timeout or by us being the writer now.
       */
      if (!ffd->has_write_lock)
        {
          apr_time_t mtime;
          FUNC0(FUNC6(&mtime,
                        FUNC4(fs, scratch_pool),
                        scratch_pool));
          timeout = FUNC1() > mtime + REVPROP_CHANGE_TIMEOUT;
        }

      if (ffd->has_write_lock || timeout)
        {
          revprop_generation_upgrade_t baton;
          baton.generation = &current;
          baton.fs = fs;

          /* Ensure that the original writer process no longer exists by
           * acquiring the write lock to this repository.  Then, fix up
           * the revprop generation.
           */
          if (ffd->has_write_lock)
            FUNC0(FUNC3(&baton, scratch_pool));
          else
            FUNC0(FUNC5(fs, revprop_generation_fixup,
                                              &baton, scratch_pool));
        }
    }

  /* return the value we just got */
  ffd->revprop_generation = current;
  return SVN_NO_ERROR;
}