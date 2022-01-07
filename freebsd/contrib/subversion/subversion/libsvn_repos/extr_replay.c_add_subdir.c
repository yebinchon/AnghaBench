
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int svn_txdelta_window_handler_t ;
typedef int svn_txdelta_stream_t ;
typedef int svn_string_t ;
typedef int svn_revnum_t ;
typedef int * (* svn_repos_authz_func_t ) (void**,int *,char const*,void*,int *) ;
typedef int svn_fs_t ;
typedef int svn_fs_root_t ;
struct TYPE_6__ {scalar_t__ change_kind; char* copyfrom_path; int copyfrom_rev; void* copyfrom_known; } ;
typedef TYPE_1__ svn_fs_path_change3_t ;
struct TYPE_7__ {scalar_t__ kind; int name; } ;
typedef TYPE_2__ svn_fs_dirent_t ;
typedef int svn_error_t ;
struct TYPE_8__ {int * (* close_file ) (void*,int ,int *) ;int * (* apply_textdelta ) (void*,int *,int *,int *,void**) ;int * (* change_file_prop ) (void*,char const*,int *,int *) ;int * (* add_file ) (char const*,void*,int *,int ,int *,void**) ;int * (* close_directory ) (void*,int *) ;int * (* add_directory ) (char const*,void*,int *,int ,int *,void**) ;int * (* change_dir_prop ) (void*,char const*,int *,int *) ;} ;
typedef TYPE_3__ svn_delta_editor_t ;
typedef int svn_checksum_t ;
typedef void* svn_boolean_t ;
typedef int apr_pool_t ;
typedef int apr_hash_t ;
typedef int apr_hash_index_t ;


 int SVN_ERR (int *) ;
 int SVN_ERR_MALFUNCTION () ;
 int SVN_INVALID_REVNUM ;
 int * SVN_NO_ERROR ;
 void* TRUE ;
 int * apr_hash_first (int *,int *) ;
 int * apr_hash_next (int *) ;
 char* apr_hash_this_key (int *) ;
 void* apr_hash_this_val (int *) ;
 int * stub1 (char const*,void*,int *,int ,int *,void**) ;
 int * stub2 (void*,char const*,int *,int *) ;
 int * stub3 (char const*,void*,int *,int ,int *,void**) ;
 int * stub4 (void*,int *) ;
 int * stub5 (char const*,void*,int *,int ,int *,void**) ;
 int * stub6 (void*,char const*,int *,int *) ;
 int * stub7 (void*,int *,int *,int *,void**) ;
 int * stub8 (void*,int ,int *) ;
 int svn_checksum_md5 ;
 int svn_checksum_to_cstring (int *,int *) ;
 int * svn_fs_copied_from (int *,char**,int *,char const*,int *) ;
 int * svn_fs_dir_entries (int **,int *,char const*,int *) ;
 int * svn_fs_file_checksum (int **,int ,int *,char const*,void*,int *) ;
 int * svn_fs_get_file_delta_stream (int **,int *,int *,int *,char const*,int *) ;
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
 int * svn_txdelta_send_txstream (int *,int ,void*,int *) ;

