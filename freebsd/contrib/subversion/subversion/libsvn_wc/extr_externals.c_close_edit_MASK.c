#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  svn_error_t ;
struct edit_baton {int /*<<< orphan*/  notify_baton; int /*<<< orphan*/  notify_func; int /*<<< orphan*/ * target_revision; int /*<<< orphan*/  repos_uuid; int /*<<< orphan*/  repos_root_url; int /*<<< orphan*/  new_repos_relpath; int /*<<< orphan*/  local_abspath; int /*<<< orphan*/  db; int /*<<< orphan*/  iprops; int /*<<< orphan*/  file_closed; } ;
typedef  int /*<<< orphan*/  apr_pool_t ;
typedef  int /*<<< orphan*/  apr_hash_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  svn_depth_infinity ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static svn_error_t *
FUNC4(void *edit_baton,
           apr_pool_t *pool)
{
  struct edit_baton *eb = edit_baton;

  if (!eb->file_closed)
    {
      apr_hash_t *wcroot_iprops = NULL;
      /* The file wasn't updated, but its url or revision might have...
         e.g. switch between branches for relative externals.

         Just bump the information as that is just as expensive as
         investigating when we should and shouldn't update it...
         and avoid hard to debug edge cases */

      if (eb->iprops)
        {
          wcroot_iprops = FUNC1(pool);
          FUNC2(wcroot_iprops, eb->local_abspath, eb->iprops);
        }

      FUNC0(FUNC3(eb->db,
                                                       eb->local_abspath,
                                                       svn_depth_infinity,
                                                       eb->new_repos_relpath,
                                                       eb->repos_root_url,
                                                       eb->repos_uuid,
                                                       *eb->target_revision,
                                                       FUNC1(pool)
                                                       /* exclude_relpaths */,
                                                       wcroot_iprops,
                                                       TRUE /* empty update */,
                                                       eb->notify_func,
                                                       eb->notify_baton,
                                                       pool));
    }

  return SVN_NO_ERROR;
}