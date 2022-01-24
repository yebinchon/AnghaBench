#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {TYPE_3__* priv; } ;
typedef  TYPE_2__ svn_ra_session_t ;
struct TYPE_7__ {int /*<<< orphan*/  repos; TYPE_1__* fs_path; } ;
typedef  TYPE_3__ svn_ra_local__session_baton_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  int /*<<< orphan*/  svn_depth_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;
typedef  int /*<<< orphan*/  apr_hash_t ;
struct TYPE_5__ {int /*<<< orphan*/  data; } ;

/* Variables and functions */
 char* FUNC0 (int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static svn_error_t *
FUNC2(svn_ra_session_t *session,
                        apr_hash_t **locks,
                        const char *path,
                        svn_depth_t depth,
                        apr_pool_t *pool)
{
  svn_ra_local__session_baton_t *sess = session->priv;
  const char *abs_path = FUNC0(sess->fs_path->data, path, pool);

  /* Kinda silly to call the repos wrapper, since we have no authz
     func to give it.  But heck, why not. */
  return FUNC1(locks, sess->repos, abs_path, depth,
                                 NULL, NULL, pool);
}