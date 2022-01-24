#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {char const* message; struct TYPE_7__* child; } ;
typedef  TYPE_1__ svn_error_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 int /*<<< orphan*/  SVN_ERR_REPOS_POST_COMMIT_HOOK_FAILED ; 
 char const* FUNC0 (char*) ; 
 char* FUNC1 (int /*<<< orphan*/ *,char const*,char const*,...) ; 
 char const* FUNC2 (int /*<<< orphan*/ *,char const*) ; 
 TYPE_1__* FUNC3 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC4 (TYPE_1__*) ; 

const char *
FUNC5(svn_error_t *err,
                                 apr_pool_t *pool)
{
  svn_error_t *hook_err1, *hook_err2;
  const char *msg;

  if (! err)
    return FUNC0("(no error)");

  err = FUNC4(err);

  /* hook_err1 is the SVN_ERR_REPOS_POST_COMMIT_HOOK_FAILED wrapped
     error from the post-commit script, if any, and hook_err2 should
     be the original error, but be defensive and handle a case where
     SVN_ERR_REPOS_POST_COMMIT_HOOK_FAILED doesn't wrap an error. */
  hook_err1 = FUNC3(err, SVN_ERR_REPOS_POST_COMMIT_HOOK_FAILED);
  if (hook_err1 && hook_err1->child)
    hook_err2 = hook_err1->child;
  else
    hook_err2 = hook_err1;

  /* This implementation counts on svn_repos_fs_commit_txn() and
     libsvn_repos/commit.c:complete_cb() returning
     svn_fs_commit_txn() as the parent error with a child
     SVN_ERR_REPOS_POST_COMMIT_HOOK_FAILED error.  If the parent error
     is SVN_ERR_REPOS_POST_COMMIT_HOOK_FAILED then there was no error
     in svn_fs_commit_txn().

     The post-commit hook error message is already self describing, so
     it can be dropped into an error message without any additional
     text. */
  if (hook_err1)
    {
      if (err == hook_err1)
        {
          if (hook_err2->message)
            msg = FUNC2(pool, hook_err2->message);
          else
            msg = FUNC0("post-commit hook failed with no error message.");
        }
      else
        {
          msg = hook_err2->message
                  ? FUNC2(pool, hook_err2->message)
                  : FUNC0("post-commit hook failed with no error message.");
          msg = FUNC1(
                  pool,
                  FUNC0("post commit FS processing had error:\n%s\n%s"),
                  err->message ? err->message : FUNC0("(no error message)"),
                  msg);
        }
    }
  else
    {
      msg = FUNC1(pool,
                         FUNC0("post commit FS processing had error:\n%s"),
                         err->message ? err->message
                                      : FUNC0("(no error message)"));
    }

  return msg;
}