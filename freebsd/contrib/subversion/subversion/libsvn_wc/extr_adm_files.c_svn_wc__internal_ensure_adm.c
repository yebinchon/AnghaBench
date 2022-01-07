
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_wc__db_t ;
typedef scalar_t__ svn_wc__db_status_t ;
typedef int svn_revnum_t ;
typedef int svn_error_t ;
typedef int svn_depth_t ;
typedef int svn_boolean_t ;
typedef int apr_pool_t ;


 int SVN_ERR (int ) ;
 int SVN_ERR_ASSERT (int ) ;
 int SVN_ERR_WC_OBSTRUCTED_UPDATE ;
 int * SVN_NO_ERROR ;
 int TRUE ;
 int _ (char*) ;
 int init_adm (int *,char const*,char const*,char const*,char const*,int ,int ,int *) ;
 scalar_t__ strcmp (char const*,char const*) ;
 int svn_dirent_is_absolute (char const*) ;
 int * svn_error_createf (int ,int *,int ,char const*,char const*,char const*,...) ;
 int * svn_error_trace (int ) ;
 int svn_path_url_add_component2 (char const*,char const*,int *) ;
 int svn_relpath_skip_ancestor (char const*,char const*) ;
 char* svn_uri_skip_ancestor (char const*,char const*,int *) ;
 int svn_wc__db_base_get_info (int *,int *,int *,char const**,char const**,char const**,int *,int *,int *,int *,int *,int *,int *,int *,int *,int *,int *,char const*,int *,int *) ;
 int svn_wc__db_read_info (scalar_t__*,int *,int *,char const**,char const**,char const**,int *,int *,int *,int *,int *,int *,char const**,char const**,int *,int *,int *,int *,int *,int *,int *,int *,int *,int *,int *,int *,int *,int *,char const*,int *,int *) ;
 int svn_wc__db_scan_addition (int *,int *,char const**,char const**,char const**,int *,int *,int *,int *,int *,char const*,int *,int *) ;
 scalar_t__ svn_wc__db_status_added ;
 scalar_t__ svn_wc__db_status_deleted ;
 scalar_t__ svn_wc__db_status_not_present ;
 int svn_wc__internal_check_wc (int*,int *,char const*,int ,int *) ;

svn_error_t *
svn_wc__internal_ensure_adm(svn_wc__db_t *db,
                            const char *local_abspath,
                            const char *url,
                            const char *repos_root_url,
                            const char *repos_uuid,
                            svn_revnum_t revision,
                            svn_depth_t depth,
                            apr_pool_t *scratch_pool)
{
  int format;
  const char *original_repos_relpath;
  const char *original_root_url;
  svn_boolean_t is_op_root;
  const char *repos_relpath = svn_uri_skip_ancestor(repos_root_url, url,
                                                    scratch_pool);
  svn_wc__db_status_t status;
  const char *db_repos_relpath, *db_repos_root_url, *db_repos_uuid;
  svn_revnum_t db_revision;

  SVN_ERR_ASSERT(svn_dirent_is_absolute(local_abspath));
  SVN_ERR_ASSERT(url != ((void*)0));
  SVN_ERR_ASSERT(repos_root_url != ((void*)0));
  SVN_ERR_ASSERT(repos_uuid != ((void*)0));
  SVN_ERR_ASSERT(repos_relpath != ((void*)0));

  SVN_ERR(svn_wc__internal_check_wc(&format, db, local_abspath, TRUE,
                                    scratch_pool));



  if (format == 0)
    return svn_error_trace(init_adm(db, local_abspath,
                                    repos_relpath, repos_root_url, repos_uuid,
                                    revision, depth, scratch_pool));

  SVN_ERR(svn_wc__db_read_info(&status, ((void*)0),
                               &db_revision, &db_repos_relpath,
                               &db_repos_root_url, &db_repos_uuid,
                               ((void*)0), ((void*)0), ((void*)0), ((void*)0), ((void*)0), ((void*)0),
                               &original_repos_relpath, &original_root_url,
                               ((void*)0), ((void*)0), ((void*)0), ((void*)0), ((void*)0), ((void*)0),
                               ((void*)0), &is_op_root, ((void*)0), ((void*)0),
                               ((void*)0), ((void*)0), ((void*)0),
                               db, local_abspath, scratch_pool, scratch_pool));





  if (status != svn_wc__db_status_deleted
      && status != svn_wc__db_status_not_present)
    {

      if (db_revision != revision)
        return
          svn_error_createf(SVN_ERR_WC_OBSTRUCTED_UPDATE, ((void*)0),
                            _("Revision %ld doesn't match existing "
                              "revision %ld in '%s'"),
                            revision, db_revision, local_abspath);

      if (!db_repos_root_url)
        {
          if (status == svn_wc__db_status_added)
            SVN_ERR(svn_wc__db_scan_addition(((void*)0), ((void*)0),
                                             &db_repos_relpath,
                                             &db_repos_root_url,
                                             &db_repos_uuid,
                                             ((void*)0), ((void*)0), ((void*)0), ((void*)0),
                                             db, local_abspath,
                                             scratch_pool, scratch_pool));
          else
            SVN_ERR(svn_wc__db_base_get_info(((void*)0), ((void*)0), ((void*)0),
                                             &db_repos_relpath,
                                             &db_repos_root_url,
                                             &db_repos_uuid, ((void*)0), ((void*)0), ((void*)0),
                                             ((void*)0), ((void*)0), ((void*)0), ((void*)0), ((void*)0),
                                             ((void*)0), ((void*)0),
                                             db, local_abspath,
                                             scratch_pool, scratch_pool));
        }






      if (strcmp(db_repos_uuid, repos_uuid)
          || strcmp(db_repos_root_url, repos_root_url)
          || !svn_relpath_skip_ancestor(db_repos_relpath, repos_relpath))
        {
          if (!is_op_root
              || original_root_url == ((void*)0)
              || strcmp(original_root_url, repos_root_url)
              || strcmp(original_repos_relpath, repos_relpath))
            return
              svn_error_createf(SVN_ERR_WC_OBSTRUCTED_UPDATE, ((void*)0),
                                _("URL '%s' (uuid: '%s') doesn't match existing "
                                  "URL '%s' (uuid: '%s') in '%s'"),
                                url,
                                db_repos_uuid,
                                svn_path_url_add_component2(db_repos_root_url,
                                                            db_repos_relpath,
                                                            scratch_pool),
                                repos_uuid,
                                local_abspath);
        }
    }

  return SVN_NO_ERROR;
}
