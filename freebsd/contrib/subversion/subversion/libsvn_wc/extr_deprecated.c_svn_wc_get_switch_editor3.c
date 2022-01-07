
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_wc_traversal_info_t ;
typedef int svn_wc_notify_func2_t ;
typedef int * svn_wc_external_update_t ;
typedef int svn_wc_context_t ;
typedef scalar_t__ svn_wc_conflict_resolver_func_t ;
typedef int svn_wc_adm_access_t ;
typedef int svn_wc__db_t ;
typedef int svn_revnum_t ;
typedef int svn_error_t ;
typedef int svn_depth_t ;
typedef int svn_delta_editor_t ;
typedef int svn_cancel_func_t ;
typedef int svn_boolean_t ;
struct traversal_info_update_baton {int * traversal; int * db; } ;
struct conflict_func_1to2_baton {void* inner_baton; scalar_t__ inner_func; } ;
typedef int apr_pool_t ;
typedef int apr_array_header_t ;


 int FALSE ;
 int SVN_ERR (int ) ;
 int SVN_ERR_ASSERT (int) ;
 int * SVN_NO_ERROR ;
 struct traversal_info_update_baton* apr_palloc (int *,int) ;
 struct conflict_func_1to2_baton* apr_pcalloc (int *,int) ;
 int * conflict_func_1to2_wrapper ;
 int svn_path_cstring_to_utf8 (char const**,char const*,int *) ;
 scalar_t__ svn_uri_is_canonical (char const*,int *) ;
 int svn_wc__adm_access_abspath (int *) ;
 int * svn_wc__adm_get_db (int *) ;
 int svn_wc__context_create_with_db (int **,int *,int *,int *) ;
 int svn_wc_get_switch_editor4 (int const**,void**,int *,int *,int ,char const*,char const*,int ,int ,int ,int ,int ,char const*,int const*,int *,int *,int *,struct conflict_func_1to2_baton*,int *,struct traversal_info_update_baton*,int ,void*,int ,void*,int *,int *) ;
 int * traversal_info_update ;

svn_error_t *
svn_wc_get_switch_editor3(svn_revnum_t *target_revision,
                          svn_wc_adm_access_t *anchor,
                          const char *target,
                          const char *switch_url,
                          svn_boolean_t use_commit_times,
                          svn_depth_t depth,
                          svn_boolean_t depth_is_sticky,
                          svn_boolean_t allow_unver_obstructions,
                          svn_wc_notify_func2_t notify_func,
                          void *notify_baton,
                          svn_cancel_func_t cancel_func,
                          void *cancel_baton,
                          svn_wc_conflict_resolver_func_t conflict_func,
                          void *conflict_baton,
                          const char *diff3_cmd,
                          const apr_array_header_t *preserved_exts,
                          const svn_delta_editor_t **editor,
                          void **edit_baton,
                          svn_wc_traversal_info_t *traversal_info,
                          apr_pool_t *pool)
{
  svn_wc_context_t *wc_ctx;
  svn_wc__db_t *db = svn_wc__adm_get_db(anchor);
  svn_wc_external_update_t external_func = ((void*)0);
  struct traversal_info_update_baton *eb = ((void*)0);
  struct conflict_func_1to2_baton *cfw = ((void*)0);

  SVN_ERR_ASSERT(switch_url && svn_uri_is_canonical(switch_url, pool));

  SVN_ERR(svn_wc__context_create_with_db(&wc_ctx, ((void*)0), db, pool));

  if (traversal_info)
    {
      eb = apr_palloc(pool, sizeof(*eb));
      eb->db = db;
      eb->traversal = traversal_info;
      external_func = traversal_info_update;
    }

  if (conflict_func)
    {
      cfw = apr_pcalloc(pool, sizeof(*cfw));
      cfw->inner_func = conflict_func;
      cfw->inner_baton = conflict_baton;
    }

  if (diff3_cmd)
    SVN_ERR(svn_path_cstring_to_utf8(&diff3_cmd, diff3_cmd, pool));

  SVN_ERR(svn_wc_get_switch_editor4(editor, edit_baton,
                                    target_revision,
                                    wc_ctx,
                                    svn_wc__adm_access_abspath(anchor),
                                    target, switch_url,
                                    use_commit_times,
                                    depth, depth_is_sticky,
                                    allow_unver_obstructions,
                                    FALSE ,
                                    diff3_cmd,
                                    preserved_exts,
                                    ((void*)0), ((void*)0),
                                    conflict_func ? conflict_func_1to2_wrapper
                                                  : ((void*)0),
                                    cfw,
                                    external_func, eb,
                                    cancel_func, cancel_baton,
                                    notify_func, notify_baton,
                                    pool, pool));



  return SVN_NO_ERROR;
}
