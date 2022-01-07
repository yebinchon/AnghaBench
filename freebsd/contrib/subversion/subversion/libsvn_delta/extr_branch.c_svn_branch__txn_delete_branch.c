
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int svn_error_t ;
struct TYPE_6__ {TYPE_1__* vtable; } ;
typedef TYPE_2__ svn_branch__txn_t ;
typedef int apr_pool_t ;
struct TYPE_5__ {int (* delete_branch ) (TYPE_2__*,char const*,int *) ;} ;


 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int stub1 (TYPE_2__*,char const*,int *) ;

svn_error_t *
svn_branch__txn_delete_branch(svn_branch__txn_t *txn,
                              const char *bid,
                              apr_pool_t *scratch_pool)
{
  SVN_ERR(txn->vtable->delete_branch(txn,
                                    bid,
                                    scratch_pool));
  return SVN_NO_ERROR;
}
