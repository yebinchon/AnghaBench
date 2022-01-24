#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  repos_node_status; int /*<<< orphan*/  changelist; } ;
typedef  TYPE_1__ svn_wc_status3_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  int /*<<< orphan*/  svn_client_status_t ;
struct status_baton {int /*<<< orphan*/  real_status_baton; int /*<<< orphan*/ * (* real_status_func ) (int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ;int /*<<< orphan*/  wc_ctx; scalar_t__ deleted_in_repos; scalar_t__ changelist_hash; scalar_t__ anchor_abspath; int /*<<< orphan*/  anchor_relpath; } ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,char const*,TYPE_1__ const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 char* FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__,char const*) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC6 (TYPE_1__ const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  svn_wc_status_deleted ; 

__attribute__((used)) static svn_error_t *
FUNC7(void *baton,
             const char *local_abspath,
             const svn_wc_status3_t *status,
             apr_pool_t *scratch_pool)
{
  struct status_baton *sb = baton;
  const char *path = local_abspath;
  svn_client_status_t *cst;

  if (sb->anchor_abspath)
    path = FUNC3(sb->anchor_relpath,
                           FUNC4(sb->anchor_abspath, path),
                           scratch_pool);

  /* If the status item has an entry, but doesn't belong to one of the
     changelists our caller is interested in, we filter out this status
     transmission.  */
  if (sb->changelist_hash
      && (! status->changelist
          || ! FUNC5(sb->changelist_hash, status->changelist)))
    {
      return SVN_NO_ERROR;
    }

  /* If we know that the target was deleted in HEAD of the repository,
     we need to note that fact in all the status structures that come
     through here. */
  if (sb->deleted_in_repos)
    {
      svn_wc_status3_t *new_status = FUNC6(status, scratch_pool);
      new_status->repos_node_status = svn_wc_status_deleted;
      status = new_status;
    }

  FUNC0(FUNC2(&cst, sb->wc_ctx, local_abspath, status,
                                    scratch_pool, scratch_pool));

  /* Call the real status function/baton. */
  return sb->real_status_func(sb->real_status_baton, path, cst,
                              scratch_pool);
}