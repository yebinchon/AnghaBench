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
typedef  int /*<<< orphan*/  svn_error_t ;
struct dir_baton {int /*<<< orphan*/  pool; int /*<<< orphan*/  deleted_entries; int /*<<< orphan*/  eb; } ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct dir_baton*) ; 

__attribute__((used)) static svn_error_t *
FUNC4(const char *path,
             svn_revnum_t revision,
             void *parent_baton,
             apr_pool_t *pool)
{
  struct dir_baton *pb = parent_baton;

  FUNC0(FUNC2(pb->eb, pool));

  /* We don't dump this deletion immediate.  Rather, we add this path
     to the deleted_entries of the parent directory baton.  That way,
     we can tell (later) an addition from a replacement.  All the real
     deletions get handled in close_directory().  */
  FUNC3(pb->deleted_entries, FUNC1(pb->pool, path), pb);

  return SVN_NO_ERROR;
}