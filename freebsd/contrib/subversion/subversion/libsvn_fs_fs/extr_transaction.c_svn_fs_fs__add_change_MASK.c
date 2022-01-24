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
typedef  int /*<<< orphan*/  svn_revnum_t ;
typedef  int /*<<< orphan*/  svn_node_kind_t ;
typedef  int /*<<< orphan*/  svn_fs_t ;
typedef  int /*<<< orphan*/  svn_fs_path_change_kind_t ;
struct TYPE_4__ {int /*<<< orphan*/  copyfrom_path; int /*<<< orphan*/  copyfrom_rev; int /*<<< orphan*/  copyfrom_known; int /*<<< orphan*/  node_kind; int /*<<< orphan*/  mergeinfo_mod; void* prop_mod; void* text_mod; } ;
typedef  TYPE_1__ svn_fs_path_change2_t ;
typedef  int /*<<< orphan*/  svn_fs_id_t ;
typedef  int /*<<< orphan*/  svn_fs_fs__id_part_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  void* svn_boolean_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;
typedef  int /*<<< orphan*/  apr_hash_t ;
typedef  int /*<<< orphan*/  apr_file_t ;

/* Variables and functions */
 int APR_APPEND ; 
 int APR_CREATE ; 
 int /*<<< orphan*/  APR_OS_DEFAULT ; 
 int APR_WRITE ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char const*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC4 (int /*<<< orphan*/  const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,char const*,TYPE_1__*) ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  svn_tristate_false ; 
 int /*<<< orphan*/  svn_tristate_true ; 

svn_error_t *
FUNC10(svn_fs_t *fs,
                      const svn_fs_fs__id_part_t *txn_id,
                      const char *path,
                      const svn_fs_id_t *id,
                      svn_fs_path_change_kind_t change_kind,
                      svn_boolean_t text_mod,
                      svn_boolean_t prop_mod,
                      svn_boolean_t mergeinfo_mod,
                      svn_node_kind_t node_kind,
                      svn_revnum_t copyfrom_rev,
                      const char *copyfrom_path,
                      apr_pool_t *pool)
{
  apr_file_t *file;
  svn_fs_path_change2_t *change;
  apr_hash_t *changes = FUNC1(pool);

  /* Not using APR_BUFFERED to append change in one atomic write operation. */
  FUNC0(FUNC8(&file, FUNC3(fs, txn_id, pool),
                           APR_APPEND | APR_WRITE | APR_CREATE,
                           APR_OS_DEFAULT, pool));

  change = FUNC4(id, change_kind, pool);
  change->text_mod = text_mod;
  change->prop_mod = prop_mod;
  change->mergeinfo_mod = mergeinfo_mod
                        ? svn_tristate_true
                        : svn_tristate_false;
  change->node_kind = node_kind;
  change->copyfrom_known = TRUE;
  change->copyfrom_rev = copyfrom_rev;
  if (copyfrom_path)
    change->copyfrom_path = FUNC2(pool, copyfrom_path);

  FUNC6(changes, path, change);
  FUNC0(FUNC5(FUNC9(file, TRUE, pool),
                                   fs, changes, FALSE, pool));

  return FUNC7(file, pool);
}