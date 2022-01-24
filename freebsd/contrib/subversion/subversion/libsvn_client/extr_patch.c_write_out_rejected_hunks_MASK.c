#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
struct TYPE_12__ {int /*<<< orphan*/  apr_err; } ;
typedef  TYPE_1__ svn_error_t ;
typedef  int /*<<< orphan*/  svn_boolean_t ;
struct TYPE_13__ {int /*<<< orphan*/  reject_stream; int /*<<< orphan*/  local_abspath; scalar_t__ had_prop_rejects; scalar_t__ had_rejects; } ;
typedef  TYPE_2__ patch_target_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;
typedef  int /*<<< orphan*/  apr_file_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 TYPE_1__* SVN_NO_ERROR ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 char const* FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  svn_io_file_del_none ; 
 TYPE_1__* FUNC5 (int /*<<< orphan*/ **,int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC6 (int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC9 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static svn_error_t *
FUNC10(patch_target_t *target,
                         const char *root_abspath,
                         svn_boolean_t dry_run,
                         apr_pool_t *scratch_pool)
{
  if (! dry_run && (target->had_rejects || target->had_prop_rejects))
    {
      /* Write out rejected hunks, if any. */
      apr_file_t *reject_file;
      svn_error_t *err;

      err = FUNC5(&reject_file, NULL,
                                       FUNC3(target->local_abspath,
                                                          scratch_pool),
                                       FUNC2(
                                         target->local_abspath,
                                         NULL),
                                       ".svnpatch.rej",
                                       svn_io_file_del_none,
                                       scratch_pool, scratch_pool);
      if (err && FUNC0(err->apr_err))
        {
          /* The hunk applies to a file in a directory which does not exist.
           * Put the reject file into the working copy root instead. */
          FUNC4(err);
          FUNC1(FUNC5(&reject_file, NULL,
                                             root_abspath,
                                             FUNC2(
                                               target->local_abspath,
                                               NULL),
                                             ".svnpatch.rej",
                                             svn_io_file_del_none,
                                             scratch_pool, scratch_pool));
        }
      else
        FUNC1(err);

      FUNC1(FUNC9(target->reject_stream));

      /* svn_stream_copy3() closes the files for us */
      FUNC1(FUNC7(target->reject_stream,
                                  FUNC8(reject_file, FALSE,
                                                           scratch_pool),
                                  NULL, NULL, scratch_pool));
      /* ### TODO mark file as conflicted. */
    }
  else
    FUNC1(FUNC6(target->reject_stream));

  return SVN_NO_ERROR;
}