
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int * db; } ;
typedef TYPE_1__ svn_wc_context_t ;
typedef int svn_wc__db_t ;
typedef int svn_error_t ;
typedef int svn_boolean_t ;
typedef int apr_pool_t ;


 int APR_OS_DEFAULT ;
 int FALSE ;
 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int TRUE ;
 int svn_dirent_dirname (char const*,int *) ;
 int svn_io_dir_make (char const*,int ,int *) ;
 int svn_io_file_del_on_close ;
 int svn_io_file_move (char const*,char const*,int *) ;
 int svn_io_open_unique_file3 (int *,char const**,char const*,int ,int *,int *) ;
 int svn_io_remove_dir2 (char const*,int ,int *,int *,int *) ;
 char* svn_wc__adm_child (char const*,char*,int *) ;
 int svn_wc__db_drop_root (int *,char const*,int *) ;
 int svn_wc__db_temp_wcroot_tempdir (char const**,int *,int ,int *,int *) ;
 int svn_wc__db_wclock_obtain (int *,char const*,int ,int ,int *) ;
 int svn_wc__db_wclock_owns_lock (int *,int *,char const*,int ,int *) ;
 int svn_wc_copy3 (TYPE_1__*,char const*,char const*,int ,int *,int *,int *,int *,int *) ;

__attribute__((used)) static svn_error_t *
integrate_nested_wc_as_copy(svn_wc_context_t *wc_ctx,
                            const char *local_abspath,
                            apr_pool_t *scratch_pool)
{
  svn_wc__db_t *db = wc_ctx->db;
  const char *moved_abspath;


  SVN_ERR(svn_wc__db_drop_root(db, local_abspath, scratch_pool));


  {
    const char *tmpdir_abspath;
    const char *moved_adm_abspath;
    const char *adm_abspath;

    SVN_ERR(svn_wc__db_temp_wcroot_tempdir(&tmpdir_abspath, db,
                                           svn_dirent_dirname(local_abspath,
                                                              scratch_pool),
                                           scratch_pool, scratch_pool));
    SVN_ERR(svn_io_open_unique_file3(((void*)0), &moved_abspath, tmpdir_abspath,
                                     svn_io_file_del_on_close,
                                     scratch_pool, scratch_pool));
    SVN_ERR(svn_io_dir_make(moved_abspath, APR_OS_DEFAULT, scratch_pool));

    adm_abspath = svn_wc__adm_child(local_abspath, "", scratch_pool);
    moved_adm_abspath = svn_wc__adm_child(moved_abspath, "", scratch_pool);
    SVN_ERR(svn_io_file_move(adm_abspath, moved_adm_abspath, scratch_pool));
  }


  SVN_ERR(svn_wc_copy3(wc_ctx, moved_abspath, local_abspath,
                       TRUE ,
                       ((void*)0), ((void*)0), ((void*)0), ((void*)0), scratch_pool));


  SVN_ERR(svn_wc__db_drop_root(db, moved_abspath, scratch_pool));
  SVN_ERR(svn_io_remove_dir2(moved_abspath, FALSE, ((void*)0), ((void*)0),
                             scratch_pool));




  {
    svn_boolean_t owns_lock;

    SVN_ERR(svn_wc__db_wclock_owns_lock(&owns_lock, db, local_abspath,
                                        FALSE, scratch_pool));
    if (!owns_lock)
      SVN_ERR(svn_wc__db_wclock_obtain(db, local_abspath, 0, FALSE,
                                       scratch_pool));
  }

  return SVN_NO_ERROR;
}
