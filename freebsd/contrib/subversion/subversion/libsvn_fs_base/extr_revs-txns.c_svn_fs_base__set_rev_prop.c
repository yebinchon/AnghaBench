
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ proplist; } ;
typedef TYPE_1__ transaction_t ;
typedef int trail_t ;
typedef int svn_string_t ;
typedef int svn_revnum_t ;
typedef int svn_fs_t ;
typedef int svn_error_t ;
typedef int apr_pool_t ;


 int SVN_ERR (int ) ;
 int SVN_ERR_FS_PROP_BASEVALUE_MISMATCH ;
 int * SVN_NO_ERROR ;
 int _ (char*) ;
 scalar_t__ apr_hash_make (int *) ;
 int get_rev_txn (TYPE_1__**,char const**,int *,int ,int *,int *) ;
 int * put_txn (int *,TYPE_1__*,char const*,int *,int *) ;
 int * svn_error_createf (int ,int *,int ,char const*) ;
 int * svn_hash_gets (scalar_t__,char const*) ;
 int svn_hash_sets (scalar_t__,char const*,int const*) ;
 scalar_t__ svn_string_compare (int const*,int const*) ;

svn_error_t *
svn_fs_base__set_rev_prop(svn_fs_t *fs,
                          svn_revnum_t rev,
                          const char *name,
                          const svn_string_t *const *old_value_p,
                          const svn_string_t *value,
                          trail_t *trail,
                          apr_pool_t *pool)
{
  transaction_t *txn;
  const char *txn_id;
  const svn_string_t *present_value;

  SVN_ERR(get_rev_txn(&txn, &txn_id, fs, rev, trail, pool));
  present_value = svn_hash_gets(txn->proplist, name);


  if ((! txn->proplist) && (! value))
    return SVN_NO_ERROR;


  if (! txn->proplist)
    txn->proplist = apr_hash_make(pool);


  if (old_value_p)
    {
      const svn_string_t *wanted_value = *old_value_p;
      if ((!wanted_value != !present_value)
          || (wanted_value && present_value
              && !svn_string_compare(wanted_value, present_value)))
        {

          return svn_error_createf(SVN_ERR_FS_PROP_BASEVALUE_MISMATCH, ((void*)0),
                                   _("revprop '%s' has unexpected value in "
                                     "filesystem"),
                                   name);
        }

    }


  if ((!present_value && !value)
      || (present_value && value
          && svn_string_compare(present_value, value)))
    return SVN_NO_ERROR;

  svn_hash_sets(txn->proplist, name, value);


  return put_txn(fs, txn, txn_id, trail, pool);
}
