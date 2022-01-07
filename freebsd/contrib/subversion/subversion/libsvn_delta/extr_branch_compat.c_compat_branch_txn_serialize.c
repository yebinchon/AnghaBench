
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int svn_stream_t ;
typedef int svn_error_t ;
struct TYPE_5__ {TYPE_1__* priv; } ;
typedef TYPE_2__ svn_branch__txn_t ;
typedef int apr_pool_t ;
struct TYPE_4__ {int txn; } ;


 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int svn_branch__txn_serialize (int ,int *,int *) ;

__attribute__((used)) static svn_error_t *
compat_branch_txn_serialize(svn_branch__txn_t *txn,
                            svn_stream_t *stream,
                            apr_pool_t *scratch_pool)
{

  SVN_ERR(svn_branch__txn_serialize(txn->priv->txn,
                                    stream,
                                    scratch_pool));
  return SVN_NO_ERROR;
}
