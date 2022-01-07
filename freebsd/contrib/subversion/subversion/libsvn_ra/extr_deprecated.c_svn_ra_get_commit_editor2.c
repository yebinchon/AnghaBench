
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_ra_session_t ;
typedef int svn_error_t ;
typedef int svn_delta_editor_t ;
typedef int svn_commit_callback2_t ;
typedef int svn_boolean_t ;
typedef int apr_pool_t ;
typedef int apr_hash_t ;


 int SVN_PROP_REVISION_LOG ;
 int * apr_hash_make (int *) ;
 int svn_hash_sets (int *,int ,int ) ;
 int * svn_ra_get_commit_editor3 (int *,int const**,void**,int *,int ,void*,int *,int ,int *) ;
 int svn_string_create (char const*,int *) ;

svn_error_t *svn_ra_get_commit_editor2(svn_ra_session_t *session,
                                       const svn_delta_editor_t **editor,
                                       void **edit_baton,
                                       const char *log_msg,
                                       svn_commit_callback2_t commit_callback,
                                       void *commit_baton,
                                       apr_hash_t *lock_tokens,
                                       svn_boolean_t keep_locks,
                                       apr_pool_t *pool)
{
  apr_hash_t *revprop_table = apr_hash_make(pool);
  if (log_msg)
    svn_hash_sets(revprop_table, SVN_PROP_REVISION_LOG,
                  svn_string_create(log_msg, pool));
  return svn_ra_get_commit_editor3(session, editor, edit_baton, revprop_table,
                                   commit_callback, commit_baton,
                                   lock_tokens, keep_locks, pool);
}
