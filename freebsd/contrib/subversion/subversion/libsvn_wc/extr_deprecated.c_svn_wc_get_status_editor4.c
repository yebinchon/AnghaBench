
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_wc_traversal_info_t ;
typedef int svn_wc_status_func3_t ;
typedef int svn_wc_context_t ;
typedef int svn_wc_adm_access_t ;
typedef int svn_wc__db_t ;
typedef int svn_revnum_t ;
typedef int svn_error_t ;
typedef int svn_depth_t ;
typedef int svn_delta_editor_t ;
typedef int svn_cancel_func_t ;
typedef int svn_boolean_t ;
struct status4_wrapper_baton {char const* anchor_abspath; int * anchor_relpath; int * wc_ctx; void* old_baton; int old_func; } ;
typedef int apr_pool_t ;
typedef int apr_array_header_t ;


 int FALSE ;
 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int TRUE ;
 struct status4_wrapper_baton* apr_palloc (int *,int) ;
 int gather_traversal_info (int *,char const*,char const*,int ,int *,int ,int ,int *) ;
 int status4_wrapper_func ;
 int svn_depth_unknown ;
 int svn_dirent_is_absolute (void*) ;
 char* svn_dirent_join (char const*,char const*,int *) ;
 char* svn_wc__adm_access_abspath (int *) ;
 int * svn_wc__adm_get_db (int *) ;
 int svn_wc__context_create_with_db (int **,int *,int *,int *) ;
 void* svn_wc_adm_access_path (int *) ;
 int svn_wc_get_status_editor5 (int const**,void**,void**,int *,int *,char const*,char const*,int ,int ,int ,int,int ,int const*,int ,struct status4_wrapper_baton*,int ,void*,int *,int *) ;

svn_error_t *
svn_wc_get_status_editor4(const svn_delta_editor_t **editor,
                          void **edit_baton,
                          void **set_locks_baton,
                          svn_revnum_t *edit_revision,
                          svn_wc_adm_access_t *anchor,
                          const char *target,
                          svn_depth_t depth,
                          svn_boolean_t get_all,
                          svn_boolean_t no_ignore,
                          const apr_array_header_t *ignore_patterns,
                          svn_wc_status_func3_t status_func,
                          void *status_baton,
                          svn_cancel_func_t cancel_func,
                          void *cancel_baton,
                          svn_wc_traversal_info_t *traversal_info,
                          apr_pool_t *pool)
{
  struct status4_wrapper_baton *swb = apr_palloc(pool, sizeof(*swb));
  svn_wc__db_t *wc_db;
  svn_wc_context_t *wc_ctx;
  const char *anchor_abspath;

  swb->old_func = status_func;
  swb->old_baton = status_baton;

  wc_db = svn_wc__adm_get_db(anchor);

  SVN_ERR(svn_wc__context_create_with_db(&wc_ctx, ((void*)0) ,
                                         wc_db, pool));

  swb->wc_ctx = wc_ctx;

  anchor_abspath = svn_wc__adm_access_abspath(anchor);

  if (!svn_dirent_is_absolute(svn_wc_adm_access_path(anchor)))
    {
      swb->anchor_abspath = anchor_abspath;
      swb->anchor_relpath = svn_wc_adm_access_path(anchor);
    }
  else
    {
      swb->anchor_abspath = ((void*)0);
      swb->anchor_relpath = ((void*)0);
    }





  SVN_ERR(svn_wc_get_status_editor5(editor, edit_baton, set_locks_baton,
                                    edit_revision, wc_ctx, anchor_abspath,
                                    target, depth, get_all,
                                    no_ignore,
                                    (depth != svn_depth_unknown) ,
                                    FALSE ,
                                    ignore_patterns,
                                    status4_wrapper_func, swb,
                                    cancel_func, cancel_baton,
                                    pool, pool));

  if (traversal_info)
    {
      const char *local_path = svn_wc_adm_access_path(anchor);
      const char *local_abspath = anchor_abspath;
      if (*target)
        {
          local_path = svn_dirent_join(local_path, target, pool);
          local_abspath = svn_dirent_join(local_abspath, target, pool);
        }

      SVN_ERR(gather_traversal_info(wc_ctx, local_abspath, local_path, depth,
                                    traversal_info, TRUE, TRUE,
                                    pool));
    }



  return SVN_NO_ERROR;
}
