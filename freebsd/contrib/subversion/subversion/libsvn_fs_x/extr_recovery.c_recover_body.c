
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_3__ ;
typedef struct TYPE_17__ TYPE_2__ ;
typedef struct TYPE_16__ TYPE_1__ ;


typedef scalar_t__ svn_revnum_t ;
typedef scalar_t__ svn_node_kind_t ;
struct TYPE_16__ {scalar_t__ rep_sharing_allowed; } ;
typedef TYPE_1__ svn_fs_x__data_t ;
struct TYPE_17__ {int uuid; TYPE_1__* fsap_data; } ;
typedef TYPE_2__ svn_fs_t ;
typedef int svn_error_t ;
typedef scalar_t__ svn_boolean_t ;
struct TYPE_18__ {TYPE_2__* fs; } ;
typedef TYPE_3__ recover_baton_t ;
typedef int apr_pool_t ;


 scalar_t__ FALSE ;
 int SVN_ERR (int ) ;
 int SVN_ERR_FS_CORRUPT ;
 scalar_t__ TRUE ;
 int _ (char*) ;
 int discard_transactions (TYPE_2__*,int *) ;
 int recover_get_largest_revision (TYPE_2__*,scalar_t__*,int *) ;
 int reset_txn_number (TYPE_2__*,int *) ;
 int * svn_error_createf (int ,int *,int ,scalar_t__,...) ;
 int svn_fs_x__del_rep_reference (TYPE_2__*,scalar_t__,int *) ;
 int svn_fs_x__exists_rep_cache (scalar_t__*,TYPE_2__*,int *) ;
 scalar_t__ svn_fs_x__is_packed_revprop (TYPE_2__*,scalar_t__) ;
 scalar_t__ svn_fs_x__packed_revprop_available (scalar_t__*,TYPE_2__*,scalar_t__,int *) ;
 int svn_fs_x__path_revprops (TYPE_2__*,scalar_t__,int *) ;
 int svn_fs_x__reset_revprop_generation_file (TYPE_2__*,int *) ;
 int svn_fs_x__set_uuid (TYPE_2__*,int ,int *,scalar_t__,int *) ;
 int * svn_fs_x__write_current (TYPE_2__*,scalar_t__,int *) ;
 int svn_fs_x__youngest_rev (scalar_t__*,TYPE_2__*,int *) ;
 int svn_io_check_path (int ,scalar_t__*,int *) ;
 scalar_t__ svn_node_file ;
 scalar_t__ svn_node_none ;

__attribute__((used)) static svn_error_t *
recover_body(void *baton,
             apr_pool_t *scratch_pool)
{
  recover_baton_t *b = baton;
  svn_fs_t *fs = b->fs;
  svn_fs_x__data_t *ffd = fs->fsap_data;
  svn_revnum_t max_rev;
  svn_revnum_t youngest_rev;
  svn_boolean_t revprop_missing = TRUE;
  svn_boolean_t revprop_accessible = FALSE;


  SVN_ERR(svn_fs_x__reset_revprop_generation_file(fs, scratch_pool));




  SVN_ERR(svn_fs_x__set_uuid(fs, fs->uuid, ((void*)0), TRUE, scratch_pool));




  SVN_ERR(discard_transactions(fs, scratch_pool));
  SVN_ERR(reset_txn_number(fs, scratch_pool));


  SVN_ERR(recover_get_largest_revision(fs, &max_rev, scratch_pool));


  SVN_ERR(svn_fs_x__youngest_rev(&youngest_rev, fs, scratch_pool));
  if (youngest_rev > max_rev)
    return svn_error_createf(SVN_ERR_FS_CORRUPT, ((void*)0),
                             _("Expected current rev to be <= %ld "
                               "but found %ld"), max_rev, youngest_rev);



  if (svn_fs_x__is_packed_revprop(fs, max_rev))
    {
      revprop_accessible
        = svn_fs_x__packed_revprop_available(&revprop_missing, fs, max_rev,
                                             scratch_pool);
    }
  else
    {
      svn_node_kind_t youngest_revprops_kind;
      SVN_ERR(svn_io_check_path(svn_fs_x__path_revprops(fs, max_rev,
                                                        scratch_pool),
                                &youngest_revprops_kind, scratch_pool));

      if (youngest_revprops_kind == svn_node_file)
        {
          revprop_missing = FALSE;
          revprop_accessible = TRUE;
        }
      else if (youngest_revprops_kind != svn_node_none)
        {
          return svn_error_createf(SVN_ERR_FS_CORRUPT, ((void*)0),
                                  _("Revision %ld has a non-file where its "
                                    "revprops file should be"),
                                  max_rev);
        }
    }

  if (!revprop_accessible)
    {
      if (revprop_missing)
        {
          return svn_error_createf(SVN_ERR_FS_CORRUPT, ((void*)0),
                                  _("Revision %ld has a revs file but no "
                                    "revprops file"),
                                  max_rev);
        }
      else
        {
          return svn_error_createf(SVN_ERR_FS_CORRUPT, ((void*)0),
                                  _("Revision %ld has a revs file but the "
                                    "revprops file is inaccessible"),
                                  max_rev);
        }
    }




  if (ffd->rep_sharing_allowed)
    {
      svn_boolean_t rep_cache_exists;

      SVN_ERR(svn_fs_x__exists_rep_cache(&rep_cache_exists, fs,
                                         scratch_pool));
      if (rep_cache_exists)
        SVN_ERR(svn_fs_x__del_rep_reference(fs, max_rev, scratch_pool));
    }



  return svn_fs_x__write_current(fs, max_rev, scratch_pool);
}
