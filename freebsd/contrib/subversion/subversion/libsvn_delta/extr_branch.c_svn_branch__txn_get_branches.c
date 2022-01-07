
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {TYPE_1__* vtable; } ;
typedef TYPE_2__ svn_branch__txn_t ;
typedef int apr_pool_t ;
typedef int apr_array_header_t ;
struct TYPE_5__ {int * (* get_branches ) (TYPE_2__ const*,int *) ;} ;


 int * stub1 (TYPE_2__ const*,int *) ;

apr_array_header_t *
svn_branch__txn_get_branches(const svn_branch__txn_t *txn,
                             apr_pool_t *result_pool)
{
  apr_array_header_t *branches
    = txn->vtable->get_branches(txn,
                                result_pool);
  return branches;
}
