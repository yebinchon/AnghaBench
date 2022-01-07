
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {TYPE_1__* vtable; } ;
typedef TYPE_2__ svn_ra_session_t ;
typedef int svn_ra__provide_props_cb_t ;
typedef int svn_ra__provide_base_cb_t ;
typedef int svn_ra__get_copysrc_kind_cb_t ;
typedef int svn_error_t ;
typedef int svn_editor_t ;
typedef int svn_delta_editor_t ;
typedef int svn_delta__unlock_func_t ;
typedef int svn_commit_callback2_t ;
typedef int svn_cancel_func_t ;
typedef int svn_boolean_t ;
struct svn_delta__extra_baton {int baton; int (* start_edit ) (int ,int ) ;} ;
struct fp_baton {void* cb_baton; int provide_props_cb; } ;
typedef int apr_pool_t ;
typedef int apr_hash_t ;
struct TYPE_7__ {int (* get_commit_editor ) (TYPE_2__*,int const**,void**,int *,int ,void*,int *,int ,int *) ;} ;


 int SVN_ERR (int ) ;
 int SVN_INVALID_REVNUM ;
 int * SVN_NO_ERROR ;
 struct fp_baton* apr_palloc (int *,int) ;
 int * apr_pcalloc (int *,int) ;
 int fetch_props ;
 int stub1 (TYPE_2__*,int const**,void**,int *,int ,void*,int *,int ,int *) ;
 int stub2 (int ,int ) ;
 int svn_delta__editor_from_delta (int **,struct svn_delta__extra_baton**,int *,void**,int const*,void*,int *,char const*,char const*,int ,void*,int ,void*,int ,struct fp_baton*,int *,int *) ;
 int svn_ra_get_repos_root2 (TYPE_2__*,char const**,int *) ;
 int svn_ra_get_session_url (TYPE_2__*,char const**,int *) ;
 char* svn_uri_skip_ancestor (char const*,char const*,int *) ;

svn_error_t *
svn_ra__use_commit_shim(svn_editor_t **editor,
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
                        svn_cancel_func_t cancel_func,
                        void *cancel_baton,
                        apr_pool_t *result_pool,
                        apr_pool_t *scratch_pool)
{
  const svn_delta_editor_t *deditor;
  void *dedit_baton;
  struct svn_delta__extra_baton *exb;
  svn_delta__unlock_func_t unlock_func;
  void *unlock_baton;
  const char *repos_root;
  const char *session_url;
  const char *base_relpath;
  svn_boolean_t *found_abs_paths;
  struct fp_baton *fpb;






  SVN_ERR(session->vtable->get_commit_editor(session, &deditor, &dedit_baton,
                                             revprop_table,
                                             commit_callback, commit_baton,
                                             lock_tokens, keep_locks,
                                             result_pool));


  SVN_ERR(svn_ra_get_repos_root2(session, &repos_root, scratch_pool));
  SVN_ERR(svn_ra_get_session_url(session, &session_url, scratch_pool));
  base_relpath = svn_uri_skip_ancestor(repos_root, session_url, scratch_pool);




  found_abs_paths = apr_pcalloc(result_pool, sizeof(*found_abs_paths));



  fpb = apr_palloc(result_pool, sizeof(*fpb));
  fpb->provide_props_cb = provide_props_cb;
  fpb->cb_baton = cb_baton;





  SVN_ERR(svn_delta__editor_from_delta(editor, &exb,
                                       &unlock_func, &unlock_baton,
                                       deditor, dedit_baton,
                                       found_abs_paths,
                                       repos_root, base_relpath,
                                       cancel_func, cancel_baton,
                                       get_copysrc_kind_cb, cb_baton,
                                       fetch_props, fpb,
                                       result_pool, scratch_pool));
  if (exb->start_edit)
    {
      SVN_ERR(exb->start_edit(exb->baton, SVN_INVALID_REVNUM));
    }





  return SVN_NO_ERROR;
}
