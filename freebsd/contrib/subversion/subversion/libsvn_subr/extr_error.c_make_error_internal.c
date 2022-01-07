
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {long line; void* file; int * pool; struct TYPE_6__* child; scalar_t__ apr_err; } ;
typedef TYPE_1__ svn_error_t ;
typedef scalar_t__ apr_status_t ;
typedef int apr_pool_t ;


 scalar_t__ APR_ENOTIMPL ;
 scalar_t__ APR_SUCCESS ;
 int abort () ;
 TYPE_1__* apr_pcalloc (int *,int) ;
 int apr_pool_cleanup_null ;
 int apr_pool_cleanup_register (int *,TYPE_1__*,int ,int ) ;
 scalar_t__ apr_threadkey_private_get (void**,scalar_t__) ;
 int err_abort ;
 void* error_file ;
 scalar_t__ error_file_key ;
 long error_line ;
 scalar_t__ error_line_key ;
 int * svn_pool_create (int *) ;

__attribute__((used)) static svn_error_t *
make_error_internal(apr_status_t apr_err,
                    svn_error_t *child)
{
  apr_pool_t *pool;
  svn_error_t *new_error;





  if (child)
    pool = child->pool;
  else
    {
      pool = svn_pool_create(((void*)0));
      if (!pool)
        abort();
    }


  new_error = apr_pcalloc(pool, sizeof(*new_error));


  new_error->apr_err = apr_err;
  new_error->child = child;
  new_error->pool = pool;
  return new_error;
}
