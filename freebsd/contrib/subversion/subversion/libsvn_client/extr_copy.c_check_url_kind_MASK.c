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
typedef  int /*<<< orphan*/  svn_revnum_t ;
typedef  int /*<<< orphan*/  svn_node_kind_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
struct check_url_kind_baton {int /*<<< orphan*/  session; int /*<<< orphan*/  should_reparent; int /*<<< orphan*/  repos_root_url; } ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  svn_node_none ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char const*) ; 

__attribute__((used)) static svn_error_t *
FUNC4(void *baton,
               svn_node_kind_t *kind,
               const char *url,
               svn_revnum_t revision,
               apr_pool_t *scratch_pool)
{
  struct check_url_kind_baton *cukb = baton;

  /* If we don't have a session or can't use the session, get one */
  if (!FUNC3(cukb->repos_root_url, url))
    *kind = svn_node_none;
  else
    {
      cukb->should_reparent = TRUE;

      FUNC0(FUNC2(cukb->session, url, scratch_pool));

      FUNC0(FUNC1(cukb->session, "", revision,
                                kind, scratch_pool));
    }

  return SVN_NO_ERROR;
}