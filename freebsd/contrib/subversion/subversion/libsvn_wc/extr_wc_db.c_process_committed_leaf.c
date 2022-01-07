
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int abspath; } ;
typedef TYPE_1__ svn_wc__db_wcroot_t ;
typedef int svn_wc__db_t ;
typedef scalar_t__ svn_wc__db_status_t ;
typedef int svn_skel_t ;
typedef int svn_revnum_t ;
typedef scalar_t__ svn_node_kind_t ;
typedef int svn_error_t ;
typedef int svn_checksum_t ;
typedef scalar_t__ svn_boolean_t ;
typedef int apr_time_t ;
typedef int apr_pool_t ;
typedef int apr_hash_t ;


 int FALSE ;
 int SVN_ERR (int ) ;
 int SVN_ERR_ASSERT (int) ;
 int SVN_ERR_WC_NOT_LOCKED ;
 int * SVN_NO_ERROR ;
 int _ (char*) ;
 int commit_node (TYPE_1__*,char const*,int ,int ,int ,char const*,int const*,int *,int,int,int *,int *) ;
 int flush_entries (TYPE_1__*,char const*,int ,int *) ;
 int path_for_error_message (TYPE_1__*,char const*,int *) ;
 int svn_depth_empty ;
 int svn_dirent_join (int ,char const*,int *) ;
 int * svn_error_createf (int ,int *,int ,int ) ;
 scalar_t__ svn_node_dir ;
 char* svn_relpath_dirname (char const*,int *) ;
 int svn_wc__db_read_info_internal (int *,int *,int *,int *,int *,int *,int *,char const**,int *,int *,int *,int *,int *,int *,int *,int *,int *,int *,int *,int *,int *,int *,int *,int *,int *,TYPE_1__*,char const*,int *,int *) ;
 scalar_t__ svn_wc__db_status_added ;
 scalar_t__ svn_wc__db_status_deleted ;
 scalar_t__ svn_wc__db_status_incomplete ;
 scalar_t__ svn_wc__db_status_normal ;
 scalar_t__ svn_wc__db_status_not_present ;
 int svn_wc__db_wclock_owns_lock_internal (scalar_t__*,TYPE_1__*,char const*,int ,int *) ;
 int svn_wc__wq_build_file_commit (int **,int *,int ,scalar_t__,int *,int *) ;

__attribute__((used)) static svn_error_t *
process_committed_leaf(svn_wc__db_t *db,
                       svn_wc__db_wcroot_t *wcroot,
                       const char *local_relpath,
                       svn_boolean_t via_recurse,
                       svn_wc__db_status_t status,
                       svn_node_kind_t kind,
                       svn_boolean_t prop_mods,
                       const svn_checksum_t *old_checksum,
                       svn_revnum_t new_revnum,
                       apr_time_t new_changed_date,
                       const char *new_changed_author,
                       apr_hash_t *new_dav_cache,
                       svn_boolean_t remove_lock,
                       svn_boolean_t remove_changelist,
                       const svn_checksum_t *checksum,
                       apr_pool_t *scratch_pool)
{
  svn_revnum_t new_changed_rev = new_revnum;
  svn_skel_t *work_item = ((void*)0);

  {
    const char *lock_relpath;
    svn_boolean_t locked;

    if (kind == svn_node_dir)
      lock_relpath = local_relpath;
    else
      lock_relpath = svn_relpath_dirname(local_relpath, scratch_pool);

    SVN_ERR(svn_wc__db_wclock_owns_lock_internal(&locked, wcroot,
                                                 lock_relpath, FALSE,
                                                 scratch_pool));

    if (!locked)
      return svn_error_createf(SVN_ERR_WC_NOT_LOCKED, ((void*)0),
                             _("No write-lock in '%s'"),
                             path_for_error_message(wcroot, local_relpath,
                                                    scratch_pool));

    SVN_ERR(flush_entries(wcroot, lock_relpath, svn_depth_empty,
                          scratch_pool));
  }

  if (status == svn_wc__db_status_not_present)
    {






      return SVN_NO_ERROR;
    }

  SVN_ERR_ASSERT(status == svn_wc__db_status_normal
                 || status == svn_wc__db_status_incomplete
                 || status == svn_wc__db_status_added
                 || status == svn_wc__db_status_deleted);

  if (kind != svn_node_dir
      && status != svn_wc__db_status_deleted)
    {



      if (checksum == ((void*)0))
        {


          SVN_ERR_ASSERT(old_checksum != ((void*)0));

          checksum = old_checksum;


          if (via_recurse && !prop_mods)
            {







              SVN_ERR(svn_wc__db_read_info_internal(
                                           ((void*)0), ((void*)0), ((void*)0), ((void*)0), ((void*)0),
                                           &new_changed_rev,
                                           &new_changed_date,
                                           &new_changed_author, ((void*)0), ((void*)0),
                                           ((void*)0), ((void*)0), ((void*)0), ((void*)0), ((void*)0),
                                           ((void*)0), ((void*)0), ((void*)0), ((void*)0),
                                           ((void*)0), ((void*)0), ((void*)0), ((void*)0),
                                           ((void*)0), ((void*)0),
                                           wcroot, local_relpath,
                                           scratch_pool, scratch_pool));
            }
        }

      SVN_ERR(svn_wc__wq_build_file_commit(&work_item,
                                           db, svn_dirent_join(wcroot->abspath,
                                                               local_relpath,
                                                               scratch_pool),
                                           prop_mods,
                                           scratch_pool, scratch_pool));
    }


  SVN_ERR(commit_node(wcroot, local_relpath,
                      new_revnum, new_changed_rev,
                      new_changed_date, new_changed_author,
                      checksum,
                      new_dav_cache,
                      !remove_changelist,
                      !remove_lock,
                      work_item,
                      scratch_pool));

  return SVN_NO_ERROR;
}
