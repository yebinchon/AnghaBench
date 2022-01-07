
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_sqlite__db_t ;
typedef int svn_error_t ;
typedef int apr_pool_t ;
typedef int apr_int64_t ;


 int * SVN_NO_ERROR ;
 int SVN_SQLITE__WITH_LOCK4 (int ,int ,int ,int *,int *) ;
 int svn_sqlite__read_schema_version (int*,int *,int *) ;
 int svn_wc__db_util_fetch_wc_id (int*,int *,int *) ;
 int verify_stats_table (int *,int,int *) ;

__attribute__((used)) static svn_error_t *
fetch_sdb_info(apr_int64_t *wc_id,
               int *format,
               svn_sqlite__db_t *sdb,
               apr_pool_t *scratch_pool)
{
  *wc_id = -1;
  *format = -1;

  SVN_SQLITE__WITH_LOCK4(
        svn_wc__db_util_fetch_wc_id(wc_id, sdb, scratch_pool),
        svn_sqlite__read_schema_version(format, sdb, scratch_pool),
        verify_stats_table(sdb, *format, scratch_pool),
        SVN_NO_ERROR,
        sdb);

  return SVN_NO_ERROR;
}
