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
typedef  scalar_t__ svn_revnum_t ;
typedef  int /*<<< orphan*/  svn_node_kind_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
struct dump_edit_baton {int /*<<< orphan*/  ra_session; scalar_t__ current_revision; } ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char const*,scalar_t__,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static svn_error_t *
FUNC3(svn_node_kind_t *kind,
                void *baton,
                const char *path,
                svn_revnum_t base_revision,
                apr_pool_t *scratch_pool)
{
  struct dump_edit_baton *eb = baton;

  if (path[0] == '/')
    path += 1;

  if (! FUNC1(base_revision))
    base_revision = eb->current_revision - 1;

  FUNC0(FUNC2(eb->ra_session, path, base_revision, kind,
                            scratch_pool));

  return SVN_NO_ERROR;
}