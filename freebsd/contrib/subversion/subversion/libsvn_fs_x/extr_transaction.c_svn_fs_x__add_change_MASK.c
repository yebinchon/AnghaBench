#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  svn_revnum_t ;
typedef  int /*<<< orphan*/  svn_node_kind_t ;
typedef  int /*<<< orphan*/  svn_fs_x__txn_id_t ;
struct TYPE_4__ {char const* data; int /*<<< orphan*/  len; } ;
struct TYPE_5__ {int /*<<< orphan*/  copyfrom_path; int /*<<< orphan*/  copyfrom_rev; int /*<<< orphan*/  copyfrom_known; int /*<<< orphan*/  node_kind; int /*<<< orphan*/  mergeinfo_mod; void* prop_mod; void* text_mod; int /*<<< orphan*/  change_kind; TYPE_1__ path; } ;
typedef  TYPE_2__ svn_fs_x__change_t ;
typedef  int /*<<< orphan*/  svn_fs_t ;
typedef  int /*<<< orphan*/  svn_fs_path_change_kind_t ;
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
 int /*<<< orphan*/  FUNC3 (char const*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,char const*,TYPE_2__*) ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  svn_tristate_false ; 
 int /*<<< orphan*/  svn_tristate_true ; 

svn_error_t *
FUNC10(svn_fs_t *fs,
                     svn_fs_x__txn_id_t txn_id,
                     const char *path,
                     svn_fs_path_change_kind_t change_kind,
                     svn_boolean_t text_mod,
                     svn_boolean_t prop_mod,
                     svn_boolean_t mergeinfo_mod,
                     svn_node_kind_t node_kind,
                     svn_revnum_t copyfrom_rev,
                     const char *copyfrom_path,
                     apr_pool_t *scratch_pool)
{
  apr_file_t *file;
  svn_fs_x__change_t change;
  apr_hash_t *changes = FUNC1(scratch_pool);

  /* Not using APR_BUFFERED to append change in one atomic write operation. */
  FUNC0(FUNC8(&file,
                           FUNC4(fs, txn_id,
                                                      scratch_pool),
                           APR_APPEND | APR_WRITE | APR_CREATE,
                           APR_OS_DEFAULT, scratch_pool));

  change.path.data = path;
  change.path.len = FUNC3(path);
  change.change_kind = change_kind;
  change.text_mod = text_mod;
  change.prop_mod = prop_mod;
  change.mergeinfo_mod = mergeinfo_mod ? svn_tristate_true
                                       : svn_tristate_false;
  change.node_kind = node_kind;
  change.copyfrom_known = TRUE;
  change.copyfrom_rev = copyfrom_rev;
  if (copyfrom_path)
    change.copyfrom_path = FUNC2(scratch_pool, copyfrom_path);

  FUNC6(changes, path, &change);
  FUNC0(FUNC5(FUNC9(file, TRUE,
                                                           scratch_pool),
                                  fs, changes, FALSE, scratch_pool));

  return FUNC7(file, scratch_pool);
}