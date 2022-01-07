
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int * sdb; } ;
typedef TYPE_1__ svn_wc__db_wcroot_t ;
struct TYPE_8__ {int apr_err; } ;
typedef TYPE_2__ svn_error_t ;
typedef int apr_status_t ;
typedef int apr_pool_t ;


 int APR_SUCCESS ;
 int SVN_ERR_ASSERT_NO_RETURN (int ) ;
 scalar_t__ getenv (char*) ;
 int svn_error_clear (TYPE_2__*) ;
 int * svn_pool_create (int *) ;
 int svn_pool_destroy (int *) ;
 TYPE_2__* svn_sqlite__close (int *) ;
 TYPE_2__* svn_wc__db_verify_db_full_internal (TYPE_1__*,int ,int *,int *) ;
 int verify_db_cb ;

__attribute__((used)) static apr_status_t
close_wcroot(void *data)
{
  svn_wc__db_wcroot_t *wcroot = data;
  svn_error_t *err;

  SVN_ERR_ASSERT_NO_RETURN(wcroot->sdb != ((void*)0));
  err = svn_sqlite__close(wcroot->sdb);
  wcroot->sdb = ((void*)0);
  if (err)
    {
      apr_status_t result = err->apr_err;
      svn_error_clear(err);
      return result;
    }

  return APR_SUCCESS;
}
