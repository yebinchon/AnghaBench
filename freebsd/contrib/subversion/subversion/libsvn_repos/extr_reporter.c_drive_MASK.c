#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_18__   TYPE_4__ ;
typedef  struct TYPE_17__   TYPE_3__ ;
typedef  struct TYPE_16__   TYPE_2__ ;
typedef  struct TYPE_15__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  svn_revnum_t ;
typedef  int /*<<< orphan*/  svn_fs_root_t ;
struct TYPE_16__ {scalar_t__ kind; } ;
typedef  TYPE_2__ svn_fs_dirent_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  int svn_boolean_t ;
struct TYPE_17__ {char* t_path; TYPE_1__* editor; int /*<<< orphan*/  requested_depth; scalar_t__* s_operand; int /*<<< orphan*/  edit_baton; int /*<<< orphan*/  t_rev; int /*<<< orphan*/ * t_root; int /*<<< orphan*/  fs_base; } ;
typedef  TYPE_3__ report_baton_t ;
struct TYPE_18__ {int /*<<< orphan*/  depth; int /*<<< orphan*/  start_empty; int /*<<< orphan*/  link_path; int /*<<< orphan*/  rev; } ;
typedef  TYPE_4__ path_info_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;
struct TYPE_15__ {int /*<<< orphan*/  (* close_directory ) (void*,int /*<<< orphan*/ *) ;int /*<<< orphan*/  (* open_root ) (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,void**) ;int /*<<< orphan*/  (* set_target_revision ) (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SVN_ERR_AUTHZ_ROOT_UNREADABLE ; 
 int /*<<< orphan*/  SVN_ERR_FS_PATH_SYNTAX ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*,int*,char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*,int /*<<< orphan*/ ,char const*,char const*,void*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__ const**,int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_3__*,int /*<<< orphan*/ **,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,void**) ; 
 int /*<<< orphan*/  FUNC9 (void*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/ * FUNC12 (int /*<<< orphan*/ ) ; 
 char* FUNC13 (char*,int /*<<< orphan*/ *) ; 
 char* FUNC14 (int /*<<< orphan*/ ,scalar_t__*,int /*<<< orphan*/ *) ; 
 scalar_t__ svn_node_dir ; 
 int /*<<< orphan*/  FUNC15 (TYPE_3__*,int /*<<< orphan*/ ,char const*,TYPE_2__ const*,char const*,TYPE_2__ const*,void*,scalar_t__*,TYPE_4__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static svn_error_t *
FUNC16(report_baton_t *b, svn_revnum_t s_rev, path_info_t *info,
      apr_pool_t *pool)
{
  const char *t_anchor, *s_fullpath;
  svn_boolean_t allowed, info_is_set_path;
  svn_fs_root_t *s_root;
  const svn_fs_dirent_t *s_entry, *t_entry;
  void *root_baton;

  /* Compute the target path corresponding to the working copy anchor,
     and check its authorization. */
  t_anchor = *b->s_operand ? FUNC13(b->t_path, pool) : b->t_path;
  FUNC0(FUNC3(b, &allowed, t_anchor, pool));
  if (!allowed)
    return FUNC10
      (SVN_ERR_AUTHZ_ROOT_UNREADABLE, NULL,
       FUNC2("Not authorized to open root of edit operation"));

  /* Collect information about the source and target nodes. */
  s_fullpath = FUNC14(b->fs_base, b->s_operand, pool);
  FUNC0(FUNC6(b, &s_root, s_rev));
  FUNC0(FUNC5(&s_entry, s_root, s_fullpath, pool));
  FUNC0(FUNC5(&t_entry, b->t_root, b->t_path, pool));

  /* If the operand is a locally added file or directory, it won't
     exist in the source, so accept that. */
  info_is_set_path = (FUNC1(info->rev) && !info->link_path);
  if (info_is_set_path && !s_entry)
    s_fullpath = NULL;

  /* Check if the target path exists first.  */
  if (!*b->s_operand && !(t_entry))
    return FUNC11(SVN_ERR_FS_PATH_SYNTAX, NULL,
                             FUNC2("Target path '%s' does not exist"),
                             b->t_path);

  /* If the anchor is the operand, the source and target must be dirs.
     Check this before opening the root to avoid modifying the wc. */
  else if (!*b->s_operand && (!s_entry || s_entry->kind != svn_node_dir
                              || t_entry->kind != svn_node_dir))
    return FUNC10(SVN_ERR_FS_PATH_SYNTAX, NULL,
                            FUNC2("Cannot replace a directory from within"));

  FUNC0(b->editor->set_target_revision(b->edit_baton, b->t_rev, pool));
  FUNC0(b->editor->open_root(b->edit_baton, s_rev, pool, &root_baton));

  /* If the anchor is the operand, diff the two directories; otherwise
     update the operand within the anchor directory. */
  if (!*b->s_operand)
    FUNC0(FUNC4(b, s_rev, s_fullpath, b->t_path, root_baton,
                       "", info->start_empty, info->depth, b->requested_depth,
                       pool));
  else
    FUNC0(FUNC15(b, s_rev, s_fullpath, s_entry, b->t_path,
                         t_entry, root_baton, b->s_operand, info,
                         info->depth, b->requested_depth, pool));

  return FUNC12(b->editor->close_directory(root_baton, pool));
}