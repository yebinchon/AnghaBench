#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {scalar_t__ kind; } ;
typedef  TYPE_1__ svn_wc_notify_t ;
typedef  int /*<<< orphan*/  (* svn_wc_notify_func2_t ) (void*,TYPE_1__*,int /*<<< orphan*/ *) ;
typedef  int /*<<< orphan*/  svn_wc__db_t ;
typedef  int /*<<< orphan*/  svn_skel_t ;
typedef  scalar_t__ svn_node_kind_t ;
typedef  int /*<<< orphan*/  svn_io_dirent2_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  int /*<<< orphan*/ * (* svn_cancel_func_t ) (void*) ;
typedef  int /*<<< orphan*/  svn_boolean_t ;
struct svn_wc__db_info_t {scalar_t__ status; scalar_t__ kind; int /*<<< orphan*/  recorded_time; int /*<<< orphan*/  recorded_size; int /*<<< orphan*/  conflicted; int /*<<< orphan*/  file_external; scalar_t__ op_root; } ;
typedef  int /*<<< orphan*/  apr_pool_t ;
typedef  int /*<<< orphan*/  apr_hash_t ;
typedef  int /*<<< orphan*/  apr_hash_index_t ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  SVN_ERR_NODE_UNEXPECTED_KIND ; 
 int /*<<< orphan*/  SVN_ERR_WC_PATH_UNEXPECTED_STATUS ; 
 int /*<<< orphan*/  SVN_INVALID_FILESIZE ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ *) ; 
 char* FUNC6 (int /*<<< orphan*/ *) ; 
 struct svn_wc__db_info_t* FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC8 (int /*<<< orphan*/ **,scalar_t__*,int /*<<< orphan*/ *,char const*,char const*,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/  const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ * (*) (void*),void*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC9 (int /*<<< orphan*/ *,char const*,char const*,char const*,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ * (*) (void*),void*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (void*,TYPE_1__*,int /*<<< orphan*/ *) ; 
 char* FUNC11 (char const*,int /*<<< orphan*/ *) ; 
 char* FUNC12 (char const*,char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC15 (int /*<<< orphan*/ *,char const*) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC17 (int /*<<< orphan*/ **,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ svn_node_dir ; 
 scalar_t__ svn_node_file ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC19 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC21 (int /*<<< orphan*/ **,int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC22 (int /*<<< orphan*/ *,char const*,char const*,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC23 (int /*<<< orphan*/ *,char const*,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC24 (int /*<<< orphan*/ **,int /*<<< orphan*/ **,int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ svn_wc__db_status_added ; 
 scalar_t__ svn_wc__db_status_deleted ; 
 scalar_t__ svn_wc__db_status_excluded ; 
 scalar_t__ svn_wc__db_status_incomplete ; 
 scalar_t__ svn_wc__db_status_normal ; 
 scalar_t__ svn_wc__db_status_not_present ; 
 scalar_t__ svn_wc__db_status_server_excluded ; 
 int /*<<< orphan*/ * FUNC25 (int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC26 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC27 (int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ * (*) (void*),void*,int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC28 (char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC29 (char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  svn_wc_notify_add ; 

__attribute__((used)) static svn_error_t *
FUNC30(svn_wc__db_t *db,
                   const char *src_abspath,
                   const char *dst_abspath,
                   const char *dst_op_root_abspath,
                   const char *tmpdir_abspath,
                   svn_boolean_t metadata_only,
                   svn_boolean_t is_move,
                   const svn_io_dirent2_t *dirent,
                   svn_cancel_func_t cancel_func,
                   void *cancel_baton,
                   svn_wc_notify_func2_t notify_func,
                   void *notify_baton,
                   apr_pool_t *scratch_pool)
{
  svn_skel_t *work_items = NULL;
  const char *dir_abspath = FUNC11(dst_abspath, scratch_pool);
  apr_hash_t *versioned_children;
  apr_hash_t *conflicted_children;
  apr_hash_t *disk_children;
  apr_hash_index_t *hi;
  svn_node_kind_t disk_kind;
  apr_pool_t *iterpool;

  /* Prepare a temp copy of the single filesystem node (usually a dir). */
  if (!metadata_only)
    {
      FUNC0(FUNC8(&work_items, &disk_kind,
                             db, src_abspath, dst_abspath,
                             tmpdir_abspath,
                             FALSE /* file_copy */,
                             FALSE /* unversioned */,
                             dirent, SVN_INVALID_FILESIZE, 0,
                             cancel_func, cancel_baton,
                             scratch_pool, scratch_pool));
    }

  /* Copy the (single) node's metadata, and move the new filesystem node
     into place. */
  FUNC0(FUNC22(db, src_abspath, dst_abspath,
                             dst_op_root_abspath, is_move, work_items,
                             scratch_pool));

  if (notify_func)
    {
      svn_wc_notify_t *notify
        = FUNC28(dst_abspath, svn_wc_notify_add,
                               scratch_pool);
      notify->kind = svn_node_dir;

      /* When we notify that we performed a copy, make sure we already did */
      if (work_items != NULL)
        FUNC0(FUNC27(db, dir_abspath,
                               cancel_func, cancel_baton, scratch_pool));

      (*notify_func)(notify_baton, notify, scratch_pool);
    }

  if (!metadata_only && disk_kind == svn_node_dir)
    /* All filesystem children, versioned and unversioned.  We're only
       interested in their names, so we can pass TRUE as the only_check_type
       param. */
    FUNC0(FUNC17(&disk_children, src_abspath, TRUE,
                                scratch_pool, scratch_pool));
  else
    disk_children = NULL;

  /* Copy all the versioned children */
  iterpool = FUNC19(scratch_pool);
  FUNC0(FUNC24(&versioned_children,
                                        &conflicted_children,
                                        db, src_abspath,
                                        FALSE /* base_tree_only */,
                                        scratch_pool, iterpool));
  for (hi = FUNC4(scratch_pool, versioned_children);
       hi;
       hi = FUNC5(hi))
    {
      const char *child_name, *child_src_abspath, *child_dst_abspath;
      struct svn_wc__db_info_t *info;

      FUNC18(iterpool);

      if (cancel_func)
        FUNC0(cancel_func(cancel_baton));

      child_name = FUNC6(hi);
      info = FUNC7(hi);
      child_src_abspath = FUNC12(src_abspath, child_name, iterpool);
      child_dst_abspath = FUNC12(dst_abspath, child_name, iterpool);

      if (info->op_root)
        FUNC0(FUNC23(db,
                                                  child_src_abspath,
                                                  child_dst_abspath,
                                                  is_move,
                                                  scratch_pool));

      if (info->status == svn_wc__db_status_normal
          || info->status == svn_wc__db_status_added)
        {
          /* We have more work to do than just changing the DB */
          if (info->kind == svn_node_file)
            {
              /* We should skip this node if this child is a file external
                 (issues #3589, #4000) */
              if (!info->file_external)
                FUNC0(FUNC9(db,
                                            child_src_abspath,
                                            child_dst_abspath,
                                            dst_op_root_abspath,
                                            tmpdir_abspath,
                                            metadata_only, info->conflicted,
                                            is_move,
                                            disk_children
                                              ? FUNC15(disk_children,
                                                              child_name)
                                              : NULL,
                                            info->recorded_size,
                                            info->recorded_time,
                                            cancel_func, cancel_baton,
                                            NULL, NULL,
                                            iterpool));
            }
          else if (info->kind == svn_node_dir)
            FUNC0(FUNC30(db,
                                       child_src_abspath, child_dst_abspath,
                                       dst_op_root_abspath, tmpdir_abspath,
                                       metadata_only, is_move,
                                       disk_children
                                              ? FUNC15(disk_children,
                                                              child_name)
                                              : NULL,
                                       cancel_func, cancel_baton, NULL, NULL,
                                       iterpool));
          else
            return FUNC14(SVN_ERR_NODE_UNEXPECTED_KIND, NULL,
                                     FUNC2("cannot handle node kind for '%s'"),
                                     FUNC13(child_src_abspath,
                                                            scratch_pool));
        }
      else if (info->status == svn_wc__db_status_deleted
          || info->status == svn_wc__db_status_not_present
          || info->status == svn_wc__db_status_excluded)
        {
          /* This will be copied as some kind of deletion. Don't touch
             any actual files */
          FUNC0(FUNC22(db, child_src_abspath,
                                     child_dst_abspath, dst_op_root_abspath,
                                     is_move, NULL, iterpool));

          /* Don't recurse on children when all we do is creating not-present
             children */
        }
      else if (info->status == svn_wc__db_status_incomplete)
        {
          /* Should go ahead and copy incomplete to incomplete? Try to
             copy as much as possible, or give up early? */
          return FUNC14(SVN_ERR_WC_PATH_UNEXPECTED_STATUS, NULL,
                                   FUNC2("Cannot handle status of '%s'"),
                                   FUNC13(child_src_abspath,
                                                          iterpool));
        }
      else
        {
          FUNC1(info->status == svn_wc__db_status_server_excluded);

          return FUNC14(SVN_ERR_WC_PATH_UNEXPECTED_STATUS, NULL,
                                   FUNC2("Cannot copy '%s' excluded by server"),
                                   FUNC13(child_src_abspath,
                                                          iterpool));
        }

      if (disk_children
          && (info->status == svn_wc__db_status_normal
              || info->status == svn_wc__db_status_added))
        {
          /* Remove versioned child as it has been handled */
          FUNC16(disk_children, child_name, NULL);
        }
    }

  /* Copy the remaining filesystem children, which are unversioned, skipping
     any conflict-marker files. */
  if (disk_children && FUNC3(disk_children))
    {
      apr_hash_t *marker_files;

      FUNC0(FUNC21(&marker_files, db,
                                                   src_abspath, scratch_pool,
                                                   scratch_pool));

      work_items = NULL;

      for (hi = FUNC4(scratch_pool, disk_children); hi;
           hi = FUNC5(hi))
        {
          const char *name = FUNC6(hi);
          const char *unver_src_abspath, *unver_dst_abspath;
          svn_skel_t *work_item;

          if (FUNC29(name, iterpool))
            continue;

          if (cancel_func)
            FUNC0(cancel_func(cancel_baton));

          FUNC18(iterpool);
          unver_src_abspath = FUNC12(src_abspath, name, iterpool);
          unver_dst_abspath = FUNC12(dst_abspath, name, iterpool);

          if (marker_files &&
              FUNC15(marker_files, unver_src_abspath))
            continue;

          FUNC0(FUNC8(&work_item, NULL, db, unver_src_abspath,
                                 unver_dst_abspath, tmpdir_abspath,
                                 TRUE /* recursive */, TRUE /* unversioned */,
                                 NULL, SVN_INVALID_FILESIZE, 0,
                                 cancel_func, cancel_baton,
                                 scratch_pool, iterpool));

          if (work_item)
            work_items = FUNC26(work_items, work_item, scratch_pool);
        }
      FUNC0(FUNC25(db, dst_abspath, work_items, iterpool));
    }

  FUNC20(iterpool);

  return SVN_NO_ERROR;
}