
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_revnum_t ;
typedef int svn_error_t ;
typedef int svn_delta_editor_t ;
typedef int svn_boolean_t ;
struct wrapped_replay_baton_t {int cb_baton; int editor; int provide_props_cb; int session; int replay_baton; int (* revstart_func ) (int ,int ,int *,int *,int *) ;} ;
struct svn_delta__extra_baton {int dummy; } ;
struct fp_baton {int cb_baton; int provide_props_cb; } ;
typedef int apr_pool_t ;
typedef int apr_hash_t ;


 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 struct fp_baton* apr_palloc (int *,int) ;
 void* apr_pcalloc (int *,int) ;
 int fetch_base ;
 int fetch_props ;
 int stub1 (int ,int ,int *,int *,int *) ;
 int svn_delta__delta_from_editor (int const**,void**,int ,int *,int *,int *,char const*,char const*,int ,int ,int ,int ,struct svn_delta__extra_baton*,int *) ;
 int svn_ra_get_repos_root2 (int ,char const**,int *) ;
 int svn_ra_get_session_url (int ,char const**,int *) ;
 char* svn_uri_skip_ancestor (char const*,char const*,int *) ;

__attribute__((used)) static svn_error_t *
revstart_func_wrapper(svn_revnum_t revision,
                      void *replay_baton,
                      const svn_delta_editor_t **deditor,
                      void **dedit_baton,
                      apr_hash_t *rev_props,
                      apr_pool_t *result_pool)
{
  struct wrapped_replay_baton_t *wrb = replay_baton;
  const char *repos_root;
  const char *session_url;
  const char *base_relpath;
  svn_boolean_t *found_abs_paths;
  struct fp_baton *fpb;
  struct svn_delta__extra_baton *exb;


  SVN_ERR(wrb->revstart_func(revision, wrb->replay_baton, &wrb->editor,
                             rev_props, result_pool));


  SVN_ERR(svn_ra_get_repos_root2(wrb->session, &repos_root, result_pool));
  SVN_ERR(svn_ra_get_session_url(wrb->session, &session_url, result_pool));
  base_relpath = svn_uri_skip_ancestor(repos_root, session_url, result_pool);




  found_abs_paths = apr_pcalloc(result_pool, sizeof(*found_abs_paths));



  fpb = apr_palloc(result_pool, sizeof(*fpb));
  fpb->provide_props_cb = wrb->provide_props_cb;
  fpb->cb_baton = wrb->cb_baton;


  exb = apr_pcalloc(result_pool, sizeof(*exb));





  SVN_ERR(svn_delta__delta_from_editor(deditor, dedit_baton, wrb->editor,
                                       ((void*)0), ((void*)0),
                                       found_abs_paths,
                                       repos_root, base_relpath,
                                       fetch_props, wrb->cb_baton,
                                       fetch_base, wrb->cb_baton,
                                       exb, result_pool));

  return SVN_NO_ERROR;
}
