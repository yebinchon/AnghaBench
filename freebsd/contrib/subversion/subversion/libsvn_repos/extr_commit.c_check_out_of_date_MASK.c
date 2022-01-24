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
struct edit_baton {int /*<<< orphan*/  txn; } ;

/* Variables and functions */
 int /*<<< orphan*/  SVN_ERR_FS_NO_SUCH_REVISION ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/ * FUNC1 (char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static svn_error_t *
FUNC4(struct edit_baton *eb,
                  const char *path,
                  svn_node_kind_t kind,
                  svn_revnum_t base_rev,
                  svn_revnum_t created_rev)
{
  if (base_rev < created_rev)
    {
      return FUNC1(path, kind);
    }
  else if (base_rev > created_rev)
    {
      if (base_rev > FUNC3(eb->txn))
        return FUNC2(SVN_ERR_FS_NO_SUCH_REVISION, NULL, 
                                 FUNC0("No such revision %ld"),
                                 base_rev);
    }

  return SVN_NO_ERROR;
}