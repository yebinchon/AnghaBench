
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_error_t ;
typedef int apr_status_t ;


 int APR_SUCCESS ;
 int svn_error_clear (int *) ;

__attribute__((used)) static apr_status_t
err_cleanup(void *data)
{
  svn_error_t *err = data;

  svn_error_clear(err);

  return APR_SUCCESS;
}
