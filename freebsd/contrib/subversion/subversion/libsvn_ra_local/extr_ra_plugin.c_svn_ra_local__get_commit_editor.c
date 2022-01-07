
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {int pool; TYPE_3__* priv; } ;
typedef TYPE_2__ svn_ra_session_t ;
struct TYPE_9__ {TYPE_1__* fs_path; int repos_url; int repos; int useragent; int username; int fs; } ;
typedef TYPE_3__ svn_ra_local__session_baton_t ;
typedef int svn_error_t ;
typedef int svn_delta_editor_t ;
typedef int svn_commit_callback2_t ;
typedef int svn_boolean_t ;
struct deltify_etc_baton {void* commit_baton; int commit_cb; int * lock_tokens; int fspath_base; int repos; int fs; } ;
typedef int apr_pool_t ;
typedef int apr_hash_t ;
struct TYPE_7__ {int data; } ;


 int SVN_ERR (int ) ;
 int SVN_PROP_REVISION_AUTHOR ;
 int SVN_PROP_TXN_CLIENT_COMPAT_VERSION ;
 int SVN_PROP_TXN_USER_AGENT ;
 int SVN_VER_NUMBER ;
 int apply_lock_tokens (int ,int ,int *,int ,int *) ;
 int * apr_hash_copy (int *,int *) ;
 struct deltify_etc_baton* apr_palloc (int *,int) ;
 int deltify_etc ;
 int get_username (TYPE_2__*,int *) ;
 int remap_commit_callback (int *,void**,TYPE_2__*,int ,void*,int *) ;
 int svn_hash_sets (int *,int ,int ) ;
 int svn_path_uri_decode (int ,int *) ;
 int * svn_repos_get_commit_editor5 (int const**,void**,int ,int *,int ,int ,int *,int ,struct deltify_etc_baton*,int *,int *,int *) ;
 int svn_string_create (int ,int *) ;

__attribute__((used)) static svn_error_t *
svn_ra_local__get_commit_editor(svn_ra_session_t *session,
                                const svn_delta_editor_t **editor,
                                void **edit_baton,
                                apr_hash_t *revprop_table,
                                svn_commit_callback2_t callback,
                                void *callback_baton,
                                apr_hash_t *lock_tokens,
                                svn_boolean_t keep_locks,
                                apr_pool_t *pool)
{
  svn_ra_local__session_baton_t *sess = session->priv;
  struct deltify_etc_baton *deb = apr_palloc(pool, sizeof(*deb));


  remap_commit_callback(&callback, &callback_baton, session,
                        callback, callback_baton, pool);


  deb->fs = sess->fs;
  deb->repos = sess->repos;
  deb->fspath_base = sess->fs_path->data;
  if (! keep_locks)
    deb->lock_tokens = lock_tokens;
  else
    deb->lock_tokens = ((void*)0);
  deb->commit_cb = callback;
  deb->commit_baton = callback_baton;

  SVN_ERR(get_username(session, pool));


  SVN_ERR(apply_lock_tokens(sess->fs, sess->fs_path->data, lock_tokens,
                            session->pool, pool));


  revprop_table = apr_hash_copy(pool, revprop_table);
  svn_hash_sets(revprop_table, SVN_PROP_REVISION_AUTHOR,
                svn_string_create(sess->username, pool));
  svn_hash_sets(revprop_table, SVN_PROP_TXN_CLIENT_COMPAT_VERSION,
                svn_string_create(SVN_VER_NUMBER, pool));
  svn_hash_sets(revprop_table, SVN_PROP_TXN_USER_AGENT,
                svn_string_create(sess->useragent, pool));


  return svn_repos_get_commit_editor5
         (editor, edit_baton, sess->repos, ((void*)0),
          svn_path_uri_decode(sess->repos_url, pool), sess->fs_path->data,
          revprop_table, deltify_etc, deb, ((void*)0), ((void*)0), pool);
}
