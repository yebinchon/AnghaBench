
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {scalar_t__ apr_err; } ;
typedef TYPE_1__ svn_error_t ;
typedef int commit_context_t ;
typedef int apr_pool_t ;


 scalar_t__ SVN_ERR_APMOD_BAD_BASELINE ;
 TYPE_1__* SVN_NO_ERROR ;
 TYPE_1__* checkout_node (char const**,int const*,char const*,int *,int *) ;
 int svn_error_clear (TYPE_1__*) ;
 TYPE_1__* svn_error_trace (TYPE_1__*) ;

__attribute__((used)) static svn_error_t *
retry_checkout_node(const char **working_url,
                    const commit_context_t *commit_ctx,
                    const char *node_url,
                    apr_pool_t *result_pool,
                    apr_pool_t *scratch_pool)
{
  svn_error_t *err = SVN_NO_ERROR;
  int retry_count = 5;

  do
    {
      svn_error_clear(err);

      err = checkout_node(working_url, commit_ctx, node_url,
                          result_pool, scratch_pool);
      if (err && (err->apr_err != SVN_ERR_APMOD_BAD_BASELINE))
        return svn_error_trace(err);
    }
  while (err && retry_count--);

  return svn_error_trace(err);
}
