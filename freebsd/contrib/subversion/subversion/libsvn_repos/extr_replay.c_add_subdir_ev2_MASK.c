#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  svn_stream_t ;
typedef  int /*<<< orphan*/  svn_revnum_t ;
typedef  int /*<<< orphan*/ * (* svn_repos_authz_func_t ) (void**,int /*<<< orphan*/ *,char const*,void*,int /*<<< orphan*/ *) ;
typedef  int /*<<< orphan*/  svn_fs_t ;
typedef  int /*<<< orphan*/  svn_fs_root_t ;
struct TYPE_5__ {scalar_t__ change_kind; char* copyfrom_path; int /*<<< orphan*/  copyfrom_rev; void* copyfrom_known; } ;
typedef  TYPE_1__ svn_fs_path_change3_t ;
struct TYPE_6__ {scalar_t__ kind; int /*<<< orphan*/  name; } ;
typedef  TYPE_2__ svn_fs_dirent_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  int /*<<< orphan*/  svn_editor_t ;
typedef  int /*<<< orphan*/  svn_checksum_t ;
typedef  void* svn_boolean_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;
typedef  int /*<<< orphan*/  apr_hash_t ;
typedef  int /*<<< orphan*/  apr_hash_index_t ;
typedef  int /*<<< orphan*/  apr_array_header_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  SVN_INVALID_REVNUM ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 void* TRUE ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *) ; 
 TYPE_2__* FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  svn_checksum_sha1 ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ *,char**,int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC8 (int /*<<< orphan*/ **,int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC9 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ *,char const*,void*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC10 (int /*<<< orphan*/ **,int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC11 (int /*<<< orphan*/ **,int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ *) ; 
 scalar_t__ svn_fs_path_change_delete ; 
 scalar_t__ svn_fs_path_change_replace ; 
 int /*<<< orphan*/ * FUNC12 (int /*<<< orphan*/ **,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC13 (int /*<<< orphan*/ *) ; 
 char* FUNC14 (char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC15 (int /*<<< orphan*/ *,char const*) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ *) ; 
 scalar_t__ svn_node_dir ; 
 scalar_t__ svn_node_file ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC18 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *) ; 
 char* FUNC20 (char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static svn_error_t *
FUNC21(svn_fs_root_t *source_root,
               svn_fs_root_t *target_root,
               svn_editor_t *editor,
               const char *repos_relpath,
               const char *source_fspath,
               svn_repos_authz_func_t authz_read_func,
               void *authz_read_baton,
               apr_hash_t *changed_paths,
               apr_pool_t *result_pool,
               apr_pool_t *scratch_pool)
{
  apr_pool_t *iterpool = FUNC18(scratch_pool);
  apr_hash_index_t *hi;
  apr_hash_t *dirents;
  apr_hash_t *props = NULL;
  apr_array_header_t *children = NULL;

  FUNC0(FUNC11(&props, target_root, repos_relpath,
                               scratch_pool));

  FUNC0(FUNC5(editor, repos_relpath, children,
                                   props, SVN_INVALID_REVNUM));

  /* We have to get the dirents from the source path, not the target,
     because we want nested copies from *readable* paths to be handled by
     path_driver_cb_func, not add_subdir (in order to preserve history). */
  FUNC0(FUNC8(&dirents, source_root, source_fspath,
                             scratch_pool));

  for (hi = FUNC2(scratch_pool, dirents); hi; hi = FUNC3(hi))
    {
      svn_fs_path_change3_t *change;
      svn_boolean_t readable = TRUE;
      svn_fs_dirent_t *dent = FUNC4(hi);
      const char *copyfrom_path = NULL;
      svn_revnum_t copyfrom_rev = SVN_INVALID_REVNUM;
      const char *child_relpath;

      FUNC17(iterpool);

      child_relpath = FUNC20(repos_relpath, dent->name, iterpool);

      /* If a file or subdirectory of the copied directory is listed as a
         changed path (because it was modified after the copy but before the
         commit), we remove it from the changed_paths hash so that future
         calls to path_driver_cb_func will ignore it. */
      change = FUNC15(changed_paths, child_relpath);
      if (change)
        {
          FUNC16(changed_paths, child_relpath, NULL);

          /* If it's a delete, skip this entry. */
          if (change->change_kind == svn_fs_path_change_delete)
            continue;

          /* If it's a replacement, check for copyfrom info (if we
             don't have it already. */
          if (change->change_kind == svn_fs_path_change_replace)
            {
              if (! change->copyfrom_known)
                {
                  FUNC0(FUNC7(&change->copyfrom_rev,
                                             &change->copyfrom_path,
                                             target_root, child_relpath,
                                             result_pool));
                  change->copyfrom_known = TRUE;
                }
              copyfrom_path = change->copyfrom_path;
              copyfrom_rev = change->copyfrom_rev;
            }
        }

      if (authz_read_func)
        FUNC0(authz_read_func(&readable, target_root, child_relpath,
                                authz_read_baton, iterpool));

      if (! readable)
        continue;

      if (dent->kind == svn_node_dir)
        {
          svn_fs_root_t *new_source_root;
          const char *new_source_fspath;

          if (copyfrom_path)
            {
              svn_fs_t *fs = FUNC13(source_root);
              FUNC0(FUNC12(&new_source_root, fs,
                                           copyfrom_rev, result_pool));
              new_source_fspath = copyfrom_path;
            }
          else
            {
              new_source_root = source_root;
              new_source_fspath = FUNC14(source_fspath, dent->name,
                                                   iterpool);
            }

          /* ### authz considerations?
           *
           * I think not; when path_driver_cb_func() calls add_subdir(), it
           * passes SOURCE_ROOT and SOURCE_FSPATH that are unreadable.
           */
          if (change && change->change_kind == svn_fs_path_change_replace
              && copyfrom_path == NULL)
            {
              FUNC0(FUNC5(editor, child_relpath,
                                               children, props,
                                               SVN_INVALID_REVNUM));
            }
          else
            {
              FUNC0(FUNC21(new_source_root, target_root,
                                     editor, child_relpath,
                                     new_source_fspath,
                                     authz_read_func, authz_read_baton,
                                     changed_paths, result_pool, iterpool));
            }
        }
      else if (dent->kind == svn_node_file)
        {
          svn_checksum_t *checksum;
          svn_stream_t *contents;

          FUNC0(FUNC11(&props, target_root,
                                       child_relpath, iterpool));

          FUNC0(FUNC10(&contents, target_root,
                                       child_relpath, iterpool));

          FUNC0(FUNC9(&checksum, svn_checksum_sha1,
                                       target_root,
                                       child_relpath, TRUE, iterpool));

          FUNC0(FUNC6(editor, child_relpath, checksum,
                                      contents, props, SVN_INVALID_REVNUM));
        }
      else
        FUNC1();
    }

  FUNC19(iterpool);

  return SVN_NO_ERROR;
}