
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ apr_err; } ;
typedef TYPE_1__ svn_error_t ;
typedef int apr_pool_t ;


 int EXIT_FAILURE ;
 int FALSE ;
 scalar_t__ SVN_ERR_IO_PIPE_WRITE_ERROR ;
 int stderr ;
 int svn_error_clear (TYPE_1__*) ;
 int svn_handle_error2 (TYPE_1__*,int ,int ,char const*) ;
 int svn_pool_destroy (int *) ;

int
svn_cmdline_handle_exit_error(svn_error_t *err,
                              apr_pool_t *pool,
                              const char *prefix)
{







  if (err->apr_err != SVN_ERR_IO_PIPE_WRITE_ERROR)
    svn_handle_error2(err, stderr, FALSE, prefix);
  svn_error_clear(err);
  if (pool)
    svn_pool_destroy(pool);
  return EXIT_FAILURE;
}
