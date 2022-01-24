#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  (* svn_wc_status_func4_t ) (void*,char const*,TYPE_1__*,int /*<<< orphan*/ *) ;
struct TYPE_6__ {scalar_t__ conflicted; int /*<<< orphan*/  node_status; } ;
struct TYPE_7__ {TYPE_1__ s; } ;
typedef  TYPE_2__ svn_wc__internal_status_t ;
typedef  int /*<<< orphan*/  svn_io_dirent2_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  scalar_t__ svn_boolean_t ;
struct walk_status_baton {int /*<<< orphan*/  externals; int /*<<< orphan*/  db; } ;
typedef  int /*<<< orphan*/  apr_pool_t ;
typedef  int /*<<< orphan*/  apr_array_header_t ;

/* Variables and functions */
 scalar_t__ FALSE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__**,int /*<<< orphan*/ ,char const*,int /*<<< orphan*/  const*,scalar_t__,scalar_t__,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (void*,char const*,TYPE_1__*,int /*<<< orphan*/ *) ; 
 char* FUNC4 (char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (char const*,int /*<<< orphan*/  const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  svn_wc_status_external ; 

__attribute__((used)) static svn_error_t *
FUNC7(const struct walk_status_baton *wb,
                      const char *local_abspath,
                      const svn_io_dirent2_t *dirent,
                      svn_boolean_t tree_conflicted,
                      const apr_array_header_t *patterns,
                      svn_boolean_t no_ignore,
                      svn_wc_status_func4_t status_func,
                      void *status_baton,
                      apr_pool_t *scratch_pool)
{
  svn_boolean_t is_ignored;
  svn_boolean_t is_external;
  svn_wc__internal_status_t *status;
  const char *base_name = FUNC4(local_abspath, NULL);

  is_ignored = FUNC6(base_name, patterns, scratch_pool);
  FUNC0(FUNC1(&status,
                               wb->db, local_abspath,
                               dirent, tree_conflicted,
                               is_ignored,
                               scratch_pool, scratch_pool));

  is_external = FUNC2(wb->externals, local_abspath, scratch_pool);
  if (is_external)
    status->s.node_status = svn_wc_status_external;

  /* We can have a tree conflict on an unversioned path, i.e. an incoming
   * delete on a locally deleted path during an update. Don't ever ignore
   * those! */
  if (status->s.conflicted)
    is_ignored = FALSE;

  /* If we aren't ignoring it, or if it's an externals path, pass this
     entry to the status func. */
  if (no_ignore
      || !is_ignored
      || is_external)
    return FUNC5((*status_func)(status_baton, local_abspath,
                                          &status->s, scratch_pool));

  return SVN_NO_ERROR;
}