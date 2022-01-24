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
struct svn_wc__shim_fetch_baton_t {int /*<<< orphan*/  db; int /*<<< orphan*/  base_abspath; } ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/  TRUE ; 
 char* FUNC1 (int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

svn_error_t *
FUNC3(svn_node_kind_t *kind,
                        void *baton,
                        const char *path,
                        svn_revnum_t base_revision,
                        apr_pool_t *scratch_pool)
{
  struct svn_wc__shim_fetch_baton_t *sfb = baton;
  const char *local_abspath = FUNC1(sfb->base_abspath, path,
                                              scratch_pool);

  FUNC0(FUNC2(kind, sfb->db, local_abspath,
                               FALSE /* allow_missing */,
                               TRUE /* show_deleted */,
                               FALSE /* show_hidden */,
                               scratch_pool));

  return SVN_NO_ERROR;
}