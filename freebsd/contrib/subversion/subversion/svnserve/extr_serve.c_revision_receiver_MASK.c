#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  svn_string_t ;
struct TYPE_4__ {int /*<<< orphan*/  has_children; int /*<<< orphan*/  subtractive_merge; int /*<<< orphan*/  revprops; int /*<<< orphan*/  revision; } ;
typedef  TYPE_1__ svn_repos_log_entry_t ;
typedef  int /*<<< orphan*/  svn_ra_svn_conn_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  void* svn_boolean_t ;
struct TYPE_5__ {scalar_t__ stack_depth; void* started; int /*<<< orphan*/ * conn; } ;
typedef  TYPE_2__ log_baton_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 void* FALSE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SVN_INVALID_REVNUM ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 void* TRUE ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/  const**,int /*<<< orphan*/  const**,int /*<<< orphan*/  const**,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,int /*<<< orphan*/ ,void*,unsigned int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static svn_error_t *
FUNC9(void *baton,
                  svn_repos_log_entry_t *log_entry,
                  apr_pool_t *scratch_pool)
{
  log_baton_t *b = baton;
  svn_ra_svn_conn_t *conn = b->conn;
  svn_boolean_t invalid_revnum = FALSE;
  const svn_string_t *author, *date, *message;
  unsigned revprop_count;

  if (log_entry->revision == SVN_INVALID_REVNUM)
    {
      /* If the stack depth is zero, we've seen the last revision, so don't
         send it, just return. */
      if (b->stack_depth == 0)
        return SVN_NO_ERROR;

      /* Because the svn protocol won't let us send an invalid revnum, we have
         to fudge here and send an additional flag. */
      log_entry->revision = 0;
      invalid_revnum = TRUE;
      b->stack_depth--;
    }

  FUNC3(&author, &date, &message,
                                     log_entry->revprops);

  /* Revprops list filtering is somewhat expensive.
     Avoid doing that for the 90% case where only the standard revprops
     have been requested and delivered. */
  if (author && date && message && FUNC1(log_entry->revprops) == 3)
    {
      revprop_count = 0;
    }
  else
    {
      FUNC2(log_entry->revprops);
      if (log_entry->revprops)
        revprop_count = FUNC1(log_entry->revprops);
      else
        revprop_count = 0;
    }

  /* Open lists once: LOG_ENTRY and LOG_ENTRY->CHANGED_PATHS. */
  if (!b->started)
    {
      FUNC0(FUNC5(conn, scratch_pool));
      FUNC0(FUNC5(conn, scratch_pool));
    }

  /* Close LOG_ENTRY->CHANGED_PATHS. */
  FUNC0(FUNC4(conn, scratch_pool));
  b->started = FALSE;

  /* send LOG_ENTRY main members */
  FUNC0(FUNC7(conn, scratch_pool,
                                           log_entry->revision,
                                           author, date, message,
                                           log_entry->has_children,
                                           invalid_revnum, revprop_count));

  /* send LOG_ENTRY->REVPROPS */
  FUNC0(FUNC5(conn, scratch_pool));
  if (revprop_count)
    FUNC0(FUNC8(conn, scratch_pool,
                                       log_entry->revprops));
  FUNC0(FUNC4(conn, scratch_pool));

  /* send LOG_ENTRY members that were added in later SVN releases */
  FUNC0(FUNC6(conn, scratch_pool,
                                    log_entry->subtractive_merge));
  FUNC0(FUNC4(conn, scratch_pool));

  if (log_entry->has_children)
    b->stack_depth++;

  return SVN_NO_ERROR;
}