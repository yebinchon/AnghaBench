
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_wc__db_wcroot_t ;
typedef scalar_t__ svn_wc__db_status_t ;
typedef int svn_node_kind_t ;
typedef int svn_error_t ;
typedef int svn_boolean_t ;
typedef int apr_pool_t ;
typedef scalar_t__ apr_int64_t ;


 int FALSE ;
 int SVN_ERR (int ) ;
 int SVN_ERR_ASSERT (int) ;
 int SVN_ERR_WC_PATH_NOT_FOUND ;
 int * SVN_NO_ERROR ;
 int TRUE ;
 int _ (char*) ;
 int path_for_error_message (int *,char const*,int *) ;
 int read_info (scalar_t__*,int *,int *,char const**,scalar_t__*,int *,int *,int *,int *,int *,int *,int *,int *,int *,int *,int *,int *,int *,int *,int *,int *,int *,int *,int *,int *,int *,char const*,int *,int *) ;
 scalar_t__ strcmp (char const*,char const*) ;
 int * svn_error_createf (int ,int *,int ,int ) ;
 char* svn_relpath_join (char const*,char const*,int *) ;
 int svn_relpath_split (char const**,char const**,char const*,int *) ;
 int svn_wc__db_base_get_info_internal (int *,int *,int *,char const**,scalar_t__*,int *,int *,int *,int *,int *,int *,int *,int *,int *,int *,int *,char const*,int *,int *) ;
 scalar_t__ svn_wc__db_status_excluded ;
 scalar_t__ svn_wc__db_status_not_present ;
 scalar_t__ svn_wc__db_status_server_excluded ;

__attribute__((used)) static svn_error_t *
db_is_switched(svn_boolean_t *is_switched,
               svn_node_kind_t *kind,
               svn_wc__db_wcroot_t *wcroot,
               const char *local_relpath,
               apr_pool_t *scratch_pool)
{
  svn_wc__db_status_t status;
  apr_int64_t repos_id;
  const char *repos_relpath;
  const char *name;
  const char *parent_local_relpath;
  apr_int64_t parent_repos_id;
  const char *parent_repos_relpath;

  SVN_ERR_ASSERT(*local_relpath != '\0');

  SVN_ERR(read_info(&status, kind, ((void*)0), &repos_relpath, &repos_id, ((void*)0),
                    ((void*)0), ((void*)0), ((void*)0), ((void*)0), ((void*)0), ((void*)0), ((void*)0), ((void*)0), ((void*)0), ((void*)0),
                    ((void*)0), ((void*)0), ((void*)0), ((void*)0), ((void*)0), ((void*)0), ((void*)0), ((void*)0), ((void*)0),
                    wcroot, local_relpath, scratch_pool, scratch_pool));

  if (status == svn_wc__db_status_server_excluded
      || status == svn_wc__db_status_excluded
      || status == svn_wc__db_status_not_present)
    {
      return svn_error_createf(
                    SVN_ERR_WC_PATH_NOT_FOUND, ((void*)0),
                    _("The node '%s' was not found."),
                    path_for_error_message(wcroot, local_relpath,
                                           scratch_pool));
    }
  else if (! repos_relpath)
    {

      if (is_switched)
        *is_switched = FALSE;

      return SVN_NO_ERROR;
    }

  if (! is_switched)
    return SVN_NO_ERROR;

  svn_relpath_split(&parent_local_relpath, &name, local_relpath, scratch_pool);

  SVN_ERR(svn_wc__db_base_get_info_internal(((void*)0), ((void*)0), ((void*)0),
                                            &parent_repos_relpath,
                                            &parent_repos_id, ((void*)0), ((void*)0), ((void*)0),
                                            ((void*)0), ((void*)0), ((void*)0), ((void*)0), ((void*)0),
                                            ((void*)0), ((void*)0),
                                            wcroot, parent_local_relpath,
                                            scratch_pool, scratch_pool));

  if (repos_id != parent_repos_id)
    *is_switched = TRUE;
  else
    {
      const char *expected_relpath;

      expected_relpath = svn_relpath_join(parent_repos_relpath, name,
                                          scratch_pool);

      *is_switched = (strcmp(expected_relpath, repos_relpath) != 0);
    }

  return SVN_NO_ERROR;
}
