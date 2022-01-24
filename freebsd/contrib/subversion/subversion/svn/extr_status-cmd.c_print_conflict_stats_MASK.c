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
struct status_baton {scalar_t__ text_conflicts; scalar_t__ prop_conflicts; scalar_t__ tree_conflicts; } ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 char* FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,char*) ; 

__attribute__((used)) static svn_error_t *
FUNC3(struct status_baton *sb, apr_pool_t *pool)
{
  if (sb->text_conflicts > 0 || sb->prop_conflicts > 0 ||
      sb->tree_conflicts > 0)
      FUNC0(FUNC2(pool, "%s", FUNC1("Summary of conflicts:\n")));

  if (sb->text_conflicts > 0)
    FUNC0(FUNC2
      (pool, FUNC1("  Text conflicts: %u\n"), sb->text_conflicts));

  if (sb->prop_conflicts > 0)
    FUNC0(FUNC2
      (pool, FUNC1("  Property conflicts: %u\n"), sb->prop_conflicts));

  if (sb->tree_conflicts > 0)
    FUNC0(FUNC2
      (pool, FUNC1("  Tree conflicts: %u\n"), sb->tree_conflicts));

  return SVN_NO_ERROR;
}