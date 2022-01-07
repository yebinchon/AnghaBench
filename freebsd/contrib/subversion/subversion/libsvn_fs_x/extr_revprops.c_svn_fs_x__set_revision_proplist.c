
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef int svn_revnum_t ;
typedef scalar_t__ svn_node_kind_t ;
struct TYPE_11__ {int flush_to_disk; } ;
typedef TYPE_1__ svn_fs_x__data_t ;
typedef int svn_fs_x__batch_fsync_t ;
struct TYPE_12__ {TYPE_1__* fsap_data; } ;
typedef TYPE_2__ svn_fs_t ;
typedef int svn_error_t ;
typedef int svn_boolean_t ;
typedef int apr_pool_t ;
typedef int apr_hash_t ;
typedef int apr_array_header_t ;


 int FALSE ;
 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int TRUE ;
 int svn_fs_x__batch_fsync_create (int **,int ,int *) ;
 int svn_fs_x__ensure_revision_exists (int ,TYPE_2__*,int *) ;
 int svn_fs_x__is_packed_revprop (TYPE_2__*,int ) ;
 char* svn_fs_x__path_rev_absolute (TYPE_2__*,int ,int *) ;
 int svn_fs_x__path_revprops (TYPE_2__*,int ,int *) ;
 int svn_io_check_path (int ,scalar_t__*,int *) ;
 scalar_t__ svn_node_none ;
 int switch_to_new_revprop (TYPE_2__*,char const*,char const*,char const*,int *,int,int *,int *) ;
 int write_non_packed_revprop (char const**,char const**,TYPE_2__*,int ,int *,int *,int *,int *) ;
 int write_packed_revprop (char const**,char const**,int **,TYPE_2__*,int ,int *,int *,int *,int *) ;

svn_error_t *
svn_fs_x__set_revision_proplist(svn_fs_t *fs,
                                svn_revnum_t rev,
                                apr_hash_t *proplist,
                                apr_pool_t *scratch_pool)
{
  svn_boolean_t is_packed;
  svn_boolean_t bump_generation = FALSE;
  const char *final_path;
  const char *tmp_path;
  const char *perms_reference;
  apr_array_header_t *files_to_delete = ((void*)0);
  svn_fs_x__batch_fsync_t *batch;
  svn_fs_x__data_t *ffd = fs->fsap_data;

  SVN_ERR(svn_fs_x__ensure_revision_exists(rev, fs, scratch_pool));


  SVN_ERR(svn_fs_x__batch_fsync_create(&batch, ffd->flush_to_disk,
                                       scratch_pool));


  is_packed = svn_fs_x__is_packed_revprop(fs, rev);




  if (is_packed)
    {
      bump_generation = TRUE;
    }
  else
    {
      svn_node_kind_t kind;
      SVN_ERR(svn_io_check_path(svn_fs_x__path_revprops(fs, rev,
                                                        scratch_pool),
                                &kind, scratch_pool));
      bump_generation = kind != svn_node_none;
    }


  if (is_packed)
    SVN_ERR(write_packed_revprop(&final_path, &tmp_path, &files_to_delete,
                                 fs, rev, proplist, batch, scratch_pool,
                                 scratch_pool));
  else
    SVN_ERR(write_non_packed_revprop(&final_path, &tmp_path,
                                     fs, rev, proplist, batch,
                                     scratch_pool, scratch_pool));






  perms_reference = svn_fs_x__path_rev_absolute(fs, rev, scratch_pool);


  SVN_ERR(switch_to_new_revprop(fs, final_path, tmp_path, perms_reference,
                                files_to_delete, bump_generation, batch,
                                scratch_pool));

  return SVN_NO_ERROR;
}
