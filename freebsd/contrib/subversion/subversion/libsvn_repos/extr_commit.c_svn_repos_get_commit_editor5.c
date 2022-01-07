
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int svn_repos_t ;
typedef int (* svn_repos_authz_callback_t ) (int ,int *,int *,int *,void*,int *) ;
typedef int svn_fs_txn_t ;
typedef int svn_error_t ;
struct TYPE_9__ {struct edit_baton* fetch_baton; int fetch_base_func; int fetch_kind_func; int fetch_props_func; } ;
typedef TYPE_1__ svn_delta_shim_callbacks_t ;
struct TYPE_10__ {int abort_edit; int close_edit; int change_file_prop; int apply_textdelta; int close_file; int open_file; int add_file; int change_dir_prop; int open_directory; int add_directory; int delete_entry; int open_root; } ;
typedef TYPE_2__ svn_delta_editor_t ;
typedef int svn_commit_callback2_t ;
typedef int svn_boolean_t ;
struct edit_baton {char const* repos_url_decoded; int base_path; int txn_owner; int * txn; int fs; int repos_name; int * repos; void* authz_baton; int (* authz_callback ) (int ,int *,int *,int *,void*,int *) ;void* commit_callback_baton; int commit_callback; int revprop_table; int * pool; } ;
typedef int apr_pool_t ;
typedef int apr_hash_t ;


 int SVN_ERR (int ) ;
 int SVN_ERR_AUTHZ_UNWRITABLE ;
 int * SVN_NO_ERROR ;
 int abort_edit ;
 int add_directory ;
 int add_file ;
 int apply_textdelta ;
 struct edit_baton* apr_pcalloc (int *,int) ;
 int change_dir_prop ;
 int change_file_prop ;
 int close_edit ;
 int close_file ;
 int delete_entry ;
 int fetch_base_func ;
 int fetch_kind_func ;
 int fetch_props_func ;
 int open_directory ;
 int open_file ;
 int open_root ;
 int svn_authz_write ;
 TYPE_2__* svn_delta_default_editor (int *) ;
 TYPE_1__* svn_delta_shim_callbacks_default (int *) ;
 int svn_dirent_basename (int ,int *) ;
 int svn_editor__insert_shims (TYPE_2__ const**,void**,TYPE_2__ const*,void*,char const*,int ,TYPE_1__*,int *,int *) ;
 int * svn_error_create (int ,int *,char*) ;
 int svn_fspath__canonicalize (char const*,int *) ;
 char* svn_path_uri_encode (char const*,int *) ;
 int * svn_pool_create (int *) ;
 int svn_prop_hash_dup (int *,int *) ;
 int svn_repos_fs (int *) ;
 int svn_repos_path (int *,int *) ;

svn_error_t *
svn_repos_get_commit_editor5(const svn_delta_editor_t **editor,
                             void **edit_baton,
                             svn_repos_t *repos,
                             svn_fs_txn_t *txn,
                             const char *repos_url_decoded,
                             const char *base_path,
                             apr_hash_t *revprop_table,
                             svn_commit_callback2_t commit_callback,
                             void *commit_baton,
                             svn_repos_authz_callback_t authz_callback,
                             void *authz_baton,
                             apr_pool_t *pool)
{
  svn_delta_editor_t *e;
  apr_pool_t *subpool = svn_pool_create(pool);
  struct edit_baton *eb;
  svn_delta_shim_callbacks_t *shim_callbacks =
                                    svn_delta_shim_callbacks_default(pool);
  const char *repos_url = svn_path_uri_encode(repos_url_decoded, pool);



  if (authz_callback)
    {
      svn_boolean_t allowed;

      SVN_ERR(authz_callback(svn_authz_write, &allowed, ((void*)0), ((void*)0),
                             authz_baton, pool));
      if (!allowed)
        return svn_error_create(SVN_ERR_AUTHZ_UNWRITABLE, ((void*)0),
                                "Not authorized to open a commit editor.");
    }


  e = svn_delta_default_editor(pool);
  eb = apr_pcalloc(subpool, sizeof(*eb));


  e->open_root = open_root;
  e->delete_entry = delete_entry;
  e->add_directory = add_directory;
  e->open_directory = open_directory;
  e->change_dir_prop = change_dir_prop;
  e->add_file = add_file;
  e->open_file = open_file;
  e->close_file = close_file;
  e->apply_textdelta = apply_textdelta;
  e->change_file_prop = change_file_prop;
  e->close_edit = close_edit;
  e->abort_edit = abort_edit;


  eb->pool = subpool;
  eb->revprop_table = svn_prop_hash_dup(revprop_table, subpool);
  eb->commit_callback = commit_callback;
  eb->commit_callback_baton = commit_baton;
  eb->authz_callback = authz_callback;
  eb->authz_baton = authz_baton;
  eb->base_path = svn_fspath__canonicalize(base_path, subpool);
  eb->repos = repos;
  eb->repos_url_decoded = repos_url_decoded;
  eb->repos_name = svn_dirent_basename(svn_repos_path(repos, subpool),
                                       subpool);
  eb->fs = svn_repos_fs(repos);
  eb->txn = txn;
  eb->txn_owner = txn == ((void*)0);

  *edit_baton = eb;
  *editor = e;

  shim_callbacks->fetch_props_func = fetch_props_func;
  shim_callbacks->fetch_kind_func = fetch_kind_func;
  shim_callbacks->fetch_base_func = fetch_base_func;
  shim_callbacks->fetch_baton = eb;

  SVN_ERR(svn_editor__insert_shims(editor, edit_baton, *editor, *edit_baton,
                                   repos_url, eb->base_path,
                                   shim_callbacks, pool, pool));

  return SVN_NO_ERROR;
}
