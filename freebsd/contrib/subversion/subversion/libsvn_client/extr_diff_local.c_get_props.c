
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_1__ ;


typedef int svn_wc_context_t ;
struct TYPE_8__ {scalar_t__ apr_err; } ;
typedef TYPE_1__ svn_error_t ;
typedef int apr_pool_t ;
typedef int apr_hash_t ;


 scalar_t__ SVN_ERR_WC_NOT_WORKING_COPY ;
 scalar_t__ SVN_ERR_WC_PATH_NOT_FOUND ;
 TYPE_1__* SVN_NO_ERROR ;
 int * apr_hash_make (int *) ;
 int svn_error_clear (TYPE_1__*) ;
 TYPE_1__* svn_error_trace (TYPE_1__*) ;
 TYPE_1__* svn_wc_prop_list2 (int **,int *,char const*,int *,int *) ;

__attribute__((used)) static svn_error_t *
get_props(apr_hash_t **props,
          const char *local_abspath,
          svn_wc_context_t *wc_ctx,
          apr_pool_t *result_pool,
          apr_pool_t *scratch_pool)
{
  svn_error_t *err;

  err = svn_wc_prop_list2(props, wc_ctx, local_abspath, result_pool,
                          scratch_pool);
  if (err)
    {
      if (err->apr_err == SVN_ERR_WC_PATH_NOT_FOUND ||
          err->apr_err == SVN_ERR_WC_NOT_WORKING_COPY)
        {
          svn_error_clear(err);
          *props = apr_hash_make(result_pool);


        }
      else
        return svn_error_trace(err);
    }

  return SVN_NO_ERROR;
}
