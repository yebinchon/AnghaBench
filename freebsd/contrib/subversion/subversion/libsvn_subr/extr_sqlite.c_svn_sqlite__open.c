
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_1__ ;


typedef int svn_sqlite__stmt_t ;
typedef int svn_sqlite__mode_t ;
struct TYPE_10__ {char const* const* statement_strings; int nbr_statements; int * state_pool; void* prepared_stmts; int db3; int sqlext_buf3; int sqlext_buf2; int sqlext_buf1; } ;
typedef TYPE_1__ svn_sqlite__db_t ;
typedef int svn_error_t ;
typedef int apr_pool_t ;
typedef int apr_int32_t ;


 int SQLITE_DETERMINISTIC ;
 int SQLITE_ERR_CLOSE (int ,TYPE_1__**,int *) ;
 int SQLITE_TESTCTRL_OPTIMIZATIONS ;
 int SQLITE_UTF8 ;
 int STMT_INTERNAL_LAST ;
 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int SVN_SQLITE__ERR_CLOSE (int ,TYPE_1__*) ;
 void* apr_pcalloc (int *,int) ;
 int apr_pool_cleanup_null ;
 int apr_pool_cleanup_register (int *,TYPE_1__*,int ,int ) ;
 int close_apr ;
 int collate_ucs_nfd ;
 int exec_sql (TYPE_1__*,char*) ;
 int glob_ucs_nfd ;
 int init_sqlite ;
 int internal_open (TYPE_1__*,char const*,int ,int ,int *) ;
 int like_ucs_nfd ;
 int sqlite3_create_collation (int ,char*,int,TYPE_1__*,int ) ;
 int sqlite3_create_function (int ,char*,int,int,TYPE_1__*,int ,int *,int *) ;
 int sqlite3_libversion_number () ;
 int sqlite3_profile (int ,int ,int ) ;
 int sqlite3_sourceid () ;
 int sqlite3_test_control (int ,int ,int) ;
 int sqlite3_trace (int ,int ,int ) ;
 int sqlite_init_state ;
 int sqlite_profiler ;
 int sqlite_tracer ;
 scalar_t__ strcmp (int ,char*) ;
 int svn_atomic__init_once (int *,int ,int *,int *) ;
 int svn_error_clear (int ) ;
 int svn_membuf__create (int *,int,int *) ;

svn_error_t *
svn_sqlite__open(svn_sqlite__db_t **db, const char *path,
                 svn_sqlite__mode_t mode, const char * const statements[],
                 int unused1, const char * const *unused2,
                 apr_int32_t timeout,
                 apr_pool_t *result_pool, apr_pool_t *scratch_pool)
{
  SVN_ERR(svn_atomic__init_once(&sqlite_init_state,
                                init_sqlite, ((void*)0), scratch_pool));

  *db = apr_pcalloc(result_pool, sizeof(**db));

  SVN_ERR(internal_open(*db, path, mode, timeout, scratch_pool));
  SVN_SQLITE__ERR_CLOSE(exec_sql(*db,






              "PRAGMA case_sensitive_like=1;"
              "PRAGMA synchronous=OFF;"



              "PRAGMA recursive_triggers=ON;"



              "PRAGMA foreign_keys=OFF;"
              "PRAGMA locking_mode = NORMAL;"

              "PRAGMA journal_mode = TRUNCATE;"
              ),
                *db);
  svn_error_clear(exec_sql(*db, "PRAGMA temp_store = MEMORY;"));


  if (statements)
    {
      (*db)->statement_strings = statements;
      (*db)->nbr_statements = 0;
      while (*statements != ((void*)0))
        {
          statements++;
          (*db)->nbr_statements++;
        }

      (*db)->prepared_stmts = apr_pcalloc(
                                  result_pool,
                                  ((*db)->nbr_statements + STMT_INTERNAL_LAST)
                                                * sizeof(svn_sqlite__stmt_t *));
    }
  else
    {
      (*db)->nbr_statements = 0;
      (*db)->prepared_stmts = apr_pcalloc(result_pool,
                                          (0 + STMT_INTERNAL_LAST)
                                                * sizeof(svn_sqlite__stmt_t *));
    }

  (*db)->state_pool = result_pool;
  apr_pool_cleanup_register(result_pool, *db, close_apr, apr_pool_cleanup_null);

  return SVN_NO_ERROR;
}
