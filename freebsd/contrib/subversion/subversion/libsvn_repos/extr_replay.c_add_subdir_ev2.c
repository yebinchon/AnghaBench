
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int svn_stream_t ;
typedef int svn_revnum_t ;
typedef int * (* svn_repos_authz_func_t ) (void**,int *,char const*,void*,int *) ;
typedef int svn_fs_t ;
typedef int svn_fs_root_t ;
struct TYPE_5__ {scalar_t__ change_kind; char* copyfrom_path; int copyfrom_rev; void* copyfrom_known; } ;
typedef TYPE_1__ svn_fs_path_change3_t ;
struct TYPE_6__ {scalar_t__ kind; int name; } ;
typedef TYPE_2__ svn_fs_dirent_t ;
typedef int svn_error_t ;
typedef int svn_editor_t ;
typedef int svn_checksum_t ;
typedef void* svn_boolean_t ;
typedef int apr_pool_t ;
typedef int apr_hash_t ;
typedef int apr_hash_index_t ;
typedef int apr_array_header_t ;


 int SVN_ERR (int *) ;
 int SVN_ERR_MALFUNCTION () ;
 int SVN_INVALID_REVNUM ;
 int * SVN_NO_ERROR ;
 void* TRUE ;
 int * apr_hash_first (int *,int *) ;
 int * apr_hash_next (int *) ;
 TYPE_2__* apr_hash_this_val (int *) ;
 int svn_checksum_sha1 ;
 int * svn_editor_add_directory (int *,char const*,int *,int *,int ) ;
 int * svn_editor_add_file (int *,char const*,int *,int *,int *,int ) ;
 int * svn_fs_copied_from (int *,char**,int *,char const*,int *) ;
 int * svn_fs_dir_entries (int **,int *,char const*,int *) ;
 int * svn_fs_file_checksum (int **,int ,int *,char const*,void*,int *) ;
 int * svn_fs_file_contents (int **,int *,char const*,int *) ;
 int * svn_fs_node_proplist (int **,int *,char const*,int *) ;
 scalar_t__ svn_fs_path_change_delete ;
 scalar_t__ svn_fs_path_change_replace ;
 int * svn_fs_revision_root (int **,int *,int ,int *) ;
 int * svn_fs_root_fs (int *) ;
 char* svn_fspath__join (char const*,int ,int *) ;
 TYPE_1__* svn_hash_gets (int *,char const*) ;
 int svn_hash_sets (int *,char const*,int *) ;
 scalar_t__ svn_node_dir ;
 scalar_t__ svn_node_file ;
 int svn_pool_clear (int *) ;
 int * svn_pool_create (int *) ;
 int svn_pool_destroy (int *) ;
 char* svn_relpath_join (char const*,int ,int *) ;

__attribute__((used)) static svn_error_t *
add_subdir_ev2(svn_fs_root_t *source_root,
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
  apr_pool_t *iterpool = svn_pool_create(scratch_pool);
  apr_hash_index_t *hi;
  apr_hash_t *dirents;
  apr_hash_t *props = ((void*)0);
  apr_array_header_t *children = ((void*)0);

  SVN_ERR(svn_fs_node_proplist(&props, target_root, repos_relpath,
                               scratch_pool));

  SVN_ERR(svn_editor_add_directory(editor, repos_relpath, children,
                                   props, SVN_INVALID_REVNUM));




  SVN_ERR(svn_fs_dir_entries(&dirents, source_root, source_fspath,
                             scratch_pool));

  for (hi = apr_hash_first(scratch_pool, dirents); hi; hi = apr_hash_next(hi))
    {
      svn_fs_path_change3_t *change;
      svn_boolean_t readable = TRUE;
      svn_fs_dirent_t *dent = apr_hash_this_val(hi);
      const char *copyfrom_path = ((void*)0);
      svn_revnum_t copyfrom_rev = SVN_INVALID_REVNUM;
      const char *child_relpath;

      svn_pool_clear(iterpool);

      child_relpath = svn_relpath_join(repos_relpath, dent->name, iterpool);





      change = svn_hash_gets(changed_paths, child_relpath);
      if (change)
        {
          svn_hash_sets(changed_paths, child_relpath, ((void*)0));


          if (change->change_kind == svn_fs_path_change_delete)
            continue;



          if (change->change_kind == svn_fs_path_change_replace)
            {
              if (! change->copyfrom_known)
                {
                  SVN_ERR(svn_fs_copied_from(&change->copyfrom_rev,
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
        SVN_ERR(authz_read_func(&readable, target_root, child_relpath,
                                authz_read_baton, iterpool));

      if (! readable)
        continue;

      if (dent->kind == svn_node_dir)
        {
          svn_fs_root_t *new_source_root;
          const char *new_source_fspath;

          if (copyfrom_path)
            {
              svn_fs_t *fs = svn_fs_root_fs(source_root);
              SVN_ERR(svn_fs_revision_root(&new_source_root, fs,
                                           copyfrom_rev, result_pool));
              new_source_fspath = copyfrom_path;
            }
          else
            {
              new_source_root = source_root;
              new_source_fspath = svn_fspath__join(source_fspath, dent->name,
                                                   iterpool);
            }






          if (change && change->change_kind == svn_fs_path_change_replace
              && copyfrom_path == ((void*)0))
            {
              SVN_ERR(svn_editor_add_directory(editor, child_relpath,
                                               children, props,
                                               SVN_INVALID_REVNUM));
            }
          else
            {
              SVN_ERR(add_subdir_ev2(new_source_root, target_root,
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

          SVN_ERR(svn_fs_node_proplist(&props, target_root,
                                       child_relpath, iterpool));

          SVN_ERR(svn_fs_file_contents(&contents, target_root,
                                       child_relpath, iterpool));

          SVN_ERR(svn_fs_file_checksum(&checksum, svn_checksum_sha1,
                                       target_root,
                                       child_relpath, TRUE, iterpool));

          SVN_ERR(svn_editor_add_file(editor, child_relpath, checksum,
                                      contents, props, SVN_INVALID_REVNUM));
        }
      else
        SVN_ERR_MALFUNCTION();
    }

  svn_pool_destroy(iterpool);

  return SVN_NO_ERROR;
}
