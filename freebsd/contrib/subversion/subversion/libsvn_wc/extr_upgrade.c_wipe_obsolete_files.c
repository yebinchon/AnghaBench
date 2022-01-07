
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int apr_pool_t ;


 int ADM_EMPTY_FILE ;
 int ADM_README ;
 int FALSE ;
 int PROPS_SUBDIR ;
 int PROP_BASE_FOR_DIR ;
 int PROP_BASE_SUBDIR ;
 int PROP_REVERT_FOR_DIR ;
 int PROP_WORKING_FOR_DIR ;
 int SVN_ERR (int ) ;
 int SVN_WC__ADM_ENTRIES ;
 int SVN_WC__ADM_FORMAT ;
 int TEXT_BASE_SUBDIR ;
 int TRUE ;
 int WCPROPS_ALL_DATA ;
 int WCPROPS_FNAME_FOR_DIR ;
 int WCPROPS_SUBDIR_FOR_FILES ;
 int build_lockfile_path (char const*,int *) ;
 int db ;
 int iterpool ;
 int svn_error_clear (int ) ;
 int svn_io_remove_dir2 (int ,int ,int *,int *,int *) ;
 int svn_io_remove_file2 (int ,int ,int *) ;
 int svn_wc__adm_child (char const*,int ,int *) ;
 int svn_wc__adm_cleanup_tmp_area (int ,char const*,int ) ;

__attribute__((used)) static void
wipe_obsolete_files(const char *wcroot_abspath, apr_pool_t *scratch_pool)
{

  svn_error_clear(svn_io_remove_file2(
                    svn_wc__adm_child(wcroot_abspath,
                                      SVN_WC__ADM_FORMAT,
                                      scratch_pool),
                    TRUE, scratch_pool));
  svn_error_clear(svn_io_remove_file2(
                    svn_wc__adm_child(wcroot_abspath,
                                      SVN_WC__ADM_ENTRIES,
                                      scratch_pool),
                    TRUE, scratch_pool));
  svn_error_clear(svn_io_remove_file2(
                    svn_wc__adm_child(wcroot_abspath,
                                      ADM_EMPTY_FILE,
                                      scratch_pool),
                    TRUE, scratch_pool));
  svn_error_clear(svn_io_remove_file2(
                    svn_wc__adm_child(wcroot_abspath,
                                      ADM_README,
                                      scratch_pool),
                    TRUE, scratch_pool));



  svn_error_clear(svn_io_remove_file2(
                    svn_wc__adm_child(wcroot_abspath,
                                      WCPROPS_FNAME_FOR_DIR,
                                      scratch_pool),
                    TRUE, scratch_pool));
  svn_error_clear(svn_io_remove_dir2(
                    svn_wc__adm_child(wcroot_abspath,
                                      WCPROPS_SUBDIR_FOR_FILES,
                                      scratch_pool),
                    FALSE, ((void*)0), ((void*)0), scratch_pool));


  svn_error_clear(svn_io_remove_file2(
                    svn_wc__adm_child(wcroot_abspath,
                                      WCPROPS_ALL_DATA,
                                      scratch_pool),
                    TRUE, scratch_pool));


  svn_error_clear(svn_io_remove_dir2(
                    svn_wc__adm_child(wcroot_abspath,
                                      TEXT_BASE_SUBDIR,
                                      scratch_pool),
                    FALSE, ((void*)0), ((void*)0), scratch_pool));


  svn_error_clear(svn_io_remove_dir2(
                    svn_wc__adm_child(wcroot_abspath,
                                      PROPS_SUBDIR,
                                      scratch_pool),
                    FALSE, ((void*)0), ((void*)0), scratch_pool));
  svn_error_clear(svn_io_remove_dir2(
                    svn_wc__adm_child(wcroot_abspath,
                                      PROP_BASE_SUBDIR,
                                      scratch_pool),
                    FALSE, ((void*)0), ((void*)0), scratch_pool));
  svn_error_clear(svn_io_remove_file2(
                     svn_wc__adm_child(wcroot_abspath,
                                       PROP_WORKING_FOR_DIR,
                                       scratch_pool),
                     TRUE, scratch_pool));
  svn_error_clear(svn_io_remove_file2(
                     svn_wc__adm_child(wcroot_abspath,
                                      PROP_BASE_FOR_DIR,
                                      scratch_pool),
                     TRUE, scratch_pool));
  svn_error_clear(svn_io_remove_file2(
                     svn_wc__adm_child(wcroot_abspath,
                                      PROP_REVERT_FOR_DIR,
                                      scratch_pool),
                     TRUE, scratch_pool));
  svn_error_clear(svn_io_remove_file2(
                    build_lockfile_path(wcroot_abspath, scratch_pool),
                    TRUE, scratch_pool));
}
