
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int zPrefix ;
struct TYPE_6__ {int flgProgress; int db; int out; scalar_t__ nProgress; } ;
typedef TYPE_1__ ShellState ;
typedef int FILE ;


 int BEGIN_TIMER ;
 int END_TIMER ;
 int SHELL_PROGRESS_RESET ;
 int SHFLG_Backslash ;
 int SHFLG_CountChanges ;
 scalar_t__ ShellHasFlag (TYPE_1__*,int ) ;
 int open_db (TYPE_1__*,int ) ;
 int raw_printf (int ,char*,int ,int ) ;
 int resolve_backslashes (char*) ;
 int shell_exec (TYPE_1__*,char*,char**) ;
 int sqlite3_changes (int ) ;
 char* sqlite3_errmsg (int ) ;
 int sqlite3_free (char*) ;
 int sqlite3_snprintf (int,char*,char*,...) ;
 int sqlite3_total_changes (int ) ;
 int stderr ;
 int stdin_is_interactive ;
 int utf8_printf (int ,char*,char*,char*) ;

__attribute__((used)) static int runOneSqlLine(ShellState *p, char *zSql, FILE *in, int startline){
  int rc;
  char *zErrMsg = 0;

  open_db(p, 0);
  if( ShellHasFlag(p,SHFLG_Backslash) ) resolve_backslashes(zSql);
  if( p->flgProgress & SHELL_PROGRESS_RESET ) p->nProgress = 0;
  BEGIN_TIMER;
  rc = shell_exec(p, zSql, &zErrMsg);
  END_TIMER;
  if( rc || zErrMsg ){
    char zPrefix[100];
    if( in!=0 || !stdin_is_interactive ){
      sqlite3_snprintf(sizeof(zPrefix), zPrefix,
                       "Error: near line %d:", startline);
    }else{
      sqlite3_snprintf(sizeof(zPrefix), zPrefix, "Error:");
    }
    if( zErrMsg!=0 ){
      utf8_printf(stderr, "%s %s\n", zPrefix, zErrMsg);
      sqlite3_free(zErrMsg);
      zErrMsg = 0;
    }else{
      utf8_printf(stderr, "%s %s\n", zPrefix, sqlite3_errmsg(p->db));
    }
    return 1;
  }else if( ShellHasFlag(p, SHFLG_CountChanges) ){
    raw_printf(p->out, "changes: %3d   total_changes: %d\n",
            sqlite3_changes(p->db), sqlite3_total_changes(p->db));
  }
  return 0;
}
