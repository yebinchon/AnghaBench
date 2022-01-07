
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_string_t ;
typedef int svn_error_t ;
struct change_rev_prop_baton {int rev; int fs; int const* value; int name; int ** old_value_p; } ;
typedef int apr_pool_t ;
typedef int apr_hash_t ;


 int SVN_ERR (int ) ;
 int SVN_ERR_FS_PROP_BASEVALUE_MISMATCH ;
 int * SVN_NO_ERROR ;
 int TRUE ;
 int _ (char*) ;
 int * svn_error_createf (int ,int *,int ,int ) ;
 int svn_fs_fs__get_revision_proplist (int **,int ,int ,int ,int *,int *) ;
 int * svn_fs_fs__set_revision_proplist (int ,int ,int *,int *) ;
 int * svn_hash_gets (int *,int ) ;
 int svn_hash_sets (int *,int ,int const*) ;
 scalar_t__ svn_string_compare (int const*,int const*) ;

__attribute__((used)) static svn_error_t *
change_rev_prop_body(void *baton, apr_pool_t *pool)
{
  struct change_rev_prop_baton *cb = baton;
  apr_hash_t *table;
  const svn_string_t *present_value;



  SVN_ERR(svn_fs_fs__get_revision_proplist(&table, cb->fs, cb->rev, TRUE,
                                           pool, pool));
  present_value = svn_hash_gets(table, cb->name);

  if (cb->old_value_p)
    {
      const svn_string_t *wanted_value = *cb->old_value_p;
      if ((!wanted_value != !present_value)
          || (wanted_value && present_value
              && !svn_string_compare(wanted_value, present_value)))
        {

          return svn_error_createf(SVN_ERR_FS_PROP_BASEVALUE_MISMATCH, ((void*)0),
                                   _("revprop '%s' has unexpected value in "
                                     "filesystem"),
                                   cb->name);
        }

    }


  if ((!present_value && !cb->value)
      || (present_value && cb->value
          && svn_string_compare(present_value, cb->value)))
    return SVN_NO_ERROR;

  svn_hash_sets(table, cb->name, cb->value);

  return svn_fs_fs__set_revision_proplist(cb->fs, cb->rev, table, pool);
}
