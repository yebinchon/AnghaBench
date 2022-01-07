
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {TYPE_1__* vtable; } ;
typedef TYPE_2__ svn_ra_session_t ;
typedef int svn_error_t ;
typedef int svn_delta_editor_t ;
typedef int svn_commit_callback2_t ;
typedef int svn_boolean_t ;
typedef int apr_pool_t ;
typedef int apr_hash_t ;
struct TYPE_5__ {int * (* get_commit_editor ) (TYPE_2__*,int const**,void**,int *,int ,void*,int *,int ,int *) ;} ;


 int * stub1 (TYPE_2__*,int const**,void**,int *,int ,void*,int *,int ,int *) ;

svn_error_t *svn_ra_get_commit_editor3(svn_ra_session_t *session,
                                       const svn_delta_editor_t **editor,
                                       void **edit_baton,
                                       apr_hash_t *revprop_table,
                                       svn_commit_callback2_t commit_callback,
                                       void *commit_baton,
                                       apr_hash_t *lock_tokens,
                                       svn_boolean_t keep_locks,
                                       apr_pool_t *pool)
{
  return session->vtable->get_commit_editor(session, editor, edit_baton,
                                            revprop_table,
                                            commit_callback, commit_baton,
                                            lock_tokens, keep_locks, pool);
}