__attribute__((used)) static svn_error_t *
add_subdir(svn_fs_root_t *source_root,
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
  apr_pool_t *subpool = svn_pool_create(pool);
  apr_hash_index_t *hi, *phi;
  apr_hash_t *dirents;
  apr_hash_t *props;

  SVN_ERR(editor->add_directory(edit_path, parent_baton, ((void*)0),
                                SVN_INVALID_REVNUM, pool, dir_baton));

  SVN_ERR(svn_fs_node_proplist(&props, target_root, edit_path, pool));

  for (phi = apr_hash_first(pool, props); phi; phi = apr_hash_next(phi))
    {
      const char *key = apr_hash_this_key(phi);
      svn_string_t *val = apr_hash_this_val(phi);

      svn_pool_clear(subpool);
      SVN_ERR(editor->change_dir_prop(*dir_baton, key, val, subpool));
    }




  SVN_ERR(svn_fs_dir_entries(&dirents, source_root, source_fspath, pool));

  for (hi = apr_hash_first(pool, dirents); hi; hi = apr_hash_next(hi))
    {
      svn_fs_path_change3_t *change;
      svn_boolean_t readable = TRUE;
      svn_fs_dirent_t *dent = apr_hash_this_val(hi);
      const char *copyfrom_path = ((void*)0);
      svn_revnum_t copyfrom_rev = SVN_INVALID_REVNUM;
      const char *new_edit_path;

      svn_pool_clear(subpool);

      new_edit_path = svn_relpath_join(edit_path, dent->name, subpool);





      change = svn_hash_gets(changed_paths, new_edit_path);
      if (change)
        {
          svn_hash_sets(changed_paths, new_edit_path, ((void*)0));


          if (change->change_kind == svn_fs_path_change_delete)
            continue;



          if (change->change_kind == svn_fs_path_change_replace)
            {
              if (! change->copyfrom_known)
                {
                  SVN_ERR(svn_fs_copied_from(&change->copyfrom_rev,
                                             &change->copyfrom_path,
                                             target_root, new_edit_path, pool));
                  change->copyfrom_known = TRUE;
                }
              copyfrom_path = change->copyfrom_path;
              copyfrom_rev = change->copyfrom_rev;
            }
        }

      if (authz_read_func)
        SVN_ERR(authz_read_func(&readable, target_root, new_edit_path,
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
              svn_fs_t *fs = svn_fs_root_fs(source_root);
              SVN_ERR(svn_fs_revision_root(&new_source_root, fs,
                                           copyfrom_rev, pool));
              new_source_fspath = copyfrom_path;
            }
          else
            {
              new_source_root = source_root;
              new_source_fspath = svn_fspath__join(source_fspath, dent->name,
                                                   subpool);
            }






          if (change && change->change_kind == svn_fs_path_change_replace
              && copyfrom_path == ((void*)0))
            {
              SVN_ERR(editor->add_directory(new_edit_path, *dir_baton,
                                            ((void*)0), SVN_INVALID_REVNUM,
                                            subpool, &new_dir_baton));
            }
          else
            {
              SVN_ERR(add_subdir(new_source_root, target_root,
                                 editor, edit_baton, new_edit_path,
                                 *dir_baton, new_source_fspath,
                                 authz_read_func, authz_read_baton,
                                 changed_paths, subpool, &new_dir_baton));
            }

          SVN_ERR(editor->close_directory(new_dir_baton, subpool));
        }
      else if (dent->kind == svn_node_file)
        {
          svn_txdelta_window_handler_t delta_handler;
          void *delta_handler_baton, *file_baton;
          svn_txdelta_stream_t *delta_stream;
          svn_checksum_t *checksum;

          SVN_ERR(editor->add_file(new_edit_path, *dir_baton, ((void*)0),
                                   SVN_INVALID_REVNUM, pool, &file_baton));

          SVN_ERR(svn_fs_node_proplist(&props, target_root,
                                       new_edit_path, subpool));

          for (phi = apr_hash_first(pool, props); phi; phi = apr_hash_next(phi))
            {
              const char *key = apr_hash_this_key(phi);
              svn_string_t *val = apr_hash_this_val(phi);

              SVN_ERR(editor->change_file_prop(file_baton, key, val, subpool));
            }

          SVN_ERR(editor->apply_textdelta(file_baton, ((void*)0), pool,
                                          &delta_handler,
                                          &delta_handler_baton));

          SVN_ERR(svn_fs_get_file_delta_stream(&delta_stream, ((void*)0), ((void*)0),
                                               target_root, new_edit_path,
                                               pool));

          SVN_ERR(svn_txdelta_send_txstream(delta_stream,
                                            delta_handler,
                                            delta_handler_baton,
                                            pool));

          SVN_ERR(svn_fs_file_checksum(&checksum, svn_checksum_md5, target_root,
                                       new_edit_path, TRUE, pool));
          SVN_ERR(editor->close_file(file_baton,
                                     svn_checksum_to_cstring(checksum, pool),
                                     pool));
        }
      else
        SVN_ERR_MALFUNCTION();
    }

  svn_pool_destroy(subpool);

  return SVN_NO_ERROR;
}
