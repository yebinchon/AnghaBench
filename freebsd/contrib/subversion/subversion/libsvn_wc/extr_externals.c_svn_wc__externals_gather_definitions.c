
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;


struct TYPE_14__ {int db; } ;
typedef TYPE_1__ svn_wc_context_t ;
struct TYPE_15__ {int data; } ;
typedef TYPE_2__ svn_string_t ;
struct TYPE_16__ {scalar_t__ apr_err; } ;
typedef TYPE_3__ svn_error_t ;
typedef scalar_t__ svn_depth_t ;
typedef int apr_pool_t ;
typedef int apr_hash_t ;


 int SVN_ERR (int ) ;
 scalar_t__ SVN_ERR_WC_PATH_NOT_FOUND ;
 TYPE_3__* SVN_NO_ERROR ;
 int SVN_PROP_EXTERNALS ;
 int * apr_hash_make (int *) ;
 char* apr_pstrdup (int *,char const*) ;
 scalar_t__ svn_depth_infinity ;
 int svn_depth_to_word (scalar_t__) ;
 scalar_t__ svn_depth_unknown ;
 int svn_error_clear (TYPE_3__*) ;
 TYPE_3__* svn_error_trace (TYPE_3__*) ;
 int svn_hash_sets (int *,char const*,int ) ;
 TYPE_3__* svn_wc__db_externals_gather_definitions (int **,int **,int ,char const*,int *,int *) ;
 int svn_wc__db_read_info (int *,int *,int *,int *,int *,int *,int *,int *,int *,scalar_t__*,int *,int *,int *,int *,int *,int *,int *,int *,int *,int *,int *,int *,int *,int *,int *,int *,int *,int ,char const*,int *,int *) ;
 TYPE_3__* svn_wc_prop_get2 (TYPE_2__ const**,TYPE_1__*,char const*,int ,int *,int *) ;

svn_error_t *
svn_wc__externals_gather_definitions(apr_hash_t **externals,
                                     apr_hash_t **depths,
                                     svn_wc_context_t *wc_ctx,
                                     const char *local_abspath,
                                     svn_depth_t depth,
                                     apr_pool_t *result_pool,
                                     apr_pool_t *scratch_pool)
{
  if (depth == svn_depth_infinity
      || depth == svn_depth_unknown)
    {
      return svn_error_trace(
        svn_wc__db_externals_gather_definitions(externals, depths,
                                                wc_ctx->db, local_abspath,
                                                result_pool, scratch_pool));
    }
  else
    {
      const svn_string_t *value;
      svn_error_t *err;
      *externals = apr_hash_make(result_pool);

      local_abspath = apr_pstrdup(result_pool, local_abspath);

      err = svn_wc_prop_get2(&value, wc_ctx, local_abspath,
                             SVN_PROP_EXTERNALS, result_pool, scratch_pool);

      if (err)
        {
          if (err->apr_err != SVN_ERR_WC_PATH_NOT_FOUND)
            return svn_error_trace(err);

          svn_error_clear(err);
          value = ((void*)0);
        }

      if (value)
        svn_hash_sets(*externals, local_abspath, value->data);

      if (value && depths)
        {
          svn_depth_t node_depth;
          *depths = apr_hash_make(result_pool);

          SVN_ERR(svn_wc__db_read_info(((void*)0), ((void*)0), ((void*)0), ((void*)0), ((void*)0), ((void*)0),
                                       ((void*)0), ((void*)0), ((void*)0), &node_depth, ((void*)0),
                                       ((void*)0), ((void*)0), ((void*)0), ((void*)0), ((void*)0), ((void*)0),
                                       ((void*)0), ((void*)0), ((void*)0), ((void*)0), ((void*)0), ((void*)0),
                                       ((void*)0), ((void*)0), ((void*)0), ((void*)0),
                                       wc_ctx->db, local_abspath,
                                       scratch_pool, scratch_pool));

          svn_hash_sets(*depths, local_abspath, svn_depth_to_word(node_depth));
        }

      return SVN_NO_ERROR;
    }
}
