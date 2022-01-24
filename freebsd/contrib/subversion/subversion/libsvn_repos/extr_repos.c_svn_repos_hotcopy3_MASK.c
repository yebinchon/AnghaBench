#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_17__   TYPE_2__ ;
typedef  struct TYPE_16__   TYPE_1__ ;

/* Type definitions */
struct TYPE_16__ {int /*<<< orphan*/  format; int /*<<< orphan*/  path; int /*<<< orphan*/  db_path; int /*<<< orphan*/  fs_type; } ;
typedef  TYPE_1__ svn_repos_t ;
typedef  scalar_t__ svn_repos_notify_func_t ;
typedef  int /*<<< orphan*/ * svn_fs_hotcopy_notify_t ;
struct TYPE_17__ {scalar_t__ apr_err; } ;
typedef  TYPE_2__ svn_error_t ;
typedef  int /*<<< orphan*/  svn_cancel_func_t ;
typedef  int /*<<< orphan*/  svn_boolean_t ;
struct hotcopy_ctx_t {char const* dest; void* cancel_baton; int /*<<< orphan*/  cancel_func; int /*<<< orphan*/  incremental; int /*<<< orphan*/  src_len; } ;
struct fs_hotcopy_notify_baton_t {void* notify_baton; scalar_t__ notify_func; } ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 int /*<<< orphan*/  APR_OS_DEFAULT ; 
 scalar_t__ FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ SVN_ERR_DIR_NOT_EMPTY ; 
 int /*<<< orphan*/  SVN_ERR_INCORRECT_PARAMS ; 
 int /*<<< orphan*/  SVN_REPOS__FORMAT ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 TYPE_2__* FUNC3 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC4 (char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * fs_hotcopy_notify ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__**,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  hotcopy_structure ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (char const*,char const*) ; 
 int /*<<< orphan*/  FUNC9 (char const*) ; 
 int /*<<< orphan*/  FUNC10 (char const**,char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_2__*) ; 
 TYPE_2__* FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC14 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct fs_hotcopy_notify_baton_t*,int /*<<< orphan*/ ,void*,int /*<<< orphan*/ *) ; 
 TYPE_2__* FUNC16 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct hotcopy_ctx_t*,int /*<<< orphan*/ *) ; 
 TYPE_2__* FUNC18 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

svn_error_t *
FUNC19(const char *src_path,
                   const char *dst_path,
                   svn_boolean_t clean_logs,
                   svn_boolean_t incremental,
                   svn_repos_notify_func_t notify_func,
                   void *notify_baton,
                   svn_cancel_func_t cancel_func,
                   void *cancel_baton,
                   apr_pool_t *scratch_pool)
{
  svn_fs_hotcopy_notify_t fs_notify_func;
  struct fs_hotcopy_notify_baton_t fs_notify_baton;
  struct hotcopy_ctx_t hotcopy_context;
  const char *src_abspath;
  const char *dst_abspath;
  svn_repos_t *src_repos;
  svn_repos_t *dst_repos;
  svn_error_t *err;

  FUNC1(FUNC10(&src_abspath, src_path, scratch_pool));
  FUNC1(FUNC10(&dst_abspath, dst_path, scratch_pool));
  if (FUNC8(src_abspath, dst_abspath) == 0)
    return FUNC13(SVN_ERR_INCORRECT_PARAMS, NULL,
                             FUNC2("Hotcopy source and destination are equal"));

  /* Try to open original repository */
  FUNC1(FUNC5(&src_repos, src_abspath,
                    FALSE, FALSE,
                    FALSE,    /* don't try to open the db yet. */
                    NULL,
                    scratch_pool, scratch_pool));

  /* If we are going to clean logs, then get an exclusive lock on
     db-logs.lock, to ensure that no one else will work with logs.

     If we are just copying, then get a shared lock to ensure that
     no one else will clean logs while we copying them */

  FUNC1(FUNC6(src_repos, clean_logs, scratch_pool));

  /* Copy the repository to a new path, with exception of
     specially handled directories */

  hotcopy_context.dest = dst_abspath;
  hotcopy_context.src_len = FUNC9(src_abspath);
  hotcopy_context.incremental = incremental;
  hotcopy_context.cancel_func = cancel_func;
  hotcopy_context.cancel_baton = cancel_baton;
  FUNC1(FUNC17(src_abspath,
                           0,
                           hotcopy_structure,
                           &hotcopy_context,
                           scratch_pool));

  /* Prepare dst_repos object so that we may create locks,
     so that we may open repository */

  dst_repos = FUNC4(dst_abspath, scratch_pool);
  dst_repos->fs_type = src_repos->fs_type;
  dst_repos->format = src_repos->format;

  err = FUNC3(dst_repos, scratch_pool);
  if (err)
    {
      if (incremental && err->apr_err == SVN_ERR_DIR_NOT_EMPTY)
        FUNC12(err);
      else
        return FUNC14(err);
    }

  err = FUNC16(dst_repos->db_path, APR_OS_DEFAULT,
                             scratch_pool);
  if (err)
    {
      if (incremental && FUNC0(err->apr_err))
        FUNC12(err);
      else
        return FUNC14(err);
    }

  /* Exclusively lock the new repository.
     No one should be accessing it at the moment */
  FUNC1(FUNC7(dst_repos, TRUE, FALSE, scratch_pool));

  fs_notify_func = notify_func ? fs_hotcopy_notify : NULL;
  fs_notify_baton.notify_func = notify_func;
  fs_notify_baton.notify_baton = notify_baton;

  FUNC1(FUNC15(src_repos->db_path, dst_repos->db_path,
                          clean_logs, incremental,
                          fs_notify_func, &fs_notify_baton,
                          cancel_func, cancel_baton, scratch_pool));

  /* Destination repository is ready.  Stamp it with a format number. */
  return FUNC18
          (FUNC11(dst_repos->path, SVN_REPOS__FORMAT, scratch_pool),
           dst_repos->format, scratch_pool);
}