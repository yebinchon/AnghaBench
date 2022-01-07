
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ShellState ;


 int SQLITE_ERROR ;
 int lintFkeyIndexes (int *,char**,int) ;
 int raw_printf (int ,char*,...) ;
 scalar_t__ sqlite3_strnicmp (char*,char*,int) ;
 int stderr ;
 int strlen30 (char*) ;

__attribute__((used)) static int lintDotCommand(
  ShellState *pState,
  char **azArg,
  int nArg
){
  int n;
  n = (nArg>=2 ? strlen30(azArg[1]) : 0);
  if( n<1 || sqlite3_strnicmp(azArg[1], "fkey-indexes", n) ) goto usage;
  return lintFkeyIndexes(pState, azArg, nArg);

 usage:
  raw_printf(stderr, "Usage %s sub-command ?switches...?\n", azArg[0]);
  raw_printf(stderr, "Where sub-commands are:\n");
  raw_printf(stderr, "    fkey-indexes\n");
  return SQLITE_ERROR;
}
