#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int /*<<< orphan*/  db_path; } ;
typedef  TYPE_1__ svn_repos_t ;
struct TYPE_8__ {int /*<<< orphan*/  action; } ;
typedef  TYPE_2__ svn_repos_notify_t ;
typedef  int /*<<< orphan*/  (* svn_repos_notify_func_t ) (void*,TYPE_2__*,int /*<<< orphan*/ *) ;
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  int /*<<< orphan*/  svn_cancel_func_t ;
typedef  int /*<<< orphan*/  svn_boolean_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__**,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,void*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 TYPE_2__* FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  svn_repos_notify_mutex_acquired ; 
 int /*<<< orphan*/  svn_repos_notify_recover_start ; 

svn_error_t *
FUNC6(const char *path,
                   svn_boolean_t nonblocking,
                   svn_repos_notify_func_t notify_func,
                   void *notify_baton,
                   svn_cancel_func_t cancel_func,
                   void * cancel_baton,
                   apr_pool_t *pool)
{
  svn_repos_t *repos;
  apr_pool_t *subpool = FUNC3(pool);

  /* Fetch a repository object; for the Berkeley DB backend, it is
     initialized with an EXCLUSIVE lock on the database.  This will at
     least prevent others from trying to read or write to it while we
     run recovery. (Other backends should do their own locking; see
     lock_repos.) */
  FUNC0(FUNC1(&repos, path, TRUE, nonblocking,
                    FALSE,    /* don't try to open the db yet. */
                    NULL,
                    subpool, subpool));

  if (notify_func)
    {
      /* We notify *twice* here, because there are two different logistical
         actions occuring. */
      svn_repos_notify_t *notify = FUNC5(
                                    svn_repos_notify_mutex_acquired, subpool);
      notify_func(notify_baton, notify, subpool);

      notify->action = svn_repos_notify_recover_start;
      notify_func(notify_baton, notify, subpool);
    }

  /* Recover the database to a consistent state. */
  FUNC0(FUNC2(repos->db_path, cancel_func, cancel_baton, subpool));

  /* Close shop and free the subpool, to release the exclusive lock. */
  FUNC4(subpool);

  return SVN_NO_ERROR;
}