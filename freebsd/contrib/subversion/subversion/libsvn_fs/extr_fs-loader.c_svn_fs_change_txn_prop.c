
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
struct TYPE_5__ {int (* change_prop ) (TYPE_2__*,char const*,int const*,int *) ;} ;


 int SVN_ERR_INCORRECT_PARAMS ;
 int _ (char*) ;
 scalar_t__ is_internal_txn_prop (char const*) ;
 int stub1 (TYPE_2__*,char const*,int const*,int *) ;
 int * svn_error_createf (int ,int *,int ,char const*) ;
 int * svn_error_trace (int ) ;

svn_error_t *
svn_fs_change_txn_prop(svn_fs_txn_t *txn, const char *name,
                       const svn_string_t *value, apr_pool_t *pool)
{
  if (is_internal_txn_prop(name))
    return svn_error_createf(SVN_ERR_INCORRECT_PARAMS, ((void*)0),
                             _("Attempt to modify internal transaction "
                               "property '%s'"), name);

  return svn_error_trace(txn->vtable->change_prop(txn, name, value, pool));
}
