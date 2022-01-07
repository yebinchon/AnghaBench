
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int svn_stream_t ;
typedef int svn_error_t ;
struct TYPE_6__ {TYPE_1__* vtable; } ;
typedef TYPE_2__ svn_branch__txn_t ;
typedef int apr_pool_t ;
struct TYPE_5__ {int (* serialize ) (TYPE_2__*,int *,int *) ;} ;


 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int stub1 (TYPE_2__*,int *,int *) ;

svn_error_t *
svn_branch__txn_serialize(svn_branch__txn_t *txn,
                          svn_stream_t *stream,
                          apr_pool_t *scratch_pool)
{
  SVN_ERR(txn->vtable->serialize(txn,
                                 stream,
                                 scratch_pool));
  return SVN_NO_ERROR;
}
