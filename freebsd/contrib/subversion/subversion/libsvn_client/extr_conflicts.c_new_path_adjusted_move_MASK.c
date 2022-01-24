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
typedef  int /*<<< orphan*/  svn_node_kind_t ;
struct repos_move_info {int /*<<< orphan*/  node_kind; int /*<<< orphan*/  copyfrom_rev; int /*<<< orphan*/  rev_author; int /*<<< orphan*/  rev; void* moved_to_repos_relpath; void* moved_from_repos_relpath; } ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 struct repos_move_info* FUNC0 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 void* FUNC2 (void*,char const*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static struct repos_move_info *
FUNC3(struct repos_move_info *move,
                       const char *moved_along_relpath,
                       svn_node_kind_t moved_along_node_kind,
                       apr_pool_t *result_pool)
{
  struct repos_move_info *new_move;

  new_move = FUNC0(result_pool, sizeof(*new_move));
  new_move->moved_from_repos_relpath =
    FUNC2(move->moved_from_repos_relpath, moved_along_relpath,
                     result_pool);
  new_move->moved_to_repos_relpath =
    FUNC2(move->moved_to_repos_relpath, moved_along_relpath,
                     result_pool);
  new_move->rev = move->rev;
  new_move->rev_author = FUNC1(result_pool, move->rev_author);
  new_move->copyfrom_rev = move->copyfrom_rev;
  new_move->node_kind = moved_along_node_kind;
  /* Ignore prev and next pointers. Caller will set them if needed. */

  return new_move;
}