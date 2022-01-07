
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int svn_cancel_func_t ;
typedef int svn_branch__txn_vtable_t ;
struct TYPE_7__ {TYPE_4__* vtable; } ;
typedef TYPE_2__ svn_branch__txn_t ;
typedef int apr_pool_t ;
struct TYPE_6__ {int * state_pool; void* finished; void* within_callback; void* cancel_baton; int cancel_func; } ;
struct TYPE_8__ {TYPE_1__ vpriv; } ;


 void* FALSE ;
 TYPE_2__* apr_pcalloc (int *,int) ;
 TYPE_4__* apr_pmemdup (int *,int const*,int) ;

svn_branch__txn_t *
svn_branch__txn_create(const svn_branch__txn_vtable_t *vtable,
                       svn_cancel_func_t cancel_func,
                       void *cancel_baton,
                       apr_pool_t *result_pool)
{
  svn_branch__txn_t *txn = apr_pcalloc(result_pool, sizeof(*txn));

  txn->vtable = apr_pmemdup(result_pool, vtable, sizeof(*vtable));

  txn->vtable->vpriv.cancel_func = cancel_func;
  txn->vtable->vpriv.cancel_baton = cancel_baton;







  return txn;
}
