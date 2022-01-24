#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  fs; } ;
typedef  TYPE_1__ svnlook_ctxt_t ;
struct TYPE_6__ {char* comment; int /*<<< orphan*/  owner; int /*<<< orphan*/  token; scalar_t__ expiration_date; scalar_t__ creation_date; } ;
typedef  TYPE_2__ svn_lock_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
struct svnlook_opt_state {int /*<<< orphan*/  arg1; } ;
typedef  int /*<<< orphan*/  apr_pool_t ;
typedef  int /*<<< orphan*/  apr_getopt_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (struct svnlook_opt_state*,int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__**,struct svnlook_opt_state*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,...) ; 
 int FUNC6 (char*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__**,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 char* FUNC8 (scalar_t__,int /*<<< orphan*/ *) ; 

__attribute__((used)) static svn_error_t *
FUNC9(apr_getopt_t *os, void *baton, apr_pool_t *pool)
{
  struct svnlook_opt_state *opt_state = baton;
  svnlook_ctxt_t *c;
  svn_lock_t *lock;

  FUNC1(FUNC3(opt_state, 1));

  FUNC1(FUNC4(&c, opt_state, pool));

  FUNC1(FUNC7(&lock, c->fs, opt_state->arg1, pool));

  if (lock)
    {
      const char *cr_date, *exp_date = "";
      int comment_lines = 0;

      cr_date = FUNC8(lock->creation_date, pool);

      if (lock->expiration_date)
        exp_date = FUNC8(lock->expiration_date, pool);

      if (lock->comment)
        comment_lines = FUNC6(lock->comment) + 1;

      FUNC1(FUNC5(pool, FUNC2("UUID Token: %s\n"), lock->token));
      FUNC1(FUNC5(pool, FUNC2("Owner: %s\n"), lock->owner));
      FUNC1(FUNC5(pool, FUNC2("Created: %s\n"), cr_date));
      FUNC1(FUNC5(pool, FUNC2("Expires: %s\n"), exp_date));
      FUNC1(FUNC5(pool,
                                 FUNC0("Comment (%i line):\n%s\n",
                                    "Comment (%i lines):\n%s\n",
                                    comment_lines),
                                 comment_lines,
                                 lock->comment ? lock->comment : ""));
    }

  return SVN_NO_ERROR;
}