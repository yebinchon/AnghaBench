
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_35__ TYPE_3__ ;
typedef struct TYPE_34__ TYPE_2__ ;
typedef struct TYPE_33__ TYPE_1__ ;


typedef int svn_wc__db_wcroot_t ;
struct TYPE_33__ {int state_pool; int dir_data; int verify_format; int timeout; int exclusive; } ;
typedef TYPE_1__ svn_wc__db_t ;
typedef scalar_t__ svn_wc__db_status_t ;
typedef int svn_sqlite__db_t ;
typedef scalar_t__ svn_node_kind_t ;
struct TYPE_34__ {scalar_t__ apr_err; } ;
typedef TYPE_2__ svn_error_t ;
typedef int svn_boolean_t ;
typedef int apr_pool_t ;
typedef int apr_int64_t ;
struct TYPE_35__ {int size; } ;
typedef TYPE_3__ apr_finfo_t ;


 int APR_FINFO_SIZE ;
 scalar_t__ APR_STATUS_IS_ENOENT (scalar_t__) ;
 int FALSE ;
 int SDB_FILE ;
 int STMT_VERIFICATION_TRIGGERS ;
 int SVN_ERR (TYPE_2__*) ;
 scalar_t__ SVN_ERR_SQLITE_ERROR ;
 scalar_t__ SVN_ERR_WC_CORRUPT ;
 scalar_t__ SVN_ERR_WC_NOT_WORKING_COPY ;
 scalar_t__ SVN_ERR_WC_PATH_NOT_FOUND ;
 scalar_t__ SVN_ERR_WC_UNSUPPORTED_FORMAT ;
 scalar_t__ SVN_ERR_WC_UPGRADE_REQUIRED ;
 TYPE_2__* SVN_NO_ERROR ;
 int SVN_WC__ADM_ENTRIES ;
 int SVN_WC__ERR_IS_NOT_CURRENT_WC (TYPE_2__*) ;
 int SVN_WC__WC_NG_VERSION ;
 int TRUE ;
 int UNKNOWN_WC_ID ;
 int _ (char*) ;
 int apr_pstrdup (int ,char const*) ;
 char* compute_relpath (int *,char const*,int *) ;
 TYPE_2__* fetch_sdb_info (int *,int*,int *,int *) ;
 TYPE_2__* get_old_version (int*,char const*,int *) ;
 TYPE_2__* get_path_kind (scalar_t__*,TYPE_1__*,char const*,int *) ;
 TYPE_2__* read_link_target (char const**,char const*,int *) ;
 scalar_t__ strcmp (char const*,char const*) ;
 int strlen (char const*) ;
 char* svn_dirent_dirname (char const*,int *) ;
 scalar_t__ svn_dirent_is_root (char const*,int ) ;
 char* svn_dirent_join (char const*,char const*,int *) ;
 int svn_dirent_local_style (char const*,int *) ;
 int svn_dirent_split (char const**,char const**,char const*,int *) ;
 int svn_error_clear (TYPE_2__*) ;
 TYPE_2__* svn_error_compose_create (TYPE_2__*,TYPE_2__*) ;
 TYPE_2__* svn_error_createf (scalar_t__,TYPE_2__*,int ,int ) ;
 TYPE_2__* svn_error_quick_wrapf (TYPE_2__*,int ,int ) ;
 TYPE_2__* svn_error_trace (TYPE_2__*) ;
 int * svn_hash_gets (int ,char const*) ;
 int svn_hash_sets (int ,int ,int *) ;
 TYPE_2__* svn_io_check_path (char const*,scalar_t__*,int *) ;
 TYPE_2__* svn_io_check_resolved_path (char const*,scalar_t__*,int *) ;
 TYPE_2__* svn_io_stat (TYPE_3__*,char const*,int ,int *) ;
 scalar_t__ svn_node_dir ;
 scalar_t__ svn_node_none ;
 scalar_t__ svn_node_symlink ;
 char* svn_relpath_join (char const*,char const*,int *) ;
 TYPE_2__* svn_sqlite__close (int *) ;
 TYPE_2__* svn_sqlite__exec_statements (int *,int ) ;
 int svn_sqlite__mode_readwrite ;
 char* svn_wc__adm_child (char const*,int ,int *) ;
 TYPE_2__* svn_wc__db_pdh_create_wcroot (int **,int ,int *,int ,int,int ,int ,int *) ;
 TYPE_2__* svn_wc__db_read_info_internal (scalar_t__*,int *,int *,int *,int *,int *,int *,int *,int *,int *,int *,int *,int *,int *,int *,int *,int *,int *,int*,int *,int *,int *,int *,int *,int *,int *,char const*,int *,int *) ;
 scalar_t__ svn_wc__db_status_excluded ;
 scalar_t__ svn_wc__db_status_not_present ;
 scalar_t__ svn_wc__db_status_server_excluded ;
 TYPE_2__* svn_wc__db_util_open_db (int **,char const*,int ,int ,int ,int ,int *,int ,int *) ;
 char* svn_wc_get_adm_dir (int *) ;

