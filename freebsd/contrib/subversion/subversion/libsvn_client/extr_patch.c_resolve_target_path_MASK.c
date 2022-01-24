#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
struct TYPE_12__ {scalar_t__ node_status; scalar_t__ kind; scalar_t__ prop_status; scalar_t__ conflicted; } ;
typedef  TYPE_1__ svn_wc_status3_t ;
typedef  int /*<<< orphan*/  svn_wc_context_t ;
typedef  int /*<<< orphan*/  svn_string_t ;
struct TYPE_13__ {scalar_t__ apr_err; } ;
typedef  TYPE_2__ svn_error_t ;
typedef  scalar_t__ svn_boolean_t ;
struct TYPE_14__ {char* canon_path_from_patchfile; char const* local_abspath; char* local_relpath; scalar_t__ db_kind; scalar_t__ kind_on_disk; void* is_symlink; void* locally_deleted; void* skipped; void* obstructed; } ;
typedef  TYPE_3__ patch_target_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;
typedef  int /*<<< orphan*/  apr_array_header_t ;

/* Variables and functions */
 void* FALSE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ SVN_ERR_WC_PATH_NOT_FOUND ; 
 TYPE_2__* SVN_NO_ERROR ; 
 int /*<<< orphan*/  SVN_PROP_SPECIAL ; 
 void* TRUE ; 
 int /*<<< orphan*/  FUNC1 (char const**,char*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 char* FUNC2 (char const*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (char const*) ; 
 char* FUNC4 (char const*,char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__*,char const**,char const*,char const*,int /*<<< orphan*/ *) ; 
 char const* FUNC6 (char const*,char const*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*) ; 
 TYPE_2__* FUNC8 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC9 (char const*,scalar_t__*,void**,int /*<<< orphan*/ *) ; 
 scalar_t__ svn_node_file ; 
 scalar_t__ svn_node_none ; 
 scalar_t__ svn_node_unknown ; 
 int /*<<< orphan*/  FUNC10 (char const**,int /*<<< orphan*/ *,int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/  const**,int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 TYPE_2__* FUNC12 (TYPE_1__**,int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ svn_wc_status_deleted ; 
 scalar_t__ svn_wc_status_ignored ; 
 scalar_t__ svn_wc_status_missing ; 
 scalar_t__ svn_wc_status_none ; 
 scalar_t__ svn_wc_status_obstructed ; 
 scalar_t__ svn_wc_status_unversioned ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/  const*,char const*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC14 (int /*<<< orphan*/  const*,char const*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static svn_error_t *
FUNC15(patch_target_t *target,
                    const char *path_from_patchfile,
                    const char *root_abspath,
                    int strip_count,
                    svn_boolean_t has_text_changes,
                    svn_boolean_t follow_moves,
                    svn_wc_context_t *wc_ctx,
                    const apr_array_header_t *targets_info,
                    apr_pool_t *result_pool,
                    apr_pool_t *scratch_pool)
{
  const char *stripped_path;
  svn_wc_status3_t *status;
  svn_error_t *err;
  svn_boolean_t under_root;

  target->canon_path_from_patchfile = FUNC2(
                                        path_from_patchfile, result_pool);

  /* We can't handle text changes on the patch root dir. */
  if (has_text_changes && target->canon_path_from_patchfile[0] == '\0')
    {
      /* An empty patch target path? What gives? Skip this. */
      target->skipped = TRUE;
      target->local_abspath = NULL;
      target->local_relpath = "";
      return SVN_NO_ERROR;
    }

  if (strip_count > 0)
    FUNC0(FUNC1(&stripped_path, target->canon_path_from_patchfile,
                       strip_count, result_pool, scratch_pool));
  else
    stripped_path = target->canon_path_from_patchfile;

  if (FUNC3(stripped_path))
    {
      target->local_relpath = FUNC4(root_abspath,
                                                  stripped_path,
                                                  result_pool);

      if (! target->local_relpath)
        {
          /* The target path is either outside of the working copy
           * or it is the patch root itself. Skip it. */
          target->skipped = TRUE;
          target->local_abspath = NULL;
          target->local_relpath = stripped_path;
          return SVN_NO_ERROR;
        }
    }
  else
    {
      target->local_relpath = stripped_path;
    }

  /* Make sure the path is secure to use. We want the target to be inside
   * the locked tree and not be fooled by symlinks it might contain. */
  FUNC0(FUNC5(&under_root,
                                   &target->local_abspath, root_abspath,
                                   target->local_relpath, result_pool));

  if (! under_root)
    {
      /* The target path is outside of the working copy. Skip it. */
      target->skipped = TRUE;
      target->local_abspath = NULL;
      return SVN_NO_ERROR;
    }

  if (FUNC14(targets_info, target->local_abspath, scratch_pool))
    {
      target->locally_deleted = TRUE;
      target->db_kind = svn_node_none;
      return SVN_NO_ERROR;
    }

  /* Skip things we should not be messing with. */
  err = FUNC12(&status, wc_ctx, target->local_abspath,
                       result_pool, scratch_pool);
  if (err)
    {
      if (err->apr_err != SVN_ERR_WC_PATH_NOT_FOUND)
        return FUNC8(err);

      FUNC7(err);

      target->locally_deleted = TRUE;
      target->db_kind = svn_node_none;
      status = NULL;
    }
  else if (status->node_status == svn_wc_status_ignored ||
           status->node_status == svn_wc_status_unversioned ||
           status->node_status == svn_wc_status_missing ||
           status->node_status == svn_wc_status_obstructed ||
           status->conflicted)
    {
      target->skipped = TRUE;
      target->obstructed = TRUE;
      return SVN_NO_ERROR;
    }
  else if (status->node_status == svn_wc_status_deleted)
    {
      target->locally_deleted = TRUE;
    }

  if (status && (status->kind != svn_node_unknown))
    target->db_kind = status->kind;
  else
    target->db_kind = svn_node_none;

  FUNC0(FUNC9(target->local_abspath,
                                    &target->kind_on_disk, &target->is_symlink,
                                    scratch_pool));

  if (target->locally_deleted)
    {
      const char *moved_to_abspath = NULL;

      if (follow_moves
          && !FUNC13(targets_info, target->local_abspath,
                              scratch_pool))
        {
          FUNC0(FUNC10(&moved_to_abspath, NULL,
                                              wc_ctx, target->local_abspath,
                                              result_pool, scratch_pool));
        }

      if (moved_to_abspath)
        {
          target->local_abspath = moved_to_abspath;
          target->local_relpath = FUNC6(root_abspath,
                                                           moved_to_abspath);

          if (!target->local_relpath || target->local_relpath[0] == '\0')
            {
              /* The target path is outside of the patch area. Skip it. */
              target->skipped = TRUE;
              return SVN_NO_ERROR;
            }

          /* As far as we are concerned this target is not locally deleted. */
          target->locally_deleted = FALSE;

          FUNC0(FUNC9(target->local_abspath,
                                            &target->kind_on_disk,
                                            &target->is_symlink,
                                            scratch_pool));
        }
      else if (target->kind_on_disk != svn_node_none)
        {
          target->skipped = TRUE;
          return SVN_NO_ERROR;
        }
    }

#ifndef HAVE_SYMLINK
  if (target->kind_on_disk == svn_node_file
      && !target->is_symlink
      && !target->locally_deleted
      && status->prop_status != svn_wc_status_none)
    {
      const svn_string_t *value;

      FUNC0(FUNC11(&value, wc_ctx, target->local_abspath,
                               SVN_PROP_SPECIAL, scratch_pool, scratch_pool));

      if (value)
        target->is_symlink = TRUE;
    }
#endif

  return SVN_NO_ERROR;
}