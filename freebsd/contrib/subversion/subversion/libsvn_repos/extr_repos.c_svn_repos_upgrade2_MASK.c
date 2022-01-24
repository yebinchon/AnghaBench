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
struct TYPE_7__ {int /*<<< orphan*/  db_path; int /*<<< orphan*/  path; } ;
typedef  TYPE_1__ svn_repos_t ;
struct TYPE_8__ {int /*<<< orphan*/  action; } ;
typedef  TYPE_2__ svn_repos_notify_t ;
typedef  int /*<<< orphan*/  (* svn_repos_notify_func_t ) (void*,TYPE_2__*,int /*<<< orphan*/ *) ;
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  int /*<<< orphan*/  svn_boolean_t ;
struct fs_upgrade_notify_baton_t {void* notify_baton; int /*<<< orphan*/  (* notify_func ) (void*,TYPE_2__*,int /*<<< orphan*/ *) ;} ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/  SVN_REPOS__FORMAT ; 
 int SVN_REPOS__FORMAT_NUMBER ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/ * fs_upgrade_notify ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__**,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 char* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct fs_upgrade_notify_baton_t*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int*,char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (char const*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 TYPE_2__* FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  svn_repos_notify_mutex_acquired ; 
 int /*<<< orphan*/  svn_repos_notify_upgrade_start ; 

svn_error_t *
FUNC9(const char *path,
                   svn_boolean_t nonblocking,
                   svn_repos_notify_func_t notify_func,
                   void *notify_baton,
                   apr_pool_t *pool)
{
  svn_repos_t *repos;
  const char *format_path;
  int format;
  apr_pool_t *subpool = FUNC6(pool);

  struct fs_upgrade_notify_baton_t fs_notify_baton;
  fs_notify_baton.notify_func = notify_func;
  fs_notify_baton.notify_baton = notify_baton;

  /* Fetch a repository object; for the Berkeley DB backend, it is
     initialized with an EXCLUSIVE lock on the database.  This will at
     least prevent others from trying to read or write to it while we
     run recovery. (Other backends should do their own locking; see
     lock_repos.) */
  FUNC0(FUNC1(&repos, path, TRUE, nonblocking, FALSE, NULL, subpool,
                    subpool));

  if (notify_func)
    {
      /* We notify *twice* here, because there are two different logistical
         actions occuring. */
      svn_repos_notify_t *notify = FUNC8(
                                    svn_repos_notify_mutex_acquired, subpool);
      notify_func(notify_baton, notify, subpool);

      notify->action = svn_repos_notify_upgrade_start;
      notify_func(notify_baton, notify, subpool);
    }

  /* Try to overwrite with its own contents.  We do this only to
     verify that we can, because we don't want to actually bump the
     format of the repository until our underlying filesystem claims
     to have been upgraded correctly. */
  format_path = FUNC2(repos->path, SVN_REPOS__FORMAT, subpool);
  FUNC0(FUNC4(&format, format_path, subpool));
  FUNC0(FUNC5(format_path, format, subpool));

  /* Try to upgrade the filesystem. */
  FUNC0(FUNC3(repos->db_path,
                          notify_func ? fs_upgrade_notify : NULL,
                          &fs_notify_baton, NULL, NULL, subpool));

  /* Now overwrite our format file with the latest version. */
  FUNC0(FUNC5(format_path, SVN_REPOS__FORMAT_NUMBER,
                                    subpool));

  /* Close shop and free the subpool, to release the exclusive lock. */
  FUNC7(subpool);

  return SVN_NO_ERROR;
}