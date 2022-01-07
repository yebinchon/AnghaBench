
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {int pool; TYPE_3__* priv; } ;
typedef TYPE_2__ svn_ra_session_t ;
struct TYPE_9__ {int repos; int username; TYPE_1__* fs_path; int fs; } ;
typedef TYPE_3__ svn_ra_local__session_baton_t ;
typedef int svn_ra__provide_props_cb_t ;
typedef int svn_ra__provide_base_cb_t ;
typedef int svn_ra__get_copysrc_kind_cb_t ;
typedef int svn_error_t ;
typedef int svn_editor_t ;
typedef int svn_commit_callback2_t ;
typedef int svn_cancel_func_t ;
typedef int svn_boolean_t ;
struct deltify_etc_baton {void* commit_baton; int commit_cb; int * lock_tokens; int fspath_base; int repos; int fs; } ;
typedef int apr_pool_t ;
typedef int apr_hash_t ;
struct TYPE_7__ {int data; } ;


 int SVN_ERR (int ) ;
 int SVN_PROP_REVISION_AUTHOR ;
 int apply_lock_tokens (int ,int ,int *,int ,int *) ;
 int * apr_hash_copy (int *,int *) ;
 struct deltify_etc_baton* apr_palloc (int *,int) ;
 int deltify_etc ;
 int get_username (TYPE_2__*,int *) ;
 int remap_commit_callback (int *,void**,TYPE_2__*,int ,void*,int *) ;
 int * svn_error_trace (int ) ;
 int svn_hash_sets (int *,int ,int ) ;
 int svn_repos__get_commit_ev2 (int **,int ,int *,int *,int *,int *,int ,struct deltify_etc_baton*,int ,void*,int *,int *) ;
 int svn_string_create (int ,int *) ;

__attribute__((used)) static svn_error_t *
svn_ra_local__get_commit_ev2(svn_editor_t **editor,
                             svn_ra_session_t *session,
                             apr_hash_t *revprops,
                             svn_commit_callback2_t commit_cb,
                             void *commit_baton,
                             apr_hash_t *lock_tokens,
                             svn_boolean_t keep_locks,
                             svn_ra__provide_base_cb_t provide_base_cb,
                             svn_ra__provide_props_cb_t provide_props_cb,
                             svn_ra__get_copysrc_kind_cb_t get_copysrc_kind_cb,
                             void *cb_baton,
                             svn_cancel_func_t cancel_func,
                             void *cancel_baton,
                             apr_pool_t *result_pool,
                             apr_pool_t *scratch_pool)
{
  svn_ra_local__session_baton_t *sess = session->priv;
  struct deltify_etc_baton *deb = apr_palloc(result_pool, sizeof(*deb));

  remap_commit_callback(&commit_cb, &commit_baton, session,
                        commit_cb, commit_baton, result_pool);





  deb->fs = sess->fs;
  deb->repos = sess->repos;
  deb->fspath_base = sess->fs_path->data;
  if (! keep_locks)
    deb->lock_tokens = lock_tokens;
  else
    deb->lock_tokens = ((void*)0);
  deb->commit_cb = commit_cb;
  deb->commit_baton = commit_baton;



  SVN_ERR(get_username(session, scratch_pool));


  SVN_ERR(apply_lock_tokens(sess->fs, sess->fs_path->data, lock_tokens,
                            session->pool, scratch_pool));


  revprops = apr_hash_copy(scratch_pool, revprops);
  svn_hash_sets(revprops, SVN_PROP_REVISION_AUTHOR,
                svn_string_create(sess->username, scratch_pool));

  return svn_error_trace(svn_repos__get_commit_ev2(
                           editor, sess->repos, ((void*)0) ,
                           ((void*)0) , ((void*)0) ,
                           revprops,
                           deltify_etc, deb, cancel_func, cancel_baton,
                           result_pool, scratch_pool));
}
