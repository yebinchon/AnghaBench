
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_string_t ;
typedef int svn_revnum_t ;
typedef int svn_fs_t ;
typedef int svn_error_t ;
struct change_rev_prop_args {char const* name; int const* value; int const* const* old_value_p; int rev; } ;
typedef int apr_pool_t ;


 int SVN_ERR (int ) ;
 int TRUE ;
 int svn_fs__check_fs (int *,int ) ;
 int * svn_fs_base__retry_txn (int *,int ,struct change_rev_prop_args*,int ,int *) ;
 int txn_body_change_rev_prop ;

svn_error_t *
svn_fs_base__change_rev_prop(svn_fs_t *fs,
                             svn_revnum_t rev,
                             const char *name,
                             const svn_string_t *const *old_value_p,
                             const svn_string_t *value,
                             apr_pool_t *pool)
{
  struct change_rev_prop_args args;

  SVN_ERR(svn_fs__check_fs(fs, TRUE));

  args.rev = rev;
  args.name = name;
  args.old_value_p = old_value_p;
  args.value = value;
  return svn_fs_base__retry_txn(fs, txn_body_change_rev_prop, &args,
                                TRUE, pool);
}
