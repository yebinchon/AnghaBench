
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int apr_status_t ;
typedef int apr_pool_t ;
typedef int apr_file_t ;


 int apr_file_dup2 (int *,int *,int *) ;
 int apr_file_open_stderr (int **,int *) ;
 int apr_file_open_stdout (int **,int *) ;

__attribute__((used)) static apr_status_t redirect_stdout(void *arg)
{
  apr_pool_t *pool = arg;
  apr_file_t *out_file, *err_file;
  apr_status_t apr_err;

  if ((apr_err = apr_file_open_stdout(&out_file, pool)))
    return apr_err;
  if ((apr_err = apr_file_open_stderr(&err_file, pool)))
    return apr_err;
  return apr_file_dup2(out_file, err_file, pool);
}
