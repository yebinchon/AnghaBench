#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  svn_txdelta_window_handler_t ;
typedef  int /*<<< orphan*/  svn_txdelta_stream_t ;
typedef  int /*<<< orphan*/  svn_string_t ;
typedef  int /*<<< orphan*/  svn_revnum_t ;
typedef  int /*<<< orphan*/ * (* svn_repos_authz_func_t ) (void**,int /*<<< orphan*/ *,char const*,void*,int /*<<< orphan*/ *) ;
typedef  int /*<<< orphan*/  svn_fs_t ;
typedef  int /*<<< orphan*/  svn_fs_root_t ;
struct TYPE_6__ {scalar_t__ change_kind; char* copyfrom_path; int /*<<< orphan*/  copyfrom_rev; void* copyfrom_known; } ;
typedef  TYPE_1__ svn_fs_path_change3_t ;
struct TYPE_7__ {scalar_t__ kind; int /*<<< orphan*/  name; } ;
typedef  TYPE_2__ svn_fs_dirent_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
struct TYPE_8__ {int /*<<< orphan*/ * (* close_file ) (void*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ;int /*<<< orphan*/ * (* apply_textdelta ) (void*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,void**) ;int /*<<< orphan*/ * (* change_file_prop ) (void*,char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ;int /*<<< orphan*/ * (* add_file ) (char const*,void*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,void**) ;int /*<<< orphan*/ * (* close_directory ) (void*,int /*<<< orphan*/ *) ;int /*<<< orphan*/ * (* add_directory ) (char const*,void*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,void**) ;int /*<<< orphan*/ * (* change_dir_prop ) (void*,char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ;} ;
typedef  TYPE_3__ svn_delta_editor_t ;
typedef  int /*<<< orphan*/  svn_checksum_t ;
typedef  void* svn_boolean_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;
typedef  int /*<<< orphan*/  apr_hash_t ;
typedef  int /*<<< orphan*/  apr_hash_index_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  SVN_INVALID_REVNUM ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 void* TRUE ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *) ; 
 char* FUNC4 (int /*<<< orphan*/ *) ; 
 void* FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC6 (char const*,void*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,void**) ; 
 int /*<<< orphan*/ * FUNC7 (void*,char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC8 (char const*,void*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,void**) ; 
 int /*<<< orphan*/ * FUNC9 (void*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC10 (char const*,void*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,void**) ; 
 int /*<<< orphan*/ * FUNC11 (void*,char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC12 (void*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,void**) ; 
 int /*<<< orphan*/ * FUNC13 (void*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  svn_checksum_md5 ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC15 (int /*<<< orphan*/ *,char**,int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC16 (int /*<<< orphan*/ **,int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC17 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ *,char const*,void*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC18 (int /*<<< orphan*/ **,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC19 (int /*<<< orphan*/ **,int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ *) ; 
 scalar_t__ svn_fs_path_change_delete ; 
 scalar_t__ svn_fs_path_change_replace ; 
 int /*<<< orphan*/ * FUNC20 (int /*<<< orphan*/ **,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC21 (int /*<<< orphan*/ *) ; 
 char* FUNC22 (char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC23 (int /*<<< orphan*/ *,char const*) ; 
 int /*<<< orphan*/  FUNC24 (int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ *) ; 
 scalar_t__ svn_node_dir ; 
 scalar_t__ svn_node_file ; 
 int /*<<< orphan*/  FUNC25 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC26 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC27 (int /*<<< orphan*/ *) ; 
 char* FUNC28 (char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC29 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,void*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static svn_error_t *
FUNC30(svn_fs_root_t *source_root,
           svn_fs_root_t *target_root,
           const svn_delta_editor_t *editor,
           void *edit_baton,
           const char *edit_path,
           void *parent_baton,
           const char *source_fspath,
           svn_repos_authz_func_t authz_read_func,
           void *authz_read_baton,
           apr_hash_t *changed_paths,
           apr_pool_t *pool,
           void **dir_baton)
{
  apr_pool_t *subpool = FUNC26(pool);
  apr_hash_index_t *hi, *phi;
  apr_hash_t *dirents;
  apr_hash_t *props;

  FUNC0(editor->add_directory(edit_path, parent_baton, NULL,
                                SVN_INVALID_REVNUM, pool, dir_baton));

  FUNC0(FUNC19(&props, target_root, edit_path, pool));

  for (phi = FUNC2(pool, props); phi; phi = FUNC3(phi))
    {
      const char *key = FUNC4(phi);
      svn_string_t *val = FUNC5(phi);

      FUNC25(subpool);
      FUNC0(editor->change_dir_prop(*dir_baton, key, val, subpool));
    }

  /* We have to get the dirents from the source path, not the target,
     because we want nested copies from *readable* paths to be handled by
     path_driver_cb_func, not add_subdir (in order to preserve history). */
  FUNC0(FUNC16(&dirents, source_root, source_fspath, pool));

  for (hi = FUNC2(pool, dirents); hi; hi = FUNC3(hi))
    {
      svn_fs_path_change3_t *change;
      svn_boolean_t readable = TRUE;
      svn_fs_dirent_t *dent = FUNC5(hi);
      const char *copyfrom_path = NULL;
      svn_revnum_t copyfrom_rev = SVN_INVALID_REVNUM;
      const char *new_edit_path;

      FUNC25(subpool);

      new_edit_path = FUNC28(edit_path, dent->name, subpool);

      /* If a file or subdirectory of the copied directory is listed as a
         changed path (because it was modified after the copy but before the
         commit), we remove it from the changed_paths hash so that future
         calls to path_driver_cb_func will ignore it. */
      change = FUNC23(changed_paths, new_edit_path);
      if (change)
        {
          FUNC24(changed_paths, new_edit_path, NULL);

          /* If it's a delete, skip this entry. */
          if (change->change_kind == svn_fs_path_change_delete)
            continue;

          /* If it's a replacement, check for copyfrom info (if we
             don't have it already. */
          if (change->change_kind == svn_fs_path_change_replace)
            {
              if (! change->copyfrom_known)
                {
                  FUNC0(FUNC15(&change->copyfrom_rev,
                                             &change->copyfrom_path,
                                             target_root, new_edit_path, pool));
                  change->copyfrom_known = TRUE;
                }
              copyfrom_path = change->copyfrom_path;
              copyfrom_rev = change->copyfrom_rev;
            }
        }

      if (authz_read_func)
        FUNC0(authz_read_func(&readable, target_root, new_edit_path,
                                authz_read_baton, pool));

      if (! readable)
        continue;

      if (dent->kind == svn_node_dir)
        {
          svn_fs_root_t *new_source_root;
          const char *new_source_fspath;
          void *new_dir_baton;

          if (copyfrom_path)
            {
              svn_fs_t *fs = FUNC21(source_root);
              FUNC0(FUNC20(&new_source_root, fs,
                                           copyfrom_rev, pool));
              new_source_fspath = copyfrom_path;
            }
          else
            {
              new_source_root = source_root;
              new_source_fspath = FUNC22(source_fspath, dent->name,
                                                   subpool);
            }

          /* ### authz considerations?
           *
           * I think not; when path_driver_cb_func() calls add_subdir(), it
           * passes SOURCE_ROOT and SOURCE_FSPATH that are unreadable.
           */
          if (change && change->change_kind == svn_fs_path_change_replace
              && copyfrom_path == NULL)
            {
              FUNC0(editor->add_directory(new_edit_path, *dir_baton,
                                            NULL, SVN_INVALID_REVNUM,
                                            subpool, &new_dir_baton));
            }
          else
            {
              FUNC0(FUNC30(new_source_root, target_root,
                                 editor, edit_baton, new_edit_path,
                                 *dir_baton, new_source_fspath,
                                 authz_read_func, authz_read_baton,
                                 changed_paths, subpool, &new_dir_baton));
            }

          FUNC0(editor->close_directory(new_dir_baton, subpool));
        }
      else if (dent->kind == svn_node_file)
        {
          svn_txdelta_window_handler_t delta_handler;
          void *delta_handler_baton, *file_baton;
          svn_txdelta_stream_t *delta_stream;
          svn_checksum_t *checksum;

          FUNC0(editor->add_file(new_edit_path, *dir_baton, NULL,
                                   SVN_INVALID_REVNUM, pool, &file_baton));

          FUNC0(FUNC19(&props, target_root,
                                       new_edit_path, subpool));

          for (phi = FUNC2(pool, props); phi; phi = FUNC3(phi))
            {
              const char *key = FUNC4(phi);
              svn_string_t *val = FUNC5(phi);

              FUNC0(editor->change_file_prop(file_baton, key, val, subpool));
            }

          FUNC0(editor->apply_textdelta(file_baton, NULL, pool,
                                          &delta_handler,
                                          &delta_handler_baton));

          FUNC0(FUNC18(&delta_stream, NULL, NULL,
                                               target_root, new_edit_path,
                                               pool));

          FUNC0(FUNC29(delta_stream,
                                            delta_handler,
                                            delta_handler_baton,
                                            pool));

          FUNC0(FUNC17(&checksum, svn_checksum_md5, target_root,
                                       new_edit_path, TRUE, pool));
          FUNC0(editor->close_file(file_baton,
                                     FUNC14(checksum, pool),
                                     pool));
        }
      else
        FUNC1();
    }

  FUNC27(subpool);

  return SVN_NO_ERROR;
}