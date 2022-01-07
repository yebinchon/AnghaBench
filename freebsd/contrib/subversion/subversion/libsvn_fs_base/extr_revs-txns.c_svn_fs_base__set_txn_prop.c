
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ kind; scalar_t__ proplist; } ;
typedef TYPE_1__ transaction_t ;
typedef int trail_t ;
typedef int svn_string_t ;
typedef int svn_fs_t ;
typedef int svn_error_t ;
typedef int apr_pool_t ;


 int FALSE ;
 int SVN_ERR (int ) ;
 char const* SVN_FS__PROP_TXN_CLIENT_DATE ;
 int * SVN_NO_ERROR ;
 int SVN_PROP_REVISION_DATE ;
 scalar_t__ apr_hash_make (int *) ;
 int get_txn (TYPE_1__**,int *,char const*,int ,int *,int *) ;
 int * put_txn (int *,TYPE_1__*,char const*,int *,int *) ;
 int strcmp (char const*,int ) ;
 int * svn_fs_base__err_txn_not_mutable (int *,char const*) ;
 scalar_t__ svn_hash_gets (scalar_t__,char const*) ;
 int svn_hash_sets (scalar_t__,char const*,int const*) ;
 int const* svn_string_create (char*,int *) ;
 scalar_t__ transaction_kind_normal ;

svn_error_t *
svn_fs_base__set_txn_prop(svn_fs_t *fs,
                          const char *txn_name,
                          const char *name,
                          const svn_string_t *value,
                          trail_t *trail,
                          apr_pool_t *pool)
{
  transaction_t *txn;

  SVN_ERR(get_txn(&txn, fs, txn_name, FALSE, trail, pool));
  if (txn->kind != transaction_kind_normal)
    return svn_fs_base__err_txn_not_mutable(fs, txn_name);


  if ((! txn->proplist) && (! value))
    return SVN_NO_ERROR;


  if (! txn->proplist)
    txn->proplist = apr_hash_make(pool);


  if (svn_hash_gets(txn->proplist, SVN_FS__PROP_TXN_CLIENT_DATE)
      && !strcmp(name, SVN_PROP_REVISION_DATE))
    svn_hash_sets(txn->proplist, SVN_FS__PROP_TXN_CLIENT_DATE,
                  svn_string_create("1", pool));
  svn_hash_sets(txn->proplist, name, value);


  return put_txn(fs, txn, txn_name, trail, pool);
}
