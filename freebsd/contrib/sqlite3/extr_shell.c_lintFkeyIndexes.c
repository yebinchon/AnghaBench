
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int sqlite3_stmt ;
typedef int sqlite3 ;
struct TYPE_3__ {int * out; int * db; } ;
typedef TYPE_1__ ShellState ;
typedef int FILE ;


 int SQLITE_ERROR ;
 int SQLITE_OK ;
 scalar_t__ SQLITE_ROW ;
 int SQLITE_UTF8 ;
 int raw_printf (int *,char*,...) ;
 int shellFkeyCollateClause ;
 int sqlite3_bind_int (int *,int,int) ;
 scalar_t__ sqlite3_column_text (int *,int) ;
 int sqlite3_create_function (int *,char*,int,int ,int ,int ,int ,int ) ;
 char const* sqlite3_errmsg (int *) ;
 int sqlite3_finalize (int *) ;
 int sqlite3_free (char*) ;
 char* sqlite3_mprintf (char*,char const*) ;
 int sqlite3_prepare_v2 (int *,char const*,int,int **,int ) ;
 scalar_t__ sqlite3_step (int *) ;
 scalar_t__ sqlite3_strglob (char const*,char const*) ;
 scalar_t__ sqlite3_stricmp (char const*,char*) ;
 scalar_t__ sqlite3_strnicmp (char*,char*,int) ;
 int * stderr ;
 int strlen30 (char*) ;

__attribute__((used)) static int lintFkeyIndexes(
  ShellState *pState,
  char **azArg,
  int nArg
){
  sqlite3 *db = pState->db;
  FILE *out = pState->out;
  int bVerbose = 0;
  int bGroupByParent = 0;
  int i;
  const char *zIndent = "";
  int rc;
  sqlite3_stmt *pSql = 0;
  const char *zSql =
  "SELECT "
    "     'EXPLAIN QUERY PLAN SELECT 1 FROM ' || quote(s.name) || ' WHERE '"
    "  || group_concat(quote(s.name) || '.' || quote(f.[from]) || '=?' "
    "  || fkey_collate_clause("
    "       f.[table], COALESCE(f.[to], p.[name]), s.name, f.[from]),' AND ')"
    ", "
    "     'SEARCH TABLE ' || s.name || ' USING COVERING INDEX*('"
    "  || group_concat('*=?', ' AND ') || ')'"
    ", "
    "     s.name  || '(' || group_concat(f.[from],  ', ') || ')'"
    ", "
    "     f.[table] || '(' || group_concat(COALESCE(f.[to], p.[name])) || ')'"
    ", "
    "     'CREATE INDEX ' || quote(s.name ||'_'|| group_concat(f.[from], '_'))"
    "  || ' ON ' || quote(s.name) || '('"
    "  || group_concat(quote(f.[from]) ||"
    "        fkey_collate_clause("
    "          f.[table], COALESCE(f.[to], p.[name]), s.name, f.[from]), ', ')"
    "  || ');'"
    ", "
    "     f.[table] "
    "FROM sqlite_master AS s, pragma_foreign_key_list(s.name) AS f "
    "LEFT JOIN pragma_table_info AS p ON (pk-1=seq AND p.arg=f.[table]) "
    "GROUP BY s.name, f.id "
    "ORDER BY (CASE WHEN ? THEN f.[table] ELSE s.name END)"
  ;
  const char *zGlobIPK = "SEARCH TABLE * USING INTEGER PRIMARY KEY (rowid=?)";

  for(i=2; i<nArg; i++){
    int n = strlen30(azArg[i]);
    if( n>1 && sqlite3_strnicmp("-verbose", azArg[i], n)==0 ){
      bVerbose = 1;
    }
    else if( n>1 && sqlite3_strnicmp("-groupbyparent", azArg[i], n)==0 ){
      bGroupByParent = 1;
      zIndent = "    ";
    }
    else{
      raw_printf(stderr, "Usage: %s %s ?-verbose? ?-groupbyparent?\n",
          azArg[0], azArg[1]
      );
      return SQLITE_ERROR;
    }
  }


  rc = sqlite3_create_function(db, "fkey_collate_clause", 4, SQLITE_UTF8,
      0, shellFkeyCollateClause, 0, 0
  );


  if( rc==SQLITE_OK ){
    rc = sqlite3_prepare_v2(db, zSql, -1, &pSql, 0);
  }
  if( rc==SQLITE_OK ){
    sqlite3_bind_int(pSql, 1, bGroupByParent);
  }

  if( rc==SQLITE_OK ){
    int rc2;
    char *zPrev = 0;
    while( SQLITE_ROW==sqlite3_step(pSql) ){
      int res = -1;
      sqlite3_stmt *pExplain = 0;
      const char *zEQP = (const char*)sqlite3_column_text(pSql, 0);
      const char *zGlob = (const char*)sqlite3_column_text(pSql, 1);
      const char *zFrom = (const char*)sqlite3_column_text(pSql, 2);
      const char *zTarget = (const char*)sqlite3_column_text(pSql, 3);
      const char *zCI = (const char*)sqlite3_column_text(pSql, 4);
      const char *zParent = (const char*)sqlite3_column_text(pSql, 5);

      rc = sqlite3_prepare_v2(db, zEQP, -1, &pExplain, 0);
      if( rc!=SQLITE_OK ) break;
      if( SQLITE_ROW==sqlite3_step(pExplain) ){
        const char *zPlan = (const char*)sqlite3_column_text(pExplain, 3);
        res = (
              0==sqlite3_strglob(zGlob, zPlan)
           || 0==sqlite3_strglob(zGlobIPK, zPlan)
        );
      }
      rc = sqlite3_finalize(pExplain);
      if( rc!=SQLITE_OK ) break;

      if( res<0 ){
        raw_printf(stderr, "Error: internal error");
        break;
      }else{
        if( bGroupByParent
        && (bVerbose || res==0)
        && (zPrev==0 || sqlite3_stricmp(zParent, zPrev))
        ){
          raw_printf(out, "-- Parent table %s\n", zParent);
          sqlite3_free(zPrev);
          zPrev = sqlite3_mprintf("%s", zParent);
        }

        if( res==0 ){
          raw_printf(out, "%s%s --> %s\n", zIndent, zCI, zTarget);
        }else if( bVerbose ){
          raw_printf(out, "%s/* no extra indexes required for %s -> %s */\n",
              zIndent, zFrom, zTarget
          );
        }
      }
    }
    sqlite3_free(zPrev);

    if( rc!=SQLITE_OK ){
      raw_printf(stderr, "%s\n", sqlite3_errmsg(db));
    }

    rc2 = sqlite3_finalize(pSql);
    if( rc==SQLITE_OK && rc2!=SQLITE_OK ){
      rc = rc2;
      raw_printf(stderr, "%s\n", sqlite3_errmsg(db));
    }
  }else{
    raw_printf(stderr, "%s\n", sqlite3_errmsg(db));
  }

  return rc;
}
