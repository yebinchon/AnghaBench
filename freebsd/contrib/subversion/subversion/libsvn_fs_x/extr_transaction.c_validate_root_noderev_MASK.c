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
typedef  scalar_t__ svn_revnum_t ;
struct TYPE_4__ {int predecessor_count; } ;
typedef  TYPE_1__ svn_fs_x__noderev_t ;
typedef  int /*<<< orphan*/  svn_fs_x__id_t ;
typedef  int /*<<< orphan*/  svn_fs_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  SVN_ERR_FS_CORRUPT ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,scalar_t__,int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__**,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,scalar_t__) ; 

__attribute__((used)) static svn_error_t *
FUNC6(svn_fs_t *fs,
                      svn_fs_x__noderev_t *root_noderev,
                      svn_revnum_t rev,
                      apr_pool_t *scratch_pool)
{
  svn_revnum_t head_revnum = rev-1;
  int head_predecessor_count;

  FUNC1(rev > 0);

  /* Compute HEAD_PREDECESSOR_COUNT. */
  {
    svn_fs_x__id_t head_root_id;
    svn_fs_x__noderev_t *head_root_noderev;

    /* Get /@HEAD's noderev. */
    FUNC5(&head_root_id, head_revnum);
    FUNC0(FUNC4(&head_root_noderev, fs,
                                        &head_root_id, scratch_pool,
                                        scratch_pool));

    head_predecessor_count = head_root_noderev->predecessor_count;
  }

  /* Check that the root noderev's predecessor count equals REV.

     This kind of corruption was seen on svn.apache.org (both on
     the root noderev and on other fspaths' noderevs); see
     issue #4129.

     Normally (rev == root_noderev->predecessor_count), but here we
     use a more roundabout check that should only trigger on new instances
     of the corruption, rather than trigger on each and every new commit
     to a repository that has triggered the bug somewhere in its root
     noderev's history.
   */
  if ((root_noderev->predecessor_count - head_predecessor_count)
      != (rev - head_revnum))
    {
      return FUNC3(SVN_ERR_FS_CORRUPT, NULL,
                               FUNC2("predecessor count for "
                                 "the root node-revision is wrong: "
                                 "found (%d+%ld != %d), committing r%ld"),
                                 head_predecessor_count,
                                 rev - head_revnum, /* This is equal to 1. */
                                 root_noderev->predecessor_count,
                                 rev);
    }

  return SVN_NO_ERROR;
}