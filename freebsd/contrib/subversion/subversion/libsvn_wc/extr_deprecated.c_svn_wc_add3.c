
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_wc_notify_func2_t ;
typedef int svn_wc_context_t ;
typedef int svn_wc_adm_access_t ;
typedef int svn_wc__db_t ;
typedef int svn_revnum_t ;
typedef scalar_t__ svn_node_kind_t ;
typedef int svn_error_t ;
typedef int svn_depth_t ;
typedef int svn_cancel_func_t ;
typedef int apr_pool_t ;


 int FALSE ;
 int SVN_ERR (int ) ;
 int TRUE ;
 int svn_dirent_get_absolute (char const**,char const*,int *) ;
 int * svn_error_trace (int ) ;
 scalar_t__ svn_node_dir ;
 int * svn_wc__adm_get_db (int *) ;
 int * svn_wc__adm_retrieve_internal2 (int *,char const*,int *) ;
 int svn_wc__context_create_with_db (int **,int *,int *,int *) ;
 int svn_wc__db_read_kind (scalar_t__*,int *,char const*,int ,int ,int ,int *) ;
 int svn_wc_add4 (int *,char const*,int ,char const*,int ,int ,void*,int ,void*,int *) ;
 int svn_wc_adm_access_pool (int *) ;
 int svn_wc_adm_open3 (int **,int *,char const*,int ,int,int ,void*,int ) ;
 int svn_wc_context_destroy (int *) ;

svn_error_t *
svn_wc_add3(const char *path,
            svn_wc_adm_access_t *parent_access,
            svn_depth_t depth,
            const char *copyfrom_url,
            svn_revnum_t copyfrom_rev,
            svn_cancel_func_t cancel_func,
            void *cancel_baton,
            svn_wc_notify_func2_t notify_func,
            void *notify_baton,
            apr_pool_t *pool)
{
  svn_wc_context_t *wc_ctx;
  svn_wc__db_t *wc_db = svn_wc__adm_get_db(parent_access);
  const char *local_abspath;

  SVN_ERR(svn_wc__context_create_with_db(&wc_ctx, ((void*)0), wc_db, pool));
  SVN_ERR(svn_dirent_get_absolute(&local_abspath, path, pool));

  SVN_ERR(svn_wc_add4(wc_ctx, local_abspath,
                      depth, copyfrom_url,
                      copyfrom_rev,
                      cancel_func, cancel_baton,
                      notify_func, notify_baton, pool));


  if (svn_wc__adm_retrieve_internal2(wc_db, local_abspath, pool) == ((void*)0))
    {
      svn_node_kind_t kind;

      SVN_ERR(svn_wc__db_read_kind(&kind, wc_db, local_abspath,
                                   FALSE ,
                                   TRUE ,
                                   FALSE , pool));
      if (kind == svn_node_dir)
        {
          svn_wc_adm_access_t *adm_access;



          SVN_ERR(svn_wc_adm_open3(&adm_access, parent_access, path, TRUE,
                                   copyfrom_url ? -1 : 0,
                                   cancel_func, cancel_baton,
                                   svn_wc_adm_access_pool(parent_access)));
        }
    }

  return svn_error_trace(svn_wc_context_destroy(wc_ctx));
}
