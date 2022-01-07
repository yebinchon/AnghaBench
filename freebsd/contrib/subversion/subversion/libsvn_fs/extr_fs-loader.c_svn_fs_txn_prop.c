
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int svn_string_t ;
struct TYPE_6__ {TYPE_1__* vtable; } ;
typedef TYPE_2__ svn_fs_txn_t ;
typedef int svn_error_t ;
typedef int apr_pool_t ;
struct TYPE_5__ {int (* get_prop ) (int **,TYPE_2__*,char const*,int *) ;} ;


 int * SVN_NO_ERROR ;
 scalar_t__ is_internal_txn_prop (char const*) ;
 int stub1 (int **,TYPE_2__*,char const*,int *) ;
 int * svn_error_trace (int ) ;

svn_error_t *
svn_fs_txn_prop(svn_string_t **value_p, svn_fs_txn_t *txn,
                const char *propname, apr_pool_t *pool)
{
  if (is_internal_txn_prop(propname))
    {
      *value_p = ((void*)0);
      return SVN_NO_ERROR;
    }

  return svn_error_trace(txn->vtable->get_prop(value_p, txn, propname, pool));
}
