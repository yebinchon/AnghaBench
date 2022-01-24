#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  svn_revnum_t ;
typedef  int /*<<< orphan*/  (* svn_repos_authz_func_t ) (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,void*,int /*<<< orphan*/ *) ;
typedef  int /*<<< orphan*/  svn_fs_t ;
typedef  int /*<<< orphan*/  svn_fs_root_t ;
typedef  int /*<<< orphan*/  svn_fs_history_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  int /*<<< orphan*/  svn_boolean_t ;
struct path_info {int /*<<< orphan*/ * newpool; int /*<<< orphan*/ * oldpool; int /*<<< orphan*/ * hist; void* done; TYPE_1__* path; int /*<<< orphan*/  history_rev; scalar_t__ first_time; } ;
typedef  int /*<<< orphan*/  apr_pool_t ;
struct TYPE_2__ {int /*<<< orphan*/  data; } ;

/* Variables and functions */
 scalar_t__ FALSE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 void* TRUE ; 
 int /*<<< orphan*/  FUNC1 (char const**,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ **,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ **,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ **,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*,char const*) ; 

__attribute__((used)) static svn_error_t *
FUNC9(struct path_info *info,
            svn_fs_t *fs,
            svn_boolean_t strict,
            svn_repos_authz_func_t authz_read_func,
            void *authz_read_baton,
            svn_revnum_t start,
            apr_pool_t *result_pool,
            apr_pool_t *scratch_pool)
{
  svn_fs_root_t *history_root = NULL;
  svn_fs_history_t *hist;
  apr_pool_t *subpool;
  const char *path;

  if (info->hist)
    {
      subpool = info->newpool;

      FUNC0(FUNC2(&info->hist, info->hist, ! strict,
                                   subpool, scratch_pool));

      hist = info->hist;
    }
  else
    {
      subpool = FUNC6(result_pool);

      /* Open the history located at the last rev we were at. */
      FUNC0(FUNC4(&history_root, fs, info->history_rev,
                                   subpool));

      FUNC0(FUNC3(&hist, history_root, info->path->data,
                                   subpool, scratch_pool));

      FUNC0(FUNC2(&hist, hist, ! strict, subpool,
                                   scratch_pool));

      if (info->first_time)
        info->first_time = FALSE;
      else
        FUNC0(FUNC2(&hist, hist, ! strict, subpool,
                                     scratch_pool));
    }

  if (! hist)
    {
      FUNC7(subpool);
      if (info->oldpool)
        FUNC7(info->oldpool);
      info->done = TRUE;
      return SVN_NO_ERROR;
    }

  /* Fetch the location information for this history step. */
  FUNC0(FUNC1(&path, &info->history_rev,
                                  hist, subpool));

  FUNC8(info->path, path);

  /* If this history item predates our START revision then
     don't fetch any more for this path. */
  if (info->history_rev < start)
    {
      FUNC7(subpool);
      if (info->oldpool)
        FUNC7(info->oldpool);
      info->done = TRUE;
      return SVN_NO_ERROR;
    }

  /* Is the history item readable?  If not, done with path. */
  if (authz_read_func)
    {
      svn_boolean_t readable;
      FUNC0(FUNC4(&history_root, fs,
                                   info->history_rev,
                                   scratch_pool));
      FUNC0(authz_read_func(&readable, history_root,
                              info->path->data,
                              authz_read_baton,
                              scratch_pool));
      if (! readable)
        info->done = TRUE;
    }

  if (! info->hist)
    {
      FUNC7(subpool);
    }
  else
    {
      apr_pool_t *temppool = info->oldpool;
      info->oldpool = info->newpool;
      FUNC5(temppool);
      info->newpool = temppool;
    }

  return SVN_NO_ERROR;
}