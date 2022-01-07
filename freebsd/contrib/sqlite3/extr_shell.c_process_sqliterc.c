
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int lineno; int * in; } ;
typedef TYPE_1__ ShellState ;
typedef int FILE ;


 int fclose (int *) ;
 char* find_home_dir (int ) ;
 int * fopen (char const*,char*) ;
 int process_input (TYPE_1__*) ;
 int raw_printf (int ,char*) ;
 int sqlite3_free (char*) ;
 char* sqlite3_mprintf (char*,char*) ;
 int stderr ;
 scalar_t__ stdin_is_interactive ;
 int utf8_printf (int ,char*,char const*) ;

__attribute__((used)) static void process_sqliterc(
  ShellState *p,
  const char *sqliterc_override
){
  char *home_dir = ((void*)0);
  const char *sqliterc = sqliterc_override;
  char *zBuf = 0;
  FILE *inSaved = p->in;
  int savedLineno = p->lineno;

  if (sqliterc == ((void*)0)) {
    home_dir = find_home_dir(0);
    if( home_dir==0 ){
      raw_printf(stderr, "-- warning: cannot find home directory;"
                      " cannot read ~/.sqliterc\n");
      return;
    }
    zBuf = sqlite3_mprintf("%s/.sqliterc",home_dir);
    sqliterc = zBuf;
  }
  p->in = fopen(sqliterc,"rb");
  if( p->in ){
    if( stdin_is_interactive ){
      utf8_printf(stderr,"-- Loading resources from %s\n",sqliterc);
    }
    process_input(p);
    fclose(p->in);
  }
  p->in = inSaved;
  p->lineno = savedLineno;
  sqlite3_free(zBuf);
}
