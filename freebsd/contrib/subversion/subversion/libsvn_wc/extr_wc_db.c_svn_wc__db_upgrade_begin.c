
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int abspath; } ;
typedef TYPE_1__ svn_wc__db_wcroot_t ;
struct TYPE_7__ {int dir_data; int state_pool; } ;
typedef TYPE_2__ svn_wc__db_t ;
typedef int svn_sqlite__db_t ;
typedef int svn_error_t ;
typedef int apr_pool_t ;
typedef int apr_int64_t ;


 int FALSE ;
 int FORMAT_FROM_SDB ;
 int SDB_FILE ;
 int SVN_ERR (int ) ;
 int SVN_INVALID_REVNUM ;
 int * SVN_NO_ERROR ;
 int TRUE ;
 int apr_pstrdup (int ,char const*) ;
 int create_db (int **,int *,int *,char const*,char const*,char const*,int ,int *,int ,int ,int ,int ,int ,int *) ;
 int svn_depth_unknown ;
 int svn_hash_sets (int ,int ,TYPE_1__*) ;
 int svn_wc__db_pdh_create_wcroot (TYPE_1__**,int ,int *,int ,int ,int ,int ,int *) ;

svn_error_t *
svn_wc__db_upgrade_begin(svn_sqlite__db_t **sdb,
                         apr_int64_t *repos_id,
                         apr_int64_t *wc_id,
                         svn_wc__db_t *wc_db,
                         const char *dir_abspath,
                         const char *repos_root_url,
                         const char *repos_uuid,
                         apr_pool_t *scratch_pool)
{
  svn_wc__db_wcroot_t *wcroot;


  SVN_ERR(create_db(sdb, repos_id, wc_id, dir_abspath,
                    repos_root_url, repos_uuid,
                    SDB_FILE,
                    ((void*)0), SVN_INVALID_REVNUM, svn_depth_unknown,
                    TRUE ,
                    0 ,
                    wc_db->state_pool, scratch_pool));

  SVN_ERR(svn_wc__db_pdh_create_wcroot(&wcroot,
                                       apr_pstrdup(wc_db->state_pool,
                                                   dir_abspath),
                                       *sdb, *wc_id, FORMAT_FROM_SDB,
                                       FALSE ,
                                       wc_db->state_pool, scratch_pool));


  svn_hash_sets(wc_db->dir_data, wcroot->abspath, wcroot);

  return SVN_NO_ERROR;
}
