
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {scalar_t__ apr_err; } ;
typedef TYPE_1__ svn_error_t ;
typedef int svn_client_ctx_t ;
typedef int svn_boolean_t ;
typedef int apr_pool_t ;
typedef int apr_getopt_t ;
typedef int apr_array_header_t ;


 int FALSE ;
 scalar_t__ SVN_ERR_RESERVED_FILENAME_SPECIFIED ;
 TYPE_1__* SVN_NO_ERROR ;
 int stderr ;
 TYPE_1__* svn_client_args_to_target_array2 (int **,int *,int const*,int *,int ,int *) ;
 int svn_error_clear (TYPE_1__*) ;
 TYPE_1__* svn_error_trace (TYPE_1__*) ;
 int svn_handle_error2 (TYPE_1__*,int ,int ,char*) ;

svn_error_t *
svn_cl__args_to_target_array_print_reserved(apr_array_header_t **targets,
                                            apr_getopt_t *os,
                                            const apr_array_header_t *known_targets,
                                            svn_client_ctx_t *ctx,
                                            svn_boolean_t keep_last_origpath_on_truepath_collision,
                                            apr_pool_t *pool)
{
  svn_error_t *err = svn_client_args_to_target_array2(targets,
                                                      os,
                                                      known_targets,
                                                      ctx,
                                                      keep_last_origpath_on_truepath_collision,
                                                      pool);
  if (err)
    {
      if (err->apr_err == SVN_ERR_RESERVED_FILENAME_SPECIFIED)
        {
          svn_handle_error2(err, stderr, FALSE, "svn: Skipping argument: ");
          svn_error_clear(err);
        }
      else
        return svn_error_trace(err);
    }
  return SVN_NO_ERROR;
}
