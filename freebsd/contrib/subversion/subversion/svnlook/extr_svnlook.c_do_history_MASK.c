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
struct TYPE_3__ {int /*<<< orphan*/  rev_id; int /*<<< orphan*/  fs; int /*<<< orphan*/  limit; scalar_t__ show_ids; } ;
typedef  TYPE_1__ svnlook_ctxt_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
struct print_history_baton {scalar_t__ count; int /*<<< orphan*/  limit; scalar_t__ show_ids; int /*<<< orphan*/  fs; } ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  print_history ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ ,struct print_history_baton*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static svn_error_t *
FUNC4(svnlook_ctxt_t *c,
           const char *path,
           apr_pool_t *pool)
{
  struct print_history_baton args;

  if (c->show_ids)
    {
      FUNC0(FUNC2(pool, FUNC1("REVISION   PATH <ID>\n"
                                         "--------   ---------\n")));
    }
  else
    {
      FUNC0(FUNC2(pool, FUNC1("REVISION   PATH\n"
                                         "--------   ----\n")));
    }

  /* Call our history crawler.  We want the whole lifetime of the path
     (prior to the user-supplied revision, of course), across all
     copies. */
  args.fs = c->fs;
  args.show_ids = c->show_ids;
  args.limit = c->limit;
  args.count = 0;
  FUNC0(FUNC3(c->fs, path, print_history, &args,
                             NULL, NULL, 0, c->rev_id, TRUE, pool));
  return SVN_NO_ERROR;
}