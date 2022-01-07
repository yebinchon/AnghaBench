
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_revnum_t ;
typedef int svn_fs_t ;
typedef int svn_error_t ;
typedef scalar_t__ svn_boolean_t ;
typedef int apr_pool_t ;
typedef int apr_hash_t ;
typedef int apr_array_header_t ;


 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int svn_fs_fs__ensure_revision_exists (int ,int *,int *) ;
 scalar_t__ svn_fs_fs__is_packed_revprop (int *,int ) ;
 char* svn_fs_fs__path_rev_absolute (int *,int ,int *) ;
 int svn_fs_fs__reset_revprop_cache (int *) ;
 int switch_to_new_revprop (int *,char const*,char const*,char const*,int *,int *) ;
 int write_non_packed_revprop (char const**,char const**,int *,int ,int *,int *) ;
 int write_packed_revprop (char const**,char const**,int **,int *,int ,int *,int *) ;

svn_error_t *
svn_fs_fs__set_revision_proplist(svn_fs_t *fs,
                                 svn_revnum_t rev,
                                 apr_hash_t *proplist,
                                 apr_pool_t *pool)
{
  svn_boolean_t is_packed;
  const char *final_path;
  const char *tmp_path;
  const char *perms_reference;
  apr_array_header_t *files_to_delete = ((void*)0);

  SVN_ERR(svn_fs_fs__ensure_revision_exists(rev, fs, pool));


  is_packed = svn_fs_fs__is_packed_revprop(fs, rev);


  if (is_packed)
    SVN_ERR(write_packed_revprop(&final_path, &tmp_path, &files_to_delete,
                                 fs, rev, proplist, pool));
  else
    SVN_ERR(write_non_packed_revprop(&final_path, &tmp_path,
                                     fs, rev, proplist, pool));


  svn_fs_fs__reset_revprop_cache(fs);






  perms_reference = svn_fs_fs__path_rev_absolute(fs, rev, pool);


  SVN_ERR(switch_to_new_revprop(fs, final_path, tmp_path, perms_reference,
                                files_to_delete, pool));

  return SVN_NO_ERROR;
}
