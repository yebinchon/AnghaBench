
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int cancel_baton; int cancel_func; TYPE_1__* vtable; } ;
typedef TYPE_2__ svn_ra_session_t ;
typedef int svn_ra__provide_props_cb_t ;
typedef int svn_ra__provide_base_cb_t ;
typedef int svn_ra__get_copysrc_kind_cb_t ;
typedef int svn_error_t ;
typedef int svn_editor_t ;
typedef int svn_commit_callback2_t ;
typedef int svn_boolean_t ;
typedef int apr_pool_t ;
typedef int apr_hash_t ;
struct TYPE_6__ {int (* get_commit_ev2 ) (int **,TYPE_2__*,int *,int ,void*,int *,int ,int ,int ,int ,void*,int ,int ,int *,int *) ;} ;


 int stub1 (int **,TYPE_2__*,int *,int ,void*,int *,int ,int ,int ,int ,void*,int ,int ,int *,int *) ;
 int * svn_error_trace (int ) ;
 int svn_ra__use_commit_shim (int **,TYPE_2__*,int *,int ,void*,int *,int ,int ,int ,int ,void*,int ,int ,int *,int *) ;

svn_error_t *
svn_ra__get_commit_ev2(svn_editor_t **editor,
                       svn_ra_session_t *session,
                       apr_hash_t *revprop_table,
                       svn_commit_callback2_t commit_callback,
                       void *commit_baton,
                       apr_hash_t *lock_tokens,
                       svn_boolean_t keep_locks,
                       svn_ra__provide_base_cb_t provide_base_cb,
                       svn_ra__provide_props_cb_t provide_props_cb,
                       svn_ra__get_copysrc_kind_cb_t get_copysrc_kind_cb,
                       void *cb_baton,
                       apr_pool_t *result_pool,
                       apr_pool_t *scratch_pool)
{
  if (session->vtable->get_commit_ev2 == ((void*)0))
    {



      return svn_error_trace(svn_ra__use_commit_shim(
                               editor,
                               session,
                               revprop_table,
                               commit_callback, commit_baton,
                               lock_tokens,
                               keep_locks,
                               provide_base_cb,
                               provide_props_cb,
                               get_copysrc_kind_cb,
                               cb_baton,
                               session->cancel_func, session->cancel_baton,
                               result_pool, scratch_pool));
    }




  return svn_error_trace(session->vtable->get_commit_ev2(
                           editor,
                           session,
                           revprop_table,
                           commit_callback, commit_baton,
                           lock_tokens,
                           keep_locks,
                           provide_base_cb,
                           provide_props_cb,
                           get_copysrc_kind_cb,
                           cb_baton,
                           session->cancel_func, session->cancel_baton,
                           result_pool, scratch_pool));
}
