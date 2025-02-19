
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int svn_string_t ;
typedef int svn_revnum_t ;
typedef int svn_fs_t ;
typedef int svn_error_t ;
struct TYPE_3__ {char const* name; int const* value; int const* const* old_value_p; int rev; int * fs; } ;
typedef TYPE_1__ change_rev_prop_baton_t ;
typedef int apr_pool_t ;


 int SVN_ERR (int ) ;
 int TRUE ;
 int change_rev_prop_body ;
 int svn_fs__check_fs (int *,int ) ;
 int * svn_fs_x__with_write_lock (int *,int ,TYPE_1__*,int *) ;

svn_error_t *
svn_fs_x__change_rev_prop(svn_fs_t *fs,
                          svn_revnum_t rev,
                          const char *name,
                          const svn_string_t *const *old_value_p,
                          const svn_string_t *value,
                          apr_pool_t *scratch_pool)
{
  change_rev_prop_baton_t cb;

  SVN_ERR(svn_fs__check_fs(fs, TRUE));

  cb.fs = fs;
  cb.rev = rev;
  cb.name = name;
  cb.old_value_p = old_value_p;
  cb.value = value;

  return svn_fs_x__with_write_lock(fs, change_rev_prop_body, &cb,
                                   scratch_pool);
}