svn_error_t *
svn_wc__db_wcroot_parse_local_abspath(svn_wc__db_wcroot_t **wcroot,
                                      const char **local_relpath,
                                      svn_wc__db_t *db,
                                      const char *local_abspath,
                                      apr_pool_t *result_pool,
                                      apr_pool_t *scratch_pool)
{
  const char *local_dir_abspath;
  const char *original_abspath = local_abspath;
  svn_node_kind_t kind;
  const char *build_relpath;
  svn_wc__db_wcroot_t *probe_wcroot;
  svn_wc__db_wcroot_t *found_wcroot = ((void*)0);
  const char *scan_abspath;
  svn_sqlite__db_t *sdb = ((void*)0);
  svn_boolean_t moved_upwards = FALSE;
  svn_boolean_t always_check = FALSE;
  int wc_format = 0;
  const char *adm_relpath;

  const char *symlink_wcroot_abspath = ((void*)0);





  probe_wcroot = svn_hash_gets(db->dir_data, local_abspath);
  if (probe_wcroot != ((void*)0))
    {
      *wcroot = probe_wcroot;






      *local_relpath = compute_relpath(probe_wcroot, local_abspath,
                                       result_pool);

      return SVN_NO_ERROR;
    }





  SVN_ERR(get_path_kind(&kind, db, local_abspath, scratch_pool));
  if (kind != svn_node_dir)
    {
      svn_dirent_split(&local_dir_abspath, &build_relpath, local_abspath,
                       scratch_pool);


      probe_wcroot = svn_hash_gets(db->dir_data, local_dir_abspath);
      if (probe_wcroot != ((void*)0))
        {
          const char *dir_relpath;

          *wcroot = probe_wcroot;


          dir_relpath = compute_relpath(probe_wcroot, local_dir_abspath,
                                        ((void*)0));
          *local_relpath = svn_relpath_join(dir_relpath,
                                            build_relpath,
                                            result_pool);
          return SVN_NO_ERROR;
        }





      if (kind == svn_node_none)
        always_check = TRUE;


      local_abspath = local_dir_abspath;
    }
  else
    {


      build_relpath = "";


      local_dir_abspath = local_abspath;
    }
  adm_relpath = svn_wc_get_adm_dir(scratch_pool);
  while (TRUE)
    {
      svn_error_t *err;
      svn_node_kind_t adm_subdir_kind;

      const char *adm_subdir = svn_dirent_join(local_abspath, adm_relpath,
                                               scratch_pool);

      SVN_ERR(svn_io_check_path(adm_subdir, &adm_subdir_kind, scratch_pool));

      if (adm_subdir_kind == svn_node_dir)
        {
          err = svn_wc__db_util_open_db(&sdb, local_abspath, SDB_FILE,
                                        svn_sqlite__mode_readwrite,
                                        db->exclusive, db->timeout, ((void*)0),
                                        db->state_pool, scratch_pool);
          if (err == ((void*)0))
            {
              break;
            }
          if (err->apr_err != SVN_ERR_SQLITE_ERROR
              && !APR_STATUS_IS_ENOENT(err->apr_err))
            return svn_error_trace(err);
          svn_error_clear(err);
          if (!moved_upwards || always_check)
            {
              SVN_ERR(get_old_version(&wc_format, local_abspath,
                                      scratch_pool));
              if (wc_format != 0)
                break;
            }
        }



      if (svn_dirent_is_root(local_abspath, strlen(local_abspath)))
        {






          if (kind == svn_node_symlink)
            {
              svn_node_kind_t resolved_kind;

              local_abspath = original_abspath;

              SVN_ERR(svn_io_check_resolved_path(local_abspath,
                                                 &resolved_kind,
                                                 scratch_pool));
              if (resolved_kind == svn_node_dir)
                {

                  found_wcroot = svn_hash_gets(db->dir_data, local_abspath);
                  if (found_wcroot)
                    break;

                  symlink_wcroot_abspath = local_abspath;
                  SVN_ERR(read_link_target(&local_abspath, local_abspath,
                                           scratch_pool));
try_symlink_as_dir:
                  kind = svn_node_dir;
                  moved_upwards = FALSE;
                  local_dir_abspath = local_abspath;
                  build_relpath = "";

                  continue;
                }
            }

          return svn_error_createf(SVN_ERR_WC_NOT_WORKING_COPY, ((void*)0),
                                   _("'%s' is not a working copy"),
                                   svn_dirent_local_style(original_abspath,
                                                          scratch_pool));
        }

      local_abspath = svn_dirent_dirname(local_abspath, scratch_pool);

      moved_upwards = TRUE;
      symlink_wcroot_abspath = ((void*)0);


      found_wcroot = svn_hash_gets(db->dir_data, local_abspath);
      if (found_wcroot != ((void*)0))
        break;
    }

  if (found_wcroot != ((void*)0))
    {


      *wcroot = found_wcroot;
    }
  else if (wc_format == 0)
    {


      apr_int64_t wc_id;
      int format;
      svn_error_t *err;

      err = fetch_sdb_info(&wc_id, &format, sdb, scratch_pool);
      if (err)
        {
          if (err->apr_err == SVN_ERR_WC_CORRUPT)
            return svn_error_quick_wrapf(
              err, _("Missing a row in WCROOT for '%s'."),
              svn_dirent_local_style(original_abspath, scratch_pool));
          return svn_error_trace(err);
        }





      err = svn_wc__db_pdh_create_wcroot(wcroot,
                            apr_pstrdup(db->state_pool,
                                        symlink_wcroot_abspath
                                          ? symlink_wcroot_abspath
                                          : local_abspath),
                            sdb, wc_id, format,
                            db->verify_format,
                            db->state_pool, scratch_pool);
      if (err && (err->apr_err == SVN_ERR_WC_UNSUPPORTED_FORMAT ||
                  err->apr_err == SVN_ERR_WC_UPGRADE_REQUIRED) &&
          kind == svn_node_symlink)
        {



          svn_error_clear(err);
          *wcroot = ((void*)0);
        }
      else if (err)
        {


          return svn_error_compose_create(err, svn_sqlite__close(sdb));
        }
    }
  else
    {




      if (wc_format == SVN_WC__WC_NG_VERSION )
        {
          apr_finfo_t info;


          const char *admin_abspath = svn_wc__adm_child(
              local_abspath, SVN_WC__ADM_ENTRIES, scratch_pool);
          svn_error_t *err = svn_io_stat(&info, admin_abspath, APR_FINFO_SIZE,
                                         scratch_pool);


          if (err)
            return svn_error_createf(
                SVN_ERR_WC_CORRUPT, err,
                _("The working copy at '%s' is corrupt."),
                svn_dirent_local_style(local_abspath, scratch_pool));
          svn_error_clear(err);

          if (3 == info.size)
            {

              admin_abspath = svn_wc__adm_child(local_abspath, SDB_FILE,
                                                scratch_pool);
              err = svn_io_stat(&info, admin_abspath, APR_FINFO_SIZE,
                                scratch_pool);
              if (err && APR_STATUS_IS_ENOENT(err->apr_err))
                {
                  svn_error_clear(err);
                  return svn_error_createf(
                      SVN_ERR_WC_CORRUPT, ((void*)0),
                      _("The working copy database at '%s' is missing."),
                      svn_dirent_local_style(local_abspath, scratch_pool));
                }
              else



                return svn_error_createf(
                    SVN_ERR_WC_CORRUPT, err,
                    _("The working copy database at '%s' is corrupt."),
                    svn_dirent_local_style(local_abspath, scratch_pool));
            }
        }

      SVN_ERR(svn_wc__db_pdh_create_wcroot(wcroot,
                            apr_pstrdup(db->state_pool,
                                        symlink_wcroot_abspath
                                          ? symlink_wcroot_abspath
                                          : local_abspath),
                            ((void*)0), UNKNOWN_WC_ID, wc_format,
                            db->verify_format,
                            db->state_pool, scratch_pool));
    }

  if (*wcroot)
    {
      const char *dir_relpath;

      if (symlink_wcroot_abspath)
        {


          local_dir_abspath = symlink_wcroot_abspath;
        }



      dir_relpath = compute_relpath(*wcroot, local_dir_abspath, ((void*)0));


      *local_relpath = svn_relpath_join(dir_relpath, build_relpath, result_pool);
    }

  if (kind == svn_node_symlink)
    {
      svn_boolean_t retry_if_dir = FALSE;
      svn_wc__db_status_t status;
      svn_boolean_t conflicted;
      svn_error_t *err;






      if (*wcroot)
        {
          err = svn_wc__db_read_info_internal(&status, ((void*)0), ((void*)0), ((void*)0), ((void*)0),
                                              ((void*)0), ((void*)0), ((void*)0), ((void*)0), ((void*)0),
                                              ((void*)0), ((void*)0), ((void*)0), ((void*)0), ((void*)0),
                                              ((void*)0), ((void*)0), ((void*)0), &conflicted,
                                              ((void*)0), ((void*)0), ((void*)0), ((void*)0), ((void*)0),
                                              ((void*)0), *wcroot, *local_relpath,
                                              scratch_pool, scratch_pool);
          if (err)
            {
              if (err->apr_err != SVN_ERR_WC_PATH_NOT_FOUND
                  && !SVN_WC__ERR_IS_NOT_CURRENT_WC(err))
                return svn_error_trace(err);

              svn_error_clear(err);
              retry_if_dir = TRUE;
            }
          else
            {




              retry_if_dir = ((status == svn_wc__db_status_not_present ||
                               status == svn_wc__db_status_excluded ||
                               status == svn_wc__db_status_server_excluded)
                              && !conflicted);
            }
        }
      else
        retry_if_dir = TRUE;

      if (retry_if_dir)
        {
          svn_node_kind_t resolved_kind;

          SVN_ERR(svn_io_check_resolved_path(original_abspath,
                                             &resolved_kind,
                                             scratch_pool));
          if (resolved_kind == svn_node_dir)
            {
              symlink_wcroot_abspath = original_abspath;
              SVN_ERR(read_link_target(&local_abspath, original_abspath,
                                       scratch_pool));


              if (sdb)
                SVN_ERR(svn_sqlite__close(sdb));
              goto try_symlink_as_dir;
            }
        }
    }



  svn_hash_sets(db->dir_data,
                apr_pstrdup(db->state_pool, local_dir_abspath),
                *wcroot);


  if (!moved_upwards)
    {



      return SVN_NO_ERROR;
    }






  scan_abspath = local_dir_abspath;

  do
    {
      const char *parent_dir = svn_dirent_dirname(scan_abspath, scratch_pool);
      svn_wc__db_wcroot_t *parent_wcroot;

      parent_wcroot = svn_hash_gets(db->dir_data, parent_dir);
      if (parent_wcroot == ((void*)0))
        {
          svn_hash_sets(db->dir_data, apr_pstrdup(db->state_pool, parent_dir),
                        *wcroot);
        }



      scan_abspath = parent_dir;
    }
  while (strcmp(scan_abspath, local_abspath) != 0);

  return SVN_NO_ERROR;
}
