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
typedef  int svn_revnum_t ;
struct TYPE_3__ {int revision; int /*<<< orphan*/  changed_paths2; } ;
typedef  TYPE_1__ svn_log_entry_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
struct gls_log_receiver_baton {char* last_path; int range_end; int /*<<< orphan*/  pool; int /*<<< orphan*/  receiver_baton; int /*<<< orphan*/  receiver; int /*<<< orphan*/  start_rev; scalar_t__ done; int /*<<< orphan*/  kind; } ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int) ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 scalar_t__ TRUE ; 
 char* FUNC2 (int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/ * FUNC3 (char const*,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (char const**,int /*<<< orphan*/ *,int*,int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 

__attribute__((used)) static svn_error_t *
FUNC5(void *baton,
                 svn_log_entry_t *log_entry,
                 apr_pool_t *pool)
{
  struct gls_log_receiver_baton *lrb = baton;
  const char *current_path = lrb->last_path;
  const char *prev_path;
  svn_revnum_t copyfrom_rev;

  /* If we're done, ignore this invocation. */
  if (lrb->done)
    return SVN_NO_ERROR;

  /* Figure out at which repository path our object of interest lived
     in the previous revision, and if its current location is the
     result of copy since then. */
  FUNC0(FUNC4(&prev_path, NULL, &copyfrom_rev,
                        log_entry->changed_paths2, current_path,
                        lrb->kind, log_entry->revision, pool));

  /* If we've run off the end of the path's history, we need to report
     our final segment (and then, we're done). */
  if (! prev_path)
    {
      lrb->done = TRUE;
      return FUNC3(current_path, lrb->start_rev,
                                         log_entry->revision, lrb->range_end,
                                         lrb->receiver, lrb->receiver_baton,
                                         pool);
    }

  /* If there was a copy operation of interest... */
  if (FUNC1(copyfrom_rev))
    {
      /* ...then report the segment between this revision and the
         last-reported revision. */
      FUNC0(FUNC3(current_path, lrb->start_rev,
                                          log_entry->revision, lrb->range_end,
                                          lrb->receiver, lrb->receiver_baton,
                                          pool));
      lrb->range_end = log_entry->revision - 1;

      /* And if there was a revision gap, we need to report that, too. */
      if (log_entry->revision - copyfrom_rev > 1)
        {
          FUNC0(FUNC3(NULL, lrb->start_rev,
                                              copyfrom_rev + 1, lrb->range_end,
                                              lrb->receiver,
                                              lrb->receiver_baton, pool));
          lrb->range_end = copyfrom_rev;
        }

      /* Update our state variables. */
      lrb->last_path = FUNC2(lrb->pool, prev_path);
    }

  return SVN_NO_ERROR;
}