#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {int /*<<< orphan*/  len; int /*<<< orphan*/  data; } ;
typedef  TYPE_1__ svn_string_t ;
struct TYPE_11__ {scalar_t__ change_kind; int /*<<< orphan*/  mergeinfo_mod; void* prop_mod; void* text_mod; scalar_t__ node_rev_id; } ;
typedef  TYPE_2__ svn_fs_path_change2_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
struct TYPE_12__ {TYPE_2__ info; TYPE_1__ path; } ;
typedef  TYPE_3__ change_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;
typedef  int /*<<< orphan*/  apr_hash_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  SVN_ERR_FS_CORRUPT ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 void* TRUE ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 TYPE_2__* FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC6 (TYPE_2__ const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (scalar_t__,scalar_t__) ; 
#define  svn_fs_path_change_add 132 
#define  svn_fs_path_change_delete 131 
#define  svn_fs_path_change_modify 130 
#define  svn_fs_path_change_replace 129 
#define  svn_fs_path_change_reset 128 
 int /*<<< orphan*/  svn_tristate_true ; 

__attribute__((used)) static svn_error_t *
FUNC9(apr_hash_t *changed_paths,
            apr_hash_t *deletions,
            const change_t *change)
{
  apr_pool_t *pool = FUNC3(changed_paths);
  svn_fs_path_change2_t *old_change, *new_change;
  const svn_string_t *path = &change->path;
  const svn_fs_path_change2_t *info = &change->info;

  if ((old_change = FUNC2(changed_paths, path->data, path->len)))
    {
      /* This path already exists in the hash, so we have to merge
         this change into the already existing one. */

      /* Sanity check:  only allow NULL node revision ID in the
         `reset' case. */
      if ((! info->node_rev_id)
           && (info->change_kind != svn_fs_path_change_reset))
        return FUNC7
          (SVN_ERR_FS_CORRUPT, NULL,
           FUNC1("Missing required node revision ID"));

      /* Sanity check: we should be talking about the same node
         revision ID as our last change except where the last change
         was a deletion. */
      if (info->node_rev_id
          && (! FUNC8(old_change->node_rev_id, info->node_rev_id))
          && (old_change->change_kind != svn_fs_path_change_delete))
        return FUNC7
          (SVN_ERR_FS_CORRUPT, NULL,
           FUNC1("Invalid change ordering: new node revision ID "
             "without delete"));

      /* Sanity check: an add, replacement, or reset must be the first
         thing to follow a deletion. */
      if ((old_change->change_kind == svn_fs_path_change_delete)
          && (! ((info->change_kind == svn_fs_path_change_replace)
                 || (info->change_kind == svn_fs_path_change_reset)
                 || (info->change_kind == svn_fs_path_change_add))))
        return FUNC7
          (SVN_ERR_FS_CORRUPT, NULL,
           FUNC1("Invalid change ordering: non-add change on deleted path"));

      /* Sanity check: an add can't follow anything except
         a delete or reset.  */
      if ((info->change_kind == svn_fs_path_change_add)
          && (old_change->change_kind != svn_fs_path_change_delete)
          && (old_change->change_kind != svn_fs_path_change_reset))
        return FUNC7
          (SVN_ERR_FS_CORRUPT, NULL,
           FUNC1("Invalid change ordering: add change on preexisting path"));

      /* Now, merge that change in. */
      switch (info->change_kind)
        {
        case svn_fs_path_change_reset:
          /* A reset here will simply remove the path change from the
             hash. */
          FUNC4(changed_paths, path->data, path->len, NULL);
          break;

        case svn_fs_path_change_delete:
          if (old_change->change_kind == svn_fs_path_change_add)
            {
              /* If the path was introduced in this transaction via an
                 add, and we are deleting it, just remove the path
                 altogether.  (The caller will delete any child paths.) */
              FUNC4(changed_paths, path->data, path->len, NULL);
            }
          else if (old_change->change_kind == svn_fs_path_change_replace)
            {
              /* A deleting a 'replace' restore the original deletion. */
              new_change = FUNC2(deletions, path->data, path->len);
              FUNC0(new_change);
              FUNC4(changed_paths, path->data, path->len, new_change);
            }
          else
            {
              /* A deletion overrules a previous change (modify). */
              new_change = FUNC6(info, pool);
              FUNC4(changed_paths, path->data, path->len, new_change);
            }
          break;

        case svn_fs_path_change_add:
        case svn_fs_path_change_replace:
          /* An add at this point must be following a previous delete,
             so treat it just like a replace.  Remember the original
             deletion such that we are able to delete this path again
             (the replacement may have changed node kind and id). */
          new_change = FUNC6(info, pool);
          new_change->change_kind = svn_fs_path_change_replace;

          FUNC4(changed_paths, path->data, path->len, new_change);

          /* Remember the original change.
           * Make sure to allocate the hash key in a durable pool. */
          FUNC4(deletions,
                       FUNC5(FUNC3(deletions),
                                      path->data, path->len),
                       path->len, old_change);
          break;

        case svn_fs_path_change_modify:
        default:
          /* If the new change modifies some attribute of the node, set
             the corresponding flag, whether it already was set or not.
             Note: We do not reset a flag to FALSE if a change is undone. */
          if (info->text_mod)
            old_change->text_mod = TRUE;
          if (info->prop_mod)
            old_change->prop_mod = TRUE;
          if (info->mergeinfo_mod == svn_tristate_true)
            old_change->mergeinfo_mod = svn_tristate_true;
          break;
        }
    }
  else
    {
      /* Add this path.  The API makes no guarantees that this (new) key
         will not be retained.  Thus, we copy the key into the target pool
         to ensure a proper lifetime.  */
      FUNC4(changed_paths,
                   FUNC5(pool, path->data, path->len), path->len,
                   FUNC6(info, pool));
    }

  return SVN_NO_ERROR;
}