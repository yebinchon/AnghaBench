
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ apr_status_t ;
typedef int apr_file_t ;


 scalar_t__ apr_file_unlock (int *) ;

__attribute__((used)) static apr_status_t
file_clear_locks(void *arg)
{
  apr_status_t apr_err;
  apr_file_t *f = arg;


  apr_err = apr_file_unlock(f);
  if (apr_err)
    return apr_err;

  return 0;
}
