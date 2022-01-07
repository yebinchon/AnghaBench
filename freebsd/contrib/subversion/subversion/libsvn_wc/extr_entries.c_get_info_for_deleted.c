
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int revision; int deleted; int uuid; int repos; int has_props; int depth; int cmt_author; int cmt_date; int cmt_rev; } ;
typedef TYPE_1__ svn_wc_entry_t ;
typedef int svn_wc__db_wcroot_t ;
typedef int svn_wc__db_t ;
typedef scalar_t__ svn_wc__db_status_t ;
typedef int svn_wc__db_lock_t ;
typedef int svn_node_kind_t ;
typedef int svn_error_t ;
typedef int svn_checksum_t ;
typedef scalar_t__ svn_boolean_t ;
typedef int apr_pool_t ;
typedef int apr_int64_t ;


 int SVN_ERR (int ) ;
 int SVN_ERR_ASSERT (int ) ;
 int SVN_IS_VALID_REVNUM (int ) ;
 int * SVN_NO_ERROR ;
 int TRUE ;
 char* svn_relpath_dirname (char const*,int *) ;
 char* svn_relpath_join (char const*,int ,int *) ;
 int svn_relpath_skip_ancestor (char const*,char const*) ;
 int svn_wc__db_base_get_info_internal (scalar_t__*,int *,int *,char const**,int *,int *,int *,int *,int *,int const**,int *,int **,int *,int *,int *,int *,char const*,int *,int *) ;
 int svn_wc__db_fetch_repos_info (int *,int *,int *,int ,int *) ;
 int svn_wc__db_read_pristine_info (int *,int *,int *,int *,int *,int *,int const**,int *,int *,int *,int *,char const*,int *,int *) ;
 int svn_wc__db_scan_addition_internal (int *,int *,char const**,int *,int *,int *,int *,int *,char const*,int *,int *) ;
 int svn_wc__db_scan_deletion_internal (int *,int *,char const**,int *,int *,char const*,int *,int *) ;
 scalar_t__ svn_wc__db_status_not_present ;

__attribute__((used)) static svn_error_t *
get_info_for_deleted(svn_wc_entry_t *entry,
                     svn_node_kind_t *kind,
                     const char **repos_relpath,
                     const svn_checksum_t **checksum,
                     svn_wc__db_lock_t **lock,
                     svn_wc__db_t *db,
                     const char *entry_abspath,
                     svn_wc__db_wcroot_t *wcroot,
                     const char *entry_relpath,
                     const svn_wc_entry_t *parent_entry,
                     svn_boolean_t have_base,
                     svn_boolean_t have_more_work,
                     apr_pool_t *result_pool,
                     apr_pool_t *scratch_pool)
{
  if (have_base && !have_more_work)
    {
      apr_int64_t repos_id;

      SVN_ERR(svn_wc__db_base_get_info_internal(
                                       ((void*)0), kind,
                                       &entry->revision,
                                       repos_relpath,
                                       &repos_id,
                                       &entry->cmt_rev,
                                       &entry->cmt_date,
                                       &entry->cmt_author,
                                       &entry->depth,
                                       checksum,
                                       ((void*)0),
                                       lock,
                                       &entry->has_props, ((void*)0),
                                       ((void*)0),
                                       wcroot, entry_relpath,
                                       result_pool,
                                       scratch_pool));
      SVN_ERR(svn_wc__db_fetch_repos_info(&entry->repos, &entry->uuid,
                                          wcroot, repos_id, result_pool));
    }
  else
    {
      const char *work_del_relpath;
      const char *parent_repos_relpath;
      const char *parent_relpath;
      apr_int64_t repos_id;





      SVN_ERR(svn_wc__db_read_pristine_info(((void*)0), kind,
                                            &entry->cmt_rev,
                                            &entry->cmt_date,
                                            &entry->cmt_author,
                                            &entry->depth,
                                            checksum,
                                            ((void*)0),
                                            &entry->has_props, ((void*)0),
                                            db,
                                            entry_abspath,
                                            result_pool,
                                            scratch_pool));


     SVN_ERR(svn_wc__db_scan_deletion_internal(
                                      ((void*)0),
                                      ((void*)0),
                                      &work_del_relpath, ((void*)0),
                                      wcroot, entry_relpath,
                                      scratch_pool, scratch_pool));

      SVN_ERR_ASSERT(work_del_relpath != ((void*)0));
      parent_relpath = svn_relpath_dirname(work_del_relpath, scratch_pool);



      SVN_ERR(svn_wc__db_scan_addition_internal(
                                       ((void*)0), ((void*)0),
                                       &parent_repos_relpath,
                                       &repos_id,
                                       ((void*)0), ((void*)0), ((void*)0),
                                       wcroot, parent_relpath,
                                       result_pool, scratch_pool));
      SVN_ERR(svn_wc__db_fetch_repos_info(&entry->repos, &entry->uuid,
                                          wcroot, repos_id, result_pool));


      *repos_relpath = svn_relpath_join(parent_repos_relpath,
                                        svn_relpath_skip_ancestor(
                                                            parent_relpath,
                                                            entry_relpath),
                                        result_pool);




      if (have_base)
        {
          svn_wc__db_status_t status;
          SVN_ERR(svn_wc__db_base_get_info_internal(
                                           &status, ((void*)0), &entry->revision,
                                           ((void*)0), ((void*)0), ((void*)0), ((void*)0), ((void*)0), ((void*)0),
                                           ((void*)0), ((void*)0), lock, ((void*)0), ((void*)0),
                                           ((void*)0),
                                           wcroot, entry_relpath,
                                           result_pool, scratch_pool));

          if (status == svn_wc__db_status_not_present)
            entry->deleted = TRUE;
        }
    }


  if (!SVN_IS_VALID_REVNUM(entry->revision) && parent_entry != ((void*)0))
    {


      entry->revision = parent_entry->revision;
    }

  return SVN_NO_ERROR;
}
