
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {void* file; void* message; int * pool; struct TYPE_6__* child; } ;
typedef TYPE_1__ svn_error_t ;
typedef int apr_pool_t ;


 TYPE_1__* SVN_NO_ERROR ;
 int abort () ;
 void* apr_palloc (int *,int) ;
 int apr_pool_cleanup_null ;
 int apr_pool_cleanup_register (int *,TYPE_1__*,int ,int ) ;
 void* apr_pstrdup (int *,void*) ;
 int err_abort ;
 int * svn_pool_create (int *) ;

svn_error_t *
svn_error_dup(const svn_error_t *err)
{
  apr_pool_t *pool;
  svn_error_t *new_err = ((void*)0), *tmp_err = ((void*)0);

  if (!err)
    return SVN_NO_ERROR;

  pool = svn_pool_create(((void*)0));
  if (!pool)
    abort();

  for (; err; err = err->child)
    {
      if (! new_err)
        {
          new_err = apr_palloc(pool, sizeof(*new_err));
          tmp_err = new_err;
        }
      else
        {
          tmp_err->child = apr_palloc(pool, sizeof(*tmp_err->child));
          tmp_err = tmp_err->child;
        }
      *tmp_err = *err;
      tmp_err->pool = pool;
      if (tmp_err->message)
        tmp_err->message = apr_pstrdup(pool, tmp_err->message);
      if (tmp_err->file)
        tmp_err->file = apr_pstrdup(pool, tmp_err->file);
    }







  return new_err;
}
