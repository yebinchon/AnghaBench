
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int s3stmt; int needs_reset; TYPE_2__* db; } ;
typedef TYPE_1__ svn_sqlite__stmt_t ;
struct TYPE_8__ {int db3; } ;
typedef TYPE_2__ svn_sqlite__db_t ;
typedef int svn_error_t ;
typedef int apr_pool_t ;


 int FALSE ;
 int SQLITE_ERR (int ,TYPE_2__*) ;
 int * SVN_NO_ERROR ;
 TYPE_1__* apr_palloc (int *,int) ;
 int sqlite3_prepare_v2 (int ,char const*,int,int *,int *) ;

__attribute__((used)) static svn_error_t *
prepare_statement(svn_sqlite__stmt_t **stmt, svn_sqlite__db_t *db,
                  const char *text, apr_pool_t *result_pool)
{
  *stmt = apr_palloc(result_pool, sizeof(**stmt));
  (*stmt)->db = db;
  (*stmt)->needs_reset = FALSE;

  SQLITE_ERR(sqlite3_prepare_v2(db->db3, text, -1, &(*stmt)->s3stmt, ((void*)0)), db);

  return SVN_NO_ERROR;
}
