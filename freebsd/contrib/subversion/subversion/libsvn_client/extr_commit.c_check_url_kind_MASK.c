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
struct check_url_kind_baton {int /*<<< orphan*/  session; int /*<<< orphan*/  pool; int /*<<< orphan*/  repos_root_url; int /*<<< orphan*/  ctx; } ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char const*) ; 

__attribute__((used)) static svn_error_t *
FUNC7(void *baton,
               svn_node_kind_t *kind,
               const char *url,
               svn_revnum_t revision,
               apr_pool_t *scratch_pool)
{
  struct check_url_kind_baton *cukb = baton;

  /* If we don't have a session or can't use the session, get one */
  if (!cukb->session || !FUNC6(cukb->repos_root_url, url))
    {
      FUNC0(FUNC1(&cukb->session, url, NULL, cukb->ctx,
                                          cukb->pool, scratch_pool));
      FUNC0(FUNC4(cukb->session, &cukb->repos_root_url,
                                     cukb->pool));
    }
  else
    FUNC0(FUNC5(cukb->session, url, scratch_pool));

  return FUNC2(
                FUNC3(cukb->session, "", revision,
                                  kind, scratch_pool));
}