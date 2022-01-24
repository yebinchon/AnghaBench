#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  old_revision; } ;
typedef  TYPE_1__ svn_repos_notify_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
struct revision_baton {int /*<<< orphan*/  rev; scalar_t__ skipped; } ;
struct parse_baton {int /*<<< orphan*/  notify_pool; int /*<<< orphan*/  notify_baton; int /*<<< orphan*/  (* notify_func ) (int /*<<< orphan*/ ,TYPE_1__*,int /*<<< orphan*/ ) ;} ;
typedef  int /*<<< orphan*/  apr_pool_t ;
typedef  int /*<<< orphan*/  apr_hash_t ;

/* Variables and functions */
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 struct revision_baton* FUNC0 (int /*<<< orphan*/ *,struct parse_baton*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  svn_repos_notify_load_skipped_rev ; 

__attribute__((used)) static svn_error_t *
FUNC4(void **revision_baton,
                             apr_hash_t *headers,
                             void *parse_baton,
                             apr_pool_t *pool)
{
  struct parse_baton *pb = parse_baton;
  struct revision_baton *rb;

  rb = FUNC0(headers, pb, pool);

  /* If we're skipping this revision, try to notify someone. */
  if (rb->skipped && pb->notify_func)
    {
      /* ### TODO: Use proper scratch pool instead of pb->notify_pool */
      svn_repos_notify_t *notify = FUNC3(
                                        svn_repos_notify_load_skipped_rev,
                                        pb->notify_pool);

      notify->old_revision = rb->rev;
      pb->notify_func(pb->notify_baton, notify, pb->notify_pool);
      FUNC2(pb->notify_pool);
    }

  /* If we're parsing revision 0, only the revision props are (possibly)
     interesting to us: when loading the stream into an empty
     filesystem, then we want new filesystem's revision 0 to have the
     same props.  Otherwise, we just ignore revision 0 in the stream. */

  *revision_baton = rb;
  return SVN_NO_ERROR;
}