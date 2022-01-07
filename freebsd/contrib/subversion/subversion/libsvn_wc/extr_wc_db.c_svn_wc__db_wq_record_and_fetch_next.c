
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_wc__db_wcroot_t ;
typedef int svn_wc__db_t ;
typedef int svn_skel_t ;
typedef int svn_error_t ;
typedef int apr_uint64_t ;
typedef int apr_pool_t ;
typedef int apr_hash_t ;


 int SVN_ERR (int ) ;
 int SVN_ERR_ASSERT (int ) ;
 int * SVN_NO_ERROR ;
 int SVN_WC__DB_WITH_TXN (int ,int *) ;
 int VERIFY_USABLE_WCROOT (int *) ;
 int svn_dirent_is_absolute (char const*) ;
 int svn_error_compose_create (int ,int ) ;
 int svn_wc__db_wcroot_parse_local_abspath (int **,char const**,int *,char const*,int *,int *) ;
 int wq_fetch_next (int *,int **,int *,char const*,int ,int *,int *) ;
 int wq_record (int *,int *,int *) ;

svn_error_t *
svn_wc__db_wq_record_and_fetch_next(apr_uint64_t *id,
                                    svn_skel_t **work_item,
                                    svn_wc__db_t *db,
                                    const char *wri_abspath,
                                    apr_uint64_t completed_id,
                                    apr_hash_t *record_map,
                                    apr_pool_t *result_pool,
                                    apr_pool_t *scratch_pool)
{
  svn_wc__db_wcroot_t *wcroot;
  const char *local_relpath;

  SVN_ERR_ASSERT(id != ((void*)0));
  SVN_ERR_ASSERT(work_item != ((void*)0));
  SVN_ERR_ASSERT(svn_dirent_is_absolute(wri_abspath));

  SVN_ERR(svn_wc__db_wcroot_parse_local_abspath(&wcroot, &local_relpath, db,
                              wri_abspath, scratch_pool, scratch_pool));
  VERIFY_USABLE_WCROOT(wcroot);

  SVN_WC__DB_WITH_TXN(
    svn_error_compose_create(
            wq_fetch_next(id, work_item,
                          wcroot, local_relpath, completed_id,
                          result_pool, scratch_pool),
            wq_record(wcroot, record_map, scratch_pool)),
    wcroot);

  return SVN_NO_ERROR;
}
