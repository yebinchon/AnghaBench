
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {struct TYPE_7__* child; int * pool; void* file; void* message; } ;
typedef TYPE_1__ svn_error_t ;
typedef int apr_pool_t ;


 TYPE_1__* apr_palloc (int *,int) ;
 int apr_pool_cleanup_kill (int *,TYPE_1__*,int ) ;
 int apr_pool_cleanup_null ;
 int apr_pool_cleanup_register (int *,TYPE_1__*,int ,int ) ;
 void* apr_pstrdup (int *,void*) ;
 int err_abort ;
 int svn_pool_destroy (int *) ;

void
svn_error_compose(svn_error_t *chain, svn_error_t *new_err)
{
  apr_pool_t *pool = chain->pool;
  apr_pool_t *oldpool = new_err->pool;

  while (chain->child)
    chain = chain->child;







  while (new_err)
    {
      chain->child = apr_palloc(pool, sizeof(*chain->child));
      chain = chain->child;
      *chain = *new_err;
      if (chain->message)
        chain->message = apr_pstrdup(pool, new_err->message);
      if (chain->file)
        chain->file = apr_pstrdup(pool, new_err->file);
      chain->pool = pool;




      new_err = new_err->child;
    }
  svn_pool_destroy(oldpool);
}
