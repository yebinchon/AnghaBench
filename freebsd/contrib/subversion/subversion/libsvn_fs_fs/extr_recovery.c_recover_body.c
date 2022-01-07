
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


typedef scalar_t__ svn_revnum_t ;
typedef scalar_t__ svn_node_kind_t ;
struct TYPE_13__ {int uuid; TYPE_2__* fsap_data; } ;
typedef TYPE_1__ svn_fs_t ;
typedef int svn_fs_fs__revision_file_t ;
typedef int svn_error_t ;
typedef scalar_t__ svn_boolean_t ;
struct recover_baton {int cancel_baton; int (* cancel_func ) (int ) ;TYPE_1__* fs; } ;
struct TYPE_14__ {scalar_t__ format; scalar_t__ rep_sharing_allowed; } ;
typedef TYPE_2__ fs_fs_data_t ;
typedef scalar_t__ apr_uint64_t ;
typedef int apr_pool_t ;
typedef int apr_off_t ;


 int SVN_ERR (int ) ;
 int SVN_ERR_FS_CORRUPT ;
 scalar_t__ SVN_FS_FS__MIN_NO_GLOBAL_IDS_FORMAT ;
 scalar_t__ TRUE ;
 int _ (char*) ;
 int recover_find_max_ids (TYPE_1__*,scalar_t__,int *,int ,scalar_t__*,scalar_t__*,int *) ;
 int recover_get_largest_revision (TYPE_1__*,scalar_t__*,int *) ;
 int recover_get_root_offset (int *,scalar_t__,int *,int *) ;
 int stub1 (int ) ;
 int * svn_error_createf (int ,int *,int ,scalar_t__,...) ;
 int svn_fs_fs__close_revision_file (int *) ;
 int svn_fs_fs__del_rep_reference (TYPE_1__*,scalar_t__,int *) ;
 int svn_fs_fs__exists_rep_cache (scalar_t__*,TYPE_1__*,int *) ;
 int svn_fs_fs__open_pack_or_rev_file (int **,TYPE_1__*,scalar_t__,int *,int *) ;
 int svn_fs_fs__packed_revprop_available (scalar_t__*,TYPE_1__*,scalar_t__,int *) ;
 int svn_fs_fs__path_revprops (TYPE_1__*,scalar_t__,int *) ;
 int svn_fs_fs__set_uuid (TYPE_1__*,int ,int *,int *) ;
 int * svn_fs_fs__write_current (TYPE_1__*,scalar_t__,scalar_t__,scalar_t__,int *) ;
 int svn_fs_fs__youngest_rev (scalar_t__*,TYPE_1__*,int *) ;
 int svn_io_check_path (int ,scalar_t__*,int *) ;
 scalar_t__ svn_node_file ;
 scalar_t__ svn_node_none ;
 int svn_pool_clear (int *) ;
 int * svn_pool_create (int *) ;
 int svn_pool_destroy (int *) ;

__attribute__((used)) static svn_error_t *
recover_body(void *baton, apr_pool_t *pool)
{
  struct recover_baton *b = baton;
  svn_fs_t *fs = b->fs;
  fs_fs_data_t *ffd = fs->fsap_data;
  svn_revnum_t max_rev;
  apr_uint64_t next_node_id = 0;
  apr_uint64_t next_copy_id = 0;
  svn_revnum_t youngest_rev;
  svn_node_kind_t youngest_revprops_kind;




  SVN_ERR(svn_fs_fs__set_uuid(fs, fs->uuid, ((void*)0), pool));


  SVN_ERR(recover_get_largest_revision(fs, &max_rev, pool));


  SVN_ERR(svn_fs_fs__youngest_rev(&youngest_rev, fs, pool));
  if (youngest_rev > max_rev)
    return svn_error_createf(SVN_ERR_FS_CORRUPT, ((void*)0),
                             _("Expected current rev to be <= %ld "
                               "but found %ld"), max_rev, youngest_rev);



  if (ffd->format < SVN_FS_FS__MIN_NO_GLOBAL_IDS_FORMAT)
    {




      svn_revnum_t rev;
      apr_pool_t *iterpool = svn_pool_create(pool);

      for (rev = 0; rev <= max_rev; rev++)
        {
          svn_fs_fs__revision_file_t *rev_file;
          apr_off_t root_offset;

          svn_pool_clear(iterpool);

          if (b->cancel_func)
            SVN_ERR(b->cancel_func(b->cancel_baton));

          SVN_ERR(svn_fs_fs__open_pack_or_rev_file(&rev_file, fs, rev, pool,
                                                   iterpool));
          SVN_ERR(recover_get_root_offset(&root_offset, rev, rev_file, pool));
          SVN_ERR(recover_find_max_ids(fs, rev, rev_file, root_offset,
                                       &next_node_id, &next_copy_id, pool));
          SVN_ERR(svn_fs_fs__close_revision_file(rev_file));
        }
      svn_pool_destroy(iterpool);



      next_node_id++;
      next_copy_id++;
    }



  SVN_ERR(svn_io_check_path(svn_fs_fs__path_revprops(fs, max_rev, pool),
                            &youngest_revprops_kind, pool));
  if (youngest_revprops_kind == svn_node_none)
    {
      svn_boolean_t missing = TRUE;
      if (!svn_fs_fs__packed_revprop_available(&missing, fs, max_rev, pool))
        {
          if (missing)
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
    }
  else if (youngest_revprops_kind != svn_node_file)
    {
      return svn_error_createf(SVN_ERR_FS_CORRUPT, ((void*)0),
                               _("Revision %ld has a non-file where its "
                                 "revprops file should be"),
                               max_rev);
    }




  if (ffd->rep_sharing_allowed)
    {
      svn_boolean_t rep_cache_exists;

      SVN_ERR(svn_fs_fs__exists_rep_cache(&rep_cache_exists, fs, pool));
      if (rep_cache_exists)
        SVN_ERR(svn_fs_fs__del_rep_reference(fs, max_rev, pool));
    }



  return svn_fs_fs__write_current(fs, max_rev, next_node_id, next_copy_id,
                                  pool);
}
