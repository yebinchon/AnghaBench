
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {char const* abspath; } ;
typedef TYPE_1__ svn_wc__db_wcroot_t ;
struct TYPE_7__ {int dir_data; int state_pool; int config; } ;
typedef TYPE_2__ svn_wc__db_t ;
typedef int svn_sqlite__db_t ;
typedef int svn_revnum_t ;
typedef int svn_error_t ;
typedef scalar_t__ svn_depth_t ;
typedef int svn_boolean_t ;
typedef int apr_pool_t ;
typedef int apr_int64_t ;
typedef int apr_int32_t ;
typedef int apr_hash_index_t ;


 int FALSE ;
 int FORMAT_FROM_SDB ;
 int SDB_FILE ;
 int SVN_CONFIG_OPTION_SQLITE_EXCLUSIVE ;
 int SVN_CONFIG_SECTION_WORKING_COPY ;
 int SVN_ERR (int ) ;
 int SVN_ERR_ASSERT (int) ;
 int * SVN_NO_ERROR ;
 int * apr_hash_first (int *,int ) ;
 int * apr_hash_next (int *) ;
 char* apr_hash_this_key (int *) ;
 int apr_pstrdup (int ,char const*) ;
 int create_db (int **,int *,int *,char const*,char const*,char const*,int ,char const*,int ,scalar_t__,int ,int ,int ,int *) ;
 int svn_config_get_bool (int ,int *,int ,int ,int ) ;
 scalar_t__ svn_depth_empty ;
 scalar_t__ svn_depth_files ;
 scalar_t__ svn_depth_immediates ;
 scalar_t__ svn_depth_infinity ;
 int svn_dirent_is_absolute (char const*) ;
 scalar_t__ svn_dirent_is_ancestor (char const*,char const*) ;
 int svn_hash_sets (int ,char const*,TYPE_1__*) ;
 int svn_wc__db_pdh_create_wcroot (TYPE_1__**,int ,int *,int ,int ,int ,int ,int *) ;

svn_error_t *
svn_wc__db_init(svn_wc__db_t *db,
                const char *local_abspath,
                const char *repos_relpath,
                const char *repos_root_url,
                const char *repos_uuid,
                svn_revnum_t initial_rev,
                svn_depth_t depth,
                apr_pool_t *scratch_pool)
{
  svn_sqlite__db_t *sdb;
  apr_int64_t repos_id;
  apr_int64_t wc_id;
  svn_wc__db_wcroot_t *wcroot;
  svn_boolean_t sqlite_exclusive = FALSE;
  apr_int32_t sqlite_timeout = 0;
  apr_hash_index_t *hi;

  SVN_ERR_ASSERT(svn_dirent_is_absolute(local_abspath));
  SVN_ERR_ASSERT(repos_relpath != ((void*)0));
  SVN_ERR_ASSERT(depth == svn_depth_empty
                 || depth == svn_depth_files
                 || depth == svn_depth_immediates
                 || depth == svn_depth_infinity);



  SVN_ERR(svn_config_get_bool(db->config, &sqlite_exclusive,
                              SVN_CONFIG_SECTION_WORKING_COPY,
                              SVN_CONFIG_OPTION_SQLITE_EXCLUSIVE,
                              FALSE));


  SVN_ERR(create_db(&sdb, &repos_id, &wc_id, local_abspath, repos_root_url,
                    repos_uuid, SDB_FILE,
                    repos_relpath, initial_rev, depth, sqlite_exclusive,
                    sqlite_timeout,
                    db->state_pool, scratch_pool));


  SVN_ERR(svn_wc__db_pdh_create_wcroot(&wcroot,
                        apr_pstrdup(db->state_pool, local_abspath),
                        sdb, wc_id, FORMAT_FROM_SDB,
                        FALSE ,
                        db->state_pool, scratch_pool));
  for (hi = apr_hash_first(scratch_pool, db->dir_data);
       hi;
       hi = apr_hash_next(hi))
    {
      const char *abspath = apr_hash_this_key(hi);
      if (svn_dirent_is_ancestor(wcroot->abspath, abspath))
        svn_hash_sets(db->dir_data, abspath, ((void*)0));
    }


  svn_hash_sets(db->dir_data, wcroot->abspath, wcroot);

  return SVN_NO_ERROR;
}
